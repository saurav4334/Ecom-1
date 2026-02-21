<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\PaymentGateway;
use App\Models\SmsGateway;
use App\Models\Courierapi;
use App\Helpers\SmsHelper;
use Toastr;
use File;
use Str;
use Image;
use DB;

class ApiIntegrationController extends Controller
{
    
     
    public function pay_manage ()
    {
        $bkash = PaymentGateway::where('type','=','bkash')->first();
        $shurjopay = PaymentGateway::where('type','=','shurjopay')->first();
$uddoktapay = PaymentGateway::where('type', 'uddoktapay')->first();
return view('backEnd.apiintegration.pay_manage', compact('bkash', 'shurjopay', 'uddoktapay'));

    }
    
   public function pay_update(Request $request)
{
    $update_data = \App\Models\PaymentGateway::find($request->id);
    $input = $request->all();
    $input['status'] = $request->status ? 1 : 0;
    $update_data->update($input);

    // âœ… à¦¯à¦¦à¦¿ à¦—à§‡à¦Ÿà¦“à§Ÿà§‡ à¦Ÿà¦¾à¦‡à¦ª à¦¹à§Ÿ UddoktaPay
    if ($update_data->type === 'uddoktapay') {
        $this->updateEnvFile('UDDOKTAPAY_API_KEY', $request->app_key);
        $this->updateEnvFile('UDDOKTAPAY_API_URL', $request->base_url);
    }

    \Toastr::success('Success', ucfirst($update_data->type) . ' settings updated successfully');
    return redirect()->back();
}

/**
 * ðŸ”§ Helper function: Update or add key in .env file
 */
private function updateEnvFile($key, $value)
{
    $path = base_path('.env');

    if (file_exists($path)) {
        $oldValue = env($key);

        if (strpos(file_get_contents($path), $key) !== false) {
            // Replace old value
            file_put_contents($path, str_replace(
                $key . '=' . $oldValue,
                $key . '=' . $value,
                file_get_contents($path)
            ));
        } else {
            // Add new line if not exists
            file_put_contents($path, PHP_EOL . $key . '=' . $value, FILE_APPEND);
        }
    }
}

    
    public function sms_manage ()
    {  
        $sms = SmsGateway::first();
        return view('backEnd.apiintegration.sms_manage',compact('sms'));
    }
    
public function sms_update(Request $request)
{
    $update_data = SmsGateway::find($request->id);
    $input = $request->all();
    $input['gateway_name'] = $request->gateway_name ?: ($update_data->gateway_name ?? 'bulksmsbd');
    $input['message_type'] = $request->message_type ?: ($update_data->message_type ?? 'text');
    $input['label'] = $request->label ?: ($update_data->label ?? 'transactional');
    $input['status'] = $request->status?1:0;
    $input['order'] = $request->order?1:0;
    $input['forget_pass'] = $request->forget_pass?1:0;
    $input['password_g'] = $request->password_g?1:0;

    // DB Update
    $update_data->update($input);

    // ============================
    //  ðŸ”¥ HERE: Save to .env file
    // ============================
    if ($request->filled('admin_phone_list')) {
        $this->updateEnvFile('ADMIN_PHONE_LIST', $request->admin_phone_list);
    }

    Toastr::success('Success','Data update successfully');
    return redirect()->back();
}

    
    public function courier_manage ()
    {
        $steadfast = Courierapi::where('type','=','steadfast')->first();
        $pathao = Courierapi::where('type','=','pathao')->first();
        return view('backEnd.apiintegration.courier_manage',compact('steadfast','pathao'));
    }
    
    public function courier_update (Request $request)
    {
      
        $update_data = Courierapi::find($request->id);
        $input = $request->all();
        $input['status'] = $request->status?1:0;
        $update_data->update($input);
        
        Toastr::success('Success','Data update successfully');
        return redirect()->back();
    }
    public function sms_custom_send_page()
{
    return view('backEnd.apiintegration.sms_custom_send');
}

public function sms_custom_send(Request $request)
{
    $request->validate([
        'phone' => 'required|string',
        'message' => 'required|string|max:500',
    ]);

    try {
        $sms_gateway = \App\Models\SmsGateway::where('status', 1)->first();
        if (!$sms_gateway) {
            Toastr::error('Failed', 'SMS Gateway not configured.');
            return back();
        }

        $number = preg_replace('/[^0-9]/', '', $request->phone);
        $message = $request->message;

        $result = SmsHelper::send($sms_gateway, $number, $message);
        \Log::info("SMS Manual Response: " . ($result['message'] ?? ''));

        if (!$result['ok']) {
            Toastr::error('Error', 'SMS send failed: ' . ($result['message'] ?? 'Unknown error'));
            return back();
        }

        Toastr::success('Success', 'SMS sent successfully!');
        return back();

    } catch (\Exception $e) {
        \Log::error("Manual SMS Send Failed: " . $e->getMessage());
        Toastr::error('Failed', 'SMS sending failed: ' . $e->getMessage());
        return back();
    }
}


}

