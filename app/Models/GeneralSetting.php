<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class GeneralSetting extends Model
{
    protected $fillable = [
        'name',
        'white_logo',
        'dark_logo',
        'favicon',
    ];
}
