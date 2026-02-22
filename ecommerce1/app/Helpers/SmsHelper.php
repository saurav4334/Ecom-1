<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Log;

class SmsHelper
{
    public static function send($gateway, string $number, string $message): array
    {
        if (!$gateway) {
            return ['ok' => false, 'message' => 'SMS gateway not configured'];
        }

        if (!function_exists('curl_init')) {
            Log::warning('SMS send skipped: cURL extension not enabled.');
            return ['ok' => false, 'message' => 'cURL extension not enabled'];
        }

        $gatewayName = strtolower($gateway->gateway_name ?? 'bulksmsbd');
        $type = $gateway->message_type ?? 'text';
        $senderid = $gateway->senderid ?? $gateway->serderid ?? '';

        if ($gatewayName === 'mram') {
            $baseUrl = $gateway->url ?: 'https://sms.mram.com.bd/smsapi';
            $label = $gateway->label ?: 'transactional';
            $query = http_build_query([
                'api_key' => $gateway->api_key,
                'type' => $type,
                'contacts' => $number,
                'senderid' => $senderid,
                'msg' => $message,
                'label' => $label,
            ]);
            $url = $baseUrl . '?' . $query;

            $ch = \curl_init();
            \curl_setopt($ch, CURLOPT_URL, $url);
            \curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            \curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            $response = \curl_exec($ch);
            $err = \curl_error($ch);
            \curl_close($ch);

            if ($err) {
                return ['ok' => false, 'message' => $err];
            }
            return ['ok' => true, 'message' => $response];
        }

        $url = $gateway->url;
        $postData = [
            'api_key' => $gateway->api_key,
            'type' => $type,
            'number' => $number,
            'senderid' => $senderid,
            'message' => $message,
        ];

        $ch = \curl_init();
        \curl_setopt($ch, CURLOPT_URL, $url);
        \curl_setopt($ch, CURLOPT_POST, 1);
        \curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData));
        \curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        \curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $response = \curl_exec($ch);
        $err = \curl_error($ch);
        \curl_close($ch);

        if ($err) {
            return ['ok' => false, 'message' => $err];
        }
        return ['ok' => true, 'message' => $response];
    }
}
