<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserBill extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'month',
        'amount',
        'bill_amount'
    ];
}
