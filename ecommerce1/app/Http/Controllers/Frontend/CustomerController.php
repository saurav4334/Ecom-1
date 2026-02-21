<?php

namespace App\Http\Controllers\Frontend;

use shurjopayv2\ShurjopayLaravelPackage8\Http\Controllers\ShurjopayController;
use App\Mail\OrderPlace;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use App\Models\Customer;
use App\Models\District;
use App\Models\Order;
use App\Models\ShippingCharge;
use App\Models\OrderDetails;
use App\Models\Payment;
use App\Models\Shipping;
use App\Models\Review;
use App\Models\PaymentGateway;
use App\Models\SmsGateway;
use App\Models\Contact;
use App\Models\GeneralSetting;
use App\Models\IncompleteOrder;
use App\Models\Product;          // à¦¸à§à¦Ÿà¦• à¦•à¦®à¦¾à¦¨à§‹à¦° à¦œà¦¨à§à¦¯
use App\Models\DigitalDownload;  // â­ à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦®à¦¡à§‡à¦²

use Session;
use Hash;
use Auth;
use Cart;
use Mail;
use Str;
use DB;
use Illuminate\Support\Facades\Log;
use App\Helpers\OrderHelper;
use App\Helpers\SmsHelper;

class CustomerController extends Controller
{
    function __construct()
    {
        $this->middleware('customer', ['except' => [
            'register','store','verify','resendotp','account_verify',
            'login','signin','logout','checkout','forgot_password',
            'forgot_verify','forgot_reset','forgot_store','forgot_resend',
            'order_save','order_success','order_track','order_track_result'
        ]]);
    }

    public function review(Request $request)
    {
        $this->validate($request,[
            'ratting'=>'required',
            'review'=>'required',
        ]);

        $review = new Review();
        $review->name = Auth::guard('customer')->user()->name ?? 'N / A';
        $review->email = Auth::guard('customer')->user()->email ?? 'N / A';
        $review->product_id = $request->product_id;
        $review->review = $request->review;
        $review->ratting = $request->ratting;
        $review->customer_id = Auth::guard('customer')->user()->id;
        $review->status = 'pending';
        $review->save();

        Toastr::success('Thanks, Your review send successfully', 'Success!');
        return redirect()->back();
    }

    public function login()
    {
        return view('frontEnd.layouts.customer.login');
    }

    public function signin(Request $request)
    {
        $auth_check = Customer::where('phone',$request->phone)->first();
        if($auth_check){
            if (Auth::guard('customer')->attempt(['phone' => $request->phone, 'password' => $request->password])) {
                Toastr::success('You are login successfully', 'success!');
                if(Cart::instance('shopping')->count() > 0){
                    return redirect()->route('customer.checkout');
                }
                return redirect()->intended('customer/account');
            }
            Toastr::error('message', 'Opps! your phone or password wrong');
            return redirect()->back();
        }else{
            Toastr::error('message', 'Sorry! You have no account');
            return redirect()->back();
        }
    }

