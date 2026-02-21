<?php

namespace Database\Seeders;

use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\OrderStatus;
use App\Models\Payment;
use App\Models\Product;
use App\Models\Shipping;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;
use Faker\Factory as Faker;

class DemoOrderSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create();

        $products = Product::where('status', 1)->get();
        if ($products->isEmpty()) {
            $this->command?->error('No active products found. Seed some products first.');
            return;
        }

        $statusIds = OrderStatus::pluck('id')->all();
        if (empty($statusIds)) {
            $statusIds = [1, 2, 3, 4, 5, 6];
        }

        DB::transaction(function () use ($faker, $products, $statusIds) {
            $customerCount = 40;
            $customers = collect();

            $custHasBalance = Schema::hasColumn('customers', 'balance');
            $custHasDistrict = Schema::hasColumn('customers', 'district');
            $custHasArea = Schema::hasColumn('customers', 'area');
            $custHasAddress = Schema::hasColumn('customers', 'address');
            $custHasVerify = Schema::hasColumn('customers', 'verify');
            $custHasImage = Schema::hasColumn('customers', 'image');
            $custHasStatus = Schema::hasColumn('customers', 'status');

            for ($i = 0; $i < $customerCount; $i++) {
                $name = $faker->name();
                $phone = '01' . $faker->numberBetween(300000000, 999999999);
                $email = 'demo' . $faker->unique()->numberBetween(1000, 999999) . '@example.com';

                $customerData = [
                    'name' => $name,
                    'slug' => Str::slug($name . '-' . $i),
                    'phone' => $phone,
                    'email' => $email,
                    'password' => bcrypt('123456'),
                ];

                if ($custHasBalance) {
                    $customerData['balance'] = 0;
                }
                if ($custHasDistrict) {
                    $customerData['district'] = null;
                }
                if ($custHasArea) {
                    $customerData['area'] = null;
                }
                if ($custHasAddress) {
                    $customerData['address'] = $faker->address();
                }
                if ($custHasVerify) {
                    $customerData['verify'] = 1;
                }
                if ($custHasImage) {
                    $customerData['image'] = 'public/uploads/default/user.png';
                }
                if ($custHasStatus) {
                    $customerData['status'] = 'active';
                }

                $customers->push(Customer::create($customerData));
            }

            $hasPaymentStatus = Schema::hasColumn('orders', 'payment_status');
            $hasNote = Schema::hasColumn('orders', 'note');
            $hasOrderNote = Schema::hasColumn('orders', 'order_note');
            $hasUserId = Schema::hasColumn('orders', 'user_id');

            $detailHasDiscount = Schema::hasColumn('order_details', 'product_discount');
            $detailHasSize = Schema::hasColumn('order_details', 'product_size');
            $detailHasColor = Schema::hasColumn('order_details', 'product_color');
            $detailHasVariant = Schema::hasColumn('order_details', 'variant_price_id');

            for ($i = 0; $i < 100; $i++) {
                $customer = $customers->random();
                $statusId = $statusIds[array_rand($statusIds)];
                $createdAt = now()->subDays(rand(0, 30))->subMinutes(rand(0, 1440));

                $lineItems = $products->random(rand(1, 4));
                $subtotal = 0;

                foreach ($lineItems as $product) {
                    $qty = rand(1, 3);
                    $subtotal += ($product->new_price * $qty);
                }

                $discount = (int) min($subtotal * 0.2, rand(0, 200));
                $shipping = rand(40, 120);
                $total = max(0, $subtotal + $shipping - $discount);

                $orderData = [
                    'invoice_id' => (string) rand(100000, 999999),
                    'amount' => (int) $total,
                    'discount' => (int) $discount,
                    'shipping_charge' => (int) $shipping,
                    'customer_id' => $customer->id,
                    'order_status' => (string) $statusId,
                    'created_at' => $createdAt,
                    'updated_at' => $createdAt,
                ];

                if ($hasPaymentStatus) {
                    $orderData['payment_status'] = ((int) $statusId >= 5) ? 'paid' : 'pending';
                }
                if ($hasNote) {
                    $orderData['note'] = $faker->sentence(6);
                }
                if ($hasOrderNote) {
                    $orderData['order_note'] = $faker->sentence(8);
                }
                if ($hasUserId) {
                    $orderData['user_id'] = 1;
                }

                $order = Order::create($orderData);

                Shipping::create([
                    'order_id' => $order->id,
                    'customer_id' => $customer->id,
                    'name' => $customer->name,
                    'phone' => $customer->phone,
                    'address' => $faker->streetAddress(),
                    'area' => $faker->city(),
                    'created_at' => $createdAt,
                    'updated_at' => $createdAt,
                ]);

                Payment::create([
                    'order_id' => $order->id,
                    'customer_id' => $customer->id,
                    'amount' => (int) $total,
                    'trx_id' => null,
                    'sender_number' => null,
                    'payment_method' => $faker->randomElement(['cod', 'bkash', 'shurjopay']),
                    'payment_status' => ((int) $statusId >= 5) ? 'paid' : 'pending',
                    'created_at' => $createdAt,
                    'updated_at' => $createdAt,
                ]);

                foreach ($lineItems as $product) {
                    $qty = rand(1, 3);
                    $detailData = [
                        'order_id' => $order->id,
                        'product_id' => $product->id,
                        'product_name' => $product->name,
                        'purchase_price' => (int) $product->purchase_price,
                        'sale_price' => (int) $product->new_price,
                        'qty' => $qty,
                        'created_at' => $createdAt,
                        'updated_at' => $createdAt,
                    ];

                    if ($detailHasDiscount) {
                        $detailData['product_discount'] = 0;
                    }
                    if ($detailHasSize) {
                        $detailData['product_size'] = null;
                    }
                    if ($detailHasColor) {
                        $detailData['product_color'] = null;
                    }
                    if ($detailHasVariant) {
                        $detailData['variant_price_id'] = null;
                    }

                    OrderDetails::create($detailData);
                }
            }
        });
    }
}
