<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Models\GeneralSetting;
use App\Models\Category;
use App\Models\Brand;
use App\Models\SocialMedia;
use App\Models\Contact;
use App\Models\CreatePage;
use App\Models\OrderStatus;
use App\Models\EcomPixel;
use App\Models\GoogleTagManager;
use App\Models\Order;
use App\Models\PaymentGateway;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Gate;
use Throwable;
use Illuminate\Support\Collection;
use App\Models\User;
use App\Models\Review;
use App\Observers\OrderObserver;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Order::observe(OrderObserver::class);

        /**
         * ðŸŸ¢ Super Admin Override (à¦¯à¦¾à¦¤à§‡ Admin à¦¸à¦¬ à¦ªà¦¾à¦°à¦®à¦¿à¦¶à¦¨ à¦ªà¦¾à§Ÿ)
         */
        Gate::before(function (User $user, $ability) {
            return $user->hasRole('Admin') ? true : null;
        });

        /**
         * ðŸ§© Shurjopay Dynamic Config
         */
        try {
            $shurjopay = PaymentGateway::where(['status' => 1, 'type' => 'shurjopay'])->first();
            if ($shurjopay) {
                Config::set([
                    'shurjopay.apiCredentials.username'   => $shurjopay->username,
                    'shurjopay.apiCredentials.password'   => $shurjopay->password,
                    'shurjopay.apiCredentials.prefix'     => $shurjopay->prefix,
                    'shurjopay.apiCredentials.return_url' => $shurjopay->success_url,
                    'shurjopay.apiCredentials.cancel_url' => $shurjopay->return_url,
                    'shurjopay.apiCredentials.base_url'   => $shurjopay->base_url,
                ]);
            }

        /**
         * ðŸ§  Global View Share (header, footer, sidebar)
         */
            $pending_reviews = Review::where('status', 'pending')->count();
            view()->share('pending_reviews', $pending_reviews);
            $generalsetting = GeneralSetting::where('status', 1)->first();
            if (!$generalsetting) {
                $generalsetting = (object) [
                    'name' => config('app.name', 'Ecommerce'),
                    'favicon' => '',
                    'dark_logo' => '',
                    'white_logo' => '',
                ];
            }
            view()->share('generalsetting', $generalsetting);

            $sidecategories = Category::where('parent_id', 0)->where('status', 1)
                ->select('id', 'name', 'slug', 'status', 'image')->get();
            view()->share('sidecategories', $sidecategories);

            $menucategories = Category::where('status', 1)
                ->select('id', 'name', 'slug', 'status', 'image')->get();
            view()->share('menucategories', $menucategories);

            $contact = Contact::where('status', 1)->first();
            if (!$contact) {
                $contact = (object) [
                    'address' => '',
                    'hotline' => '',
                ];
            }
            view()->share('contact', $contact);

            $socialicons = SocialMedia::where('status', 1)->get();
            view()->share('socialicons', $socialicons);

            $pages = CreatePage::where('status', 1)->limit(3)->get();
            view()->share('pages', $pages);

            $pagesright = CreatePage::where('status', 1)->skip(1)->limit(5)->get();
            view()->share('pagesright', $pagesright);

            $cmnmenu = CreatePage::where('status', 1)->get();
            view()->share('cmnmenu', $cmnmenu);

            $brands = Brand::where('status', 1)->get();
            view()->share('brands', $brands);

            $neworder = Order::where('order_status', 1)->count();
            view()->share('neworder', $neworder);

            $pendingorder = Order::where('order_status', 1)->latest()->limit(9)->get();
            view()->share('pendingorder', $pendingorder);

            $orderstatus = OrderStatus::get();
            view()->share('orderstatus', $orderstatus);

            $pixels = EcomPixel::where('status', 1)->get();
            view()->share('pixels', $pixels);

            $gtm_code = GoogleTagManager::where('status', 1)->get();
            view()->share('gtm_code', $gtm_code);
        } catch (Throwable $e) {
            // Allow first boot with incomplete local DB/state.
            view()->share('pending_reviews', 0);
            view()->share('generalsetting', (object) [
                'name' => config('app.name', 'Ecommerce'),
                'favicon' => '',
                'dark_logo' => '',
                'white_logo' => '',
            ]);
            view()->share('sidecategories', collect());
            view()->share('menucategories', collect());
            view()->share('contact', (object) [
                'address' => '',
                'hotline' => '',
            ]);
            view()->share('socialicons', collect());
            view()->share('pages', collect());
            view()->share('pagesright', collect());
            view()->share('cmnmenu', collect());
            view()->share('brands', collect());
            view()->share('neworder', 0);
            view()->share('pendingorder', collect());
            view()->share('orderstatus', collect());
            view()->share('pixels', collect());
            view()->share('gtm_code', collect());
        }
		
    }
}