    public function register()
    {
        return view('frontEnd.layouts.customer.register');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name'    => 'required',
            'phone'    => 'required|unique:customers',
            'password' => 'required|min:6'
        ]);

        $last_id = Customer::orderBy('id', 'desc')->first();
        $last_id = $last_id?$last_id->id+1:1;

        $store = new Customer();
        $store->name = $request->name;
        $store->slug = strtolower(Str::slug($request->name.'-'.$last_id));
        $store->phone = $request->phone;
        $store->email = $request->email;
        $store->password = bcrypt($request->password);
        $store->verify = 1;
        $store->status = 'active';
        $store->save();

        Toastr::success('Success','Account Create Successfully');
        return redirect()->route('customer.login');
    }

    public function verify()
    {
        return view('frontEnd.layouts.customer.verify');
    }

    public function resendotp(Request $request)
    {
        $customer_info = Customer::where('phone',session::get('verify_phone'))->first();
        $customer_info->verify = rand(1111,9999);
        $customer_info->save();
        $site_setting = GeneralSetting::where('status', 1)->first();
        $sms_gateway = SmsGateway::where('status', 1)->first();

        if($sms_gateway) {
            $message = "Dear $customer_info->name!\r\nYour account verify OTP is $customer_info->verify \r\nThank you for using $site_setting->name";
            SmsHelper::send($sms_gateway, $customer_info->phone, $message);
        }

        Toastr::success('Success','Resend code send successfully');
        return redirect()->back();
    }

    public function account_verify(Request $request)
    {
        $this->validate($request,['otp' => 'required']);
        $customer_info = Customer::where('phone',session::get('verify_phone'))->first();

        if($customer_info->verify != $request->otp){
            Toastr::error('Success','Your OTP not match');
            return redirect()->back();
        }

        $customer_info->verify = 1;
        $customer_info->status = 'active';
        $customer_info->save();
        Auth::guard('customer')->loginUsingId($customer_info->id);
        return redirect()->route('customer.account');
    }

    public function forgot_password()
    {
        return view('frontEnd.layouts.customer.forgot_password');
    }

    public function forgot_verify(Request $request)
    {
        $customer_info = Customer::where('phone',$request->phone)->first();
        if(!$customer_info){
            Toastr::error('Your phone number not found');
            return back();
        }
        $customer_info->forgot = rand(1111,9999);
        $customer_info->save();

        $site_setting = GeneralSetting::where('status', 1)->first();
        $sms_gateway = SmsGateway::where(['status'=> 1, 'forget_pass'=>1])->first();
        if($sms_gateway) {
            $message = "Dear $customer_info->name!\r\nYour forgot password verify OTP is $customer_info->forgot \r\nThank you for using $site_setting->name";
            SmsHelper::send($sms_gateway, $customer_info->phone, $message);
        }

        session::put('verify_phone',$request->phone);
        Toastr::success('Your account register successfully');
        return redirect()->route('customer.forgot.reset');
    }

    public function forgot_resend(Request $request)
    {
        $customer_info = Customer::where('phone',session::get('verify_phone'))->first();
        $customer_info->forgot = rand(1111,9999);
        $customer_info->save();
        $site_setting = GeneralSetting::where('status', 1)->first();
        $sms_gateway = SmsGateway::where(['status'=> 1])->first();

        if($sms_gateway) {
            $message = "Dear $customer_info->name!\r\nYour forgot password verify OTP is $customer_info->forgot \r\nThank you for using $site_setting->name";
            SmsHelper::send($sms_gateway, $customer_info->phone, $message);
        }

        Toastr::success('Success','Resend code send successfully');
        return redirect()->back();
    }

    public function forgot_reset()
    {
        if(!Session::get('verify_phone')){
          Toastr::error('Something wrong please try again');
          return redirect()->route('customer.forgot.password'); 
        }
        return view('frontEnd.layouts.customer.forgot_reset');
    }

    public function forgot_store(Request $request)
    {
        $customer_info = Customer::where('phone',session::get('verify_phone'))->first();

        if($customer_info->forgot != $request->otp){
            Toastr::error('Success','Your OTP not match');
            return redirect()->back();
        }

        $customer_info->forgot = 1;
        $customer_info->password = bcrypt($request->password);
        $customer_info->save();
        if(Auth::guard('customer')->attempt(['phone' => $customer_info->phone, 'password' => $request->password])) {
            Session::forget('verify_phone');
            Toastr::success('You are login successfully', 'success!');
            return redirect()->intended('customer/account');
        }
    }

    public function account()
    {
        return view('frontEnd.layouts.customer.account');
    }

    public function logout(Request $request)
    {
        Auth::guard('customer')->logout();
        Toastr::success('You are logout successfully', 'success!');
        return redirect()->route('customer.login');
    }

    public function checkout()
    {
        $shippingcharge = ShippingCharge::where('status',1)->get();
        $select_charge = ShippingCharge::where('status',1)->first();
        $bkash_gateway = PaymentGateway::where(['status'=> 1, 'type'=>'bkash'])->first();
        $shurjopay_gateway = PaymentGateway::where(['status'=> 1, 'type'=>'shurjopay'])->first();
        $uddoktapay_gateway = PaymentGateway::where(['status'=> 1, 'type'=>'uddoktapay'])->first();

        Session::put('shipping',$select_charge->amount);

        $advanceTotal = \App\Http\Controllers\Frontend\ShoppingController::getCartAdvanceAmount();
        $hasAdvance   = $advanceTotal > 0;

        // â­ à¦•à¦¾à¦°à§à¦Ÿà§‡ à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦†à¦›à§‡ à¦•à¦¿ à¦¨à¦¾
        $hasDigital = \App\Http\Controllers\Frontend\ShoppingController::hasDigitalProductInCart();

        return view('frontEnd.layouts.customer.checkout',compact(
            'shippingcharge',
            'bkash_gateway',
            'shurjopay_gateway',
            'uddoktapay_gateway',
            'advanceTotal',
            'hasAdvance',
            'hasDigital'
        ));
    }

    // ===========================
    // â­ ORDER SAVE
    // ===========================
    public function order_save(Request $request)
    {
        $this->validate($request,[
            'name'=>'required',
            'phone'=>'required',
            'address'=>'required',
            'area'=>'required',
        ]);

        if(Cart::instance('shopping')->count() <= 0) {
            Toastr::error('Your shopping empty', 'Failed!');
            return redirect()->back();
        }

        // â­ à¦•à¦¾à¦°à§à¦Ÿà§‡ à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦†à¦›à§‡ à¦•à¦¿ à¦¨à¦¾ à¦šà§‡à¦•
        $hasDigital = \App\Http\Controllers\Frontend\ShoppingController::hasDigitalProductInCart();

        // â­ à¦¯à¦¦à¦¿ à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ à¦¥à¦¾à¦•à§‡, COD allow à¦•à¦°à¦¾ à¦¯à¦¾à¦¬à§‡ à¦¨à¦¾
        // à¦§à¦°à§‡ à¦¨à¦¿à¦šà§à¦›à¦¿ checkout form à¦ COD à¦à¦° value = 'cod'
        if ($hasDigital && $request->payment_method === 'cod') {
            Toastr::error('à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° à¦œà¦¨à§à¦¯ Cash On Delivery à¦ªà¦¾à¦“à§Ÿà¦¾ à¦¯à¦¾à§Ÿ à¦¨à¦¾, à¦…à¦¨à§à¦—à§à¦°à¦¹ à¦•à¦°à§‡ à¦…à¦¨à¦²à¦¾à¦‡à¦¨ à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦¿à¦²à§‡à¦•à§à¦Ÿ à¦•à¦°à§à¦¨à¥¤', 'Failed!');
            return redirect()->back();
        }

        // Amount à¦•à§à¦¯à¦¾à¦²à¦•à§à¦²à§‡à¦¶à¦¨
        $subtotal = (float) str_replace([',','.00'],'',Cart::instance('shopping')->subtotal());
        $discount = Session::get('discount', 0);
        $shippingfee  = Session::get('shipping', 0);
        $shipping_area  = ShippingCharge::where('id', $request->area)->first();

        // à¦•à¦¾à¦°à§à¦Ÿà§‡à¦° advance item à¦—à§à¦²à§‹à¦° à¦®à§‹à¦Ÿ
        $advanceTotal = \App\Http\Controllers\Frontend\ShoppingController::getCartAdvanceAmount();

        // à¦‡à¦¨à¦­à¦¯à¦¼à§‡à¦¸à§‡ à¦¦à§‡à¦–à¦¾à¦¨à§‹à¦° à¦®à§‹à¦Ÿ
        $grandTotal = ($subtotal + $shippingfee) - $discount;

        // Customer à¦ à¦¿à¦• à¦•à¦°à¦¾
        if(Auth::guard('customer')->user()){
            $customer_id = Auth::guard('customer')->user()->id;
        }else{
            $exist = Customer::where('phone',$request->phone)->select('id')->first();
            if($exist){
                $customer_id = $exist->id;
            }else{
                $password = rand(111111,999999);
                $store = new Customer();
                $store->name = $request->name;
                $store->slug = Str::slug($request->name);
                $store->phone = $request->phone;
                $store->password = bcrypt($password);
                $store->verify = 1;
                $store->status = 'active';
                $store->save();
                $customer_id = $store->id;
            }
        }

        // Main Order save
        $order = new Order();
        $order->invoice_id      = rand(11111,99999);
        $order->amount          = $grandTotal;
        $order->shipping_charge = $shippingfee;
        $order->customer_id     = $customer_id;
        $order->order_status    = 1;
        $order->note            = $request->note;
        $order->order_note      = $request->order_note; // Client Order Note
        $order->payment_status  = 'pending';

        // Coupon info
        $order->coupon_code     = Session::get('coupon_code') ?? null;
        $order->discount        = $discount ?? 0;

        $order->save();

        // Shipping info
        $shipping = new Shipping();
        $shipping->order_id    = $order->id;
        $shipping->customer_id = $customer_id;
        $shipping->name        = $request->name;
        $shipping->phone       = $request->phone;
        $shipping->address     = $request->address;
        $shipping->area        = $shipping_area->name;
        $shipping->save();

        // Payment info
        $payment = new Payment();
        $payment->order_id       = $order->id;
        $payment->customer_id    = $customer_id;
        $payment->payment_method = $request->payment_method;

        if ($advanceTotal > 0) {
            $payment->amount = $advanceTotal;
        } else {
            $payment->amount = $grandTotal;
        }

        $payment->payment_status = 'pending';
        $payment->save();

        // Order details à¦¸à§‡à¦­
        OrderHelper::saveOrderDetails($order);

        // âœ… à¦¨à¦¤à§à¦¨ à¦…à¦°à§à¦¡à¦¾à¦° à¦…à¦¨à§à¦¯à¦¾à¦¯à¦¼à§€ à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿà§‡à¦° à¦¸à§à¦Ÿà¦• à¦•à¦®à¦¾à¦¨à§‹
        $details = OrderDetails::where('order_id', $order->id)->get();
        foreach ($details as $row) {
            $product = Product::find($row->product_id);
            if ($product) {
                $product->stock = max(0, $product->stock - $row->qty);
                $product->save();
            }
        }

        // === Customer SMS ===
        try {
            $sms_gateway = SmsGateway::where(['status' => 1, 'order' => 1])->first();
            if(!$sms_gateway){
                $sms_gateway = SmsGateway::where('status', 1)->first();
            }

            if($sms_gateway) {
                $customerPhone = isset($shipping) && $shipping->phone ? $shipping->phone : ($request->phone ?? ($order->customer->phone ?? null));
                $customerName  = isset($shipping) && $shipping->name ? $shipping->name : ($request->name ?? ($order->customer->name ?? 'Customer'));
                $site_setting = GeneralSetting::where('status', 1)->first();

                if($customerPhone) {
                    $customerMessage = "à¦ªà§à¦°à¦¿à§Ÿ {$customerName}! à¦†à¦ªà¦¨à¦¾à¦° à¦…à¦°à§à¦¡à¦¾à¦° #{$order->invoice_id} à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦®à§‹à¦Ÿ: {$order->amount} Tk. {$site_setting->name}";

                    $number = preg_replace('/[^0-9+]/','', $customerPhone);
                    $result = SmsHelper::send($sms_gateway, $number, $customerMessage);
                    \Log::info("Customer SMS to {$customerPhone}: resp=" . substr($result['message'] ?? '',0,200));
                } else {
                    \Log::warning("Customer SMS skipped: no phone for order {$order->id}");
                }
            }
        } catch(\Exception $e) {
            \Log::error("Customer SMS error for order {$order->id}: " . $e->getMessage());
        }

        // === Admin SMS ===
        try {
            $sms_gateway = SmsGateway::where('status', 1)->first();
            if($sms_gateway) {
                $adminPhones = env('ADMIN_PHONE_LIST', null);
                if(!$adminPhones && isset($sms_gateway->admin_phone)){
                    $adminPhones = $sms_gateway->admin_phone;
                }
                if(!$adminPhones){
                    $contact = Contact::first();
                    $adminPhones = $contact->phone ?? null;
                }

                $site_setting = GeneralSetting::where('status', 1)->first();
                $customerName = isset($request->name) ? $request->name : ($order->customer->name ?? 'Customer');
                $customerPhone = isset($request->phone) ? $request->phone : ($order->customer->phone ?? '');
                $adminMessage = "à¦¨à¦¤à§à¦¨ à¦…à¦°à§à¦¡à¦¾à¦° à¦à¦¸à§‡à¦›à§‡!\nOrder#: {$order->invoice_id}\nà¦•à¦¾à¦¸à§à¦Ÿà¦®à¦¾à¦°: {$customerName}\nà¦®à§‹à¦¬à¦¾à¦‡à¦²: {$customerPhone}\nà¦®à§‹à¦Ÿ: {$order->amount} Tk {$site_setting->name}";

                if($adminPhones){
                    $numbers = array_filter(array_map('trim', explode(',', $adminPhones)));
                    foreach($numbers as $adminPhone){
                        $adminPhone = preg_replace('/[^0-9+]/', '', $adminPhone);
                        $result = SmsHelper::send($sms_gateway, $adminPhone, $adminMessage);
                        \Log::info("Admin SMS to {$adminPhone}: resp=" . substr($result['message'] ?? '',0,200));
                    }
                }
            }
        } catch(\Exception $e){
            \Log::error('Admin SMS send failed: '.$e->getMessage());
        }

        // Incomplete order à¦¡à¦¿à¦²à¦¿à¦Ÿ
        IncompleteOrder::where('phone', $request->phone)->delete();

        // Payment redirect
        if($request->payment_method=='bkash'){
            Session::forget('coupon_code');
            Session::forget('discount');
            return redirect('/bkash/checkout-url/create?order_id='.$order->id);

        }elseif($request->payment_method=='shurjopay'){

            $payAmount = $payment->amount > 0 ? $payment->amount : $order->amount;

            $info = [
                'currency'        => "BDT",
                'amount'          => $payAmount,
                'order_id'        => uniqid(),
                'client_ip'       => $request->ip(),
                'customer_name'   => $request->name,
                'customer_phone'  => $request->phone,
                'email'           => "customer@gmail.com",
                'customer_address'=> $request->address,
                'customer_city'   => $request->area,
                'customer_country'=> "BD",
                'value1'          => $order->id
            ];

            Session::forget('coupon_code');
            Session::forget('discount');

            $sp = new ShurjopayController();
            return $sp->checkout($info);

        }elseif($request->payment_method=='uddoktapay'){
            Session::forget('coupon_code');
            Session::forget('discount');
            return redirect()->route('uddoktapay.checkout',['order_id'=>$order->id]);

        }else{
            // â­ Cash On Delivery (à¦¶à§à¦§à§ physical product-à¦à¦° à¦œà¦¨à§à¦¯, à¦•à¦¾à¦°à¦£ à¦‰à¦ªà¦°à§‡ digital + cod à¦¬à§à¦²à¦• à¦•à¦°à§‡à¦›à¦¿)
            // à¦à¦–à¦¾à¦¨à§‡ createDigitalDownloads() à¦•à¦² à¦•à¦°à¦²à§‡à¦“ à¦•à§‹à¦¨à§‹ à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦«à¦¾à¦‡à¦² à¦¤à§ˆà¦°à¦¿ à¦¹à¦¬à§‡ à¦¨à¦¾,
            // à¦•à¦¾à¦°à¦£ digital product à¦¥à¦¾à¦•à¦²à§‡ à¦†à¦®à¦°à¦¾ à¦†à¦—à§‡à¦‡ COD à¦¬à§à¦²à¦• à¦•à¦°à§‡à¦›à¦¿à¥¤
            $this->createDigitalDownloads($order);

            Session::forget('coupon_code');
            Session::forget('discount');
            return redirect('customer/order-success/'.$order->id);
        }
    }

    public function orders()
    {
        $orders = Order::where('customer_id',Auth::guard('customer')->user()->id)
            ->with('status')
            ->latest()
            ->get();

        return view('frontEnd.layouts.customer.orders',compact('orders'));
    }

    public function order_success($id)
    {
        $order = Order::where('id',$id)->firstOrFail();
        return view('frontEnd.layouts.customer.order_success',compact('order'));
    }

    public function invoice(Request $request)
    {
        $order = Order::where([
                'id'=>$request->id,
                'customer_id'=>Auth::guard('customer')->user()->id
            ])
            ->with('orderdetails','payment','shipping','customer')
            ->firstOrFail();

        return view('frontEnd.layouts.customer.invoice',compact('order'));
    }

    public function order_note(Request $request)
    {
        $order = Order::where([
                'id'=>$request->id,
                'customer_id'=>Auth::guard('customer')->user()->id
            ])->firstOrFail();

        return view('frontEnd.layouts.customer.order_note',compact('order'));
    }

    public function profile_edit(Request $request)
    {
        $profile_edit = Customer::where(['id'=>Auth::guard('customer')->user()->id])->firstOrFail();
        $districts = District::distinct()->select('district')->get();
        $areas = District::where(['district'=>$profile_edit->district])->select('area_name','id')->get();
        return view('frontEnd.layouts.customer.profile_edit',compact('profile_edit','districts','areas'));
    }

    public function profile_update(Request $request)
    {
        $update_data = Customer::where(['id'=>Auth::guard('customer')->user()->id])->firstOrFail();

        $image = $request->file('image');
        if($image){
            $name =  time().'-'.$image->getClientOriginalName();
            $name = preg_replace('"\.(jpg|jpeg|png|webp)$"', '.webp',$name);
            $name = strtolower(Str::slug($name));
            $uploadpath = 'public/uploads/customer/';
            $imageUrl = $uploadpath.$name;
            $img = Image::make($image->getRealPath());
            $img->encode('webp', 90);
            $img->resize(120, 120);
            $img->save($imageUrl);
        }else{
            $imageUrl = $update_data->image;
        }

        $update_data->name = $request->name;
        $update_data->phone = $request->phone;
        $update_data->email = $request->email;
        $update_data->address = $request->address;
        $update_data->district = $request->district;
        $update_data->area = $request->area;
        $update_data->image = $imageUrl;
        $update_data->save();

        Toastr::success('Your profile update successfully', 'Success!');
        return redirect()->route('customer.account');
    }

    public function order_track()
    {
        return view('frontEnd.layouts.customer.order_track');
    }

    public function order_track_result(Request $request)
    {
        $phone = $request->phone;
        $invoice_id = $request->invoice_id;

        if($phone !=null && $invoice_id==null){
            $order = DB::table('orders')
                ->join('shippings','orders.id','=','shippings.order_id')
                ->where(['shippings.phone' => $request->phone])
                ->get();
        }else if($invoice_id && $phone){
            $order = DB::table('orders')
                ->join('shippings','orders.id','=','shippings.order_id')
                ->where(['orders.invoice_id' => $request->invoice_id, 'shippings.phone'=>$request->phone])
                ->get();
        }

        if($order->count() == 0){
            Toastr::error('message', 'Something Went Wrong !');
            return redirect()->back();
        }

        return view('frontEnd.layouts.customer.tracking_result',compact('order'));
    }

    public function change_pass()
    {
        return view('frontEnd.layouts.customer.change_password');
    }

    public function password_update(Request $request)
    {
        $this->validate($request, [
            'old_password'=>'required',
            'new_password'=>'required',
            'confirm_password' => 'required_with:new_password|same:new_password|'
        ]);

        $customer = Customer::find(Auth::guard('customer')->user()->id);
        $hashPass = $customer->password;

        if (Hash::check($request->old_password, $hashPass)) {
            $customer->fill([
                'password' => Hash::make($request->new_password)
            ])->save();

            Toastr::success('Success', 'Password changed successfully!');
            return redirect()->route('customer.account');
        }else{
            Toastr::error('Failed', 'Old password not match!');
            return redirect()->back();
        }
    }

    // =====================================
    // â­ DIGITAL DOWNLOAD CREATOR (HELPER)
    // =====================================
    private function createDigitalDownloads(Order $order)
    {
        // orderdetails à¦¥à§‡à¦•à§‡ product_id à¦¨à¦¿à§Ÿà§‡ Product à¦²à§‹à¦¡ à¦•à¦°à¦¬
        $items = OrderDetails::where('order_id', $order->id)->get();

        foreach ($items as $item) {
            $product = Product::find($item->product_id);

            if ($product && $product->is_digital == 1 && $product->digital_file) {

                // à¦à¦•à¦‡ order+product+customer à¦à¦° à¦œà¦¨à§à¦¯ à¦¡à§à¦ªà§à¦²à¦¿à¦•à§‡à¦Ÿ à¦¨à¦¾ à¦¹à§Ÿ
                DigitalDownload::firstOrCreate(
                    [
                        'order_id'    => $order->id,
                        'product_id'  => $product->id,
                        'customer_id' => $order->customer_id,
                    ],
                    [
                        'token'               => Str::uuid(),
                        'file_path'           => $product->digital_file,
                        'remaining_downloads' => $product->download_limit ?? 5,
                        'expires_at'          => $product->download_expire_days
                                                    ? now()->addDays($product->download_expire_days)
                                                    : null,
                    ]
                );
            }
        }
    }
}


