<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class AffiliateApplicationApproved extends Mailable
{
    use Queueable, SerializesModels;

    public string $name;
    public string $loginUrl;

    public function __construct(string $name, string $loginUrl)
    {
        $this->name = $name;
        $this->loginUrl = $loginUrl;
    }

    public function build()
    {
        return $this->subject('Your Affiliate Application is Approved')
            ->view('emails.affiliate_approved');
    }
}
