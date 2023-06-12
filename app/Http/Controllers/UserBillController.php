<?php

namespace App\Http\Controllers;

use App\Models\UserBill;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserBillController extends Controller
{
    public function index()
    {
        $userBills = UserBill::select('user_bills.*', 'customers.name as user_name')
            ->join('customers', 'customers.id', '=', 'user_bills.user_id')
            ->paginate(10);

        return view('user-bills.index', compact('userBills'));
    }
}
