<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\UserBill;
use Illuminate\Http\Request;

class CustomerBillController extends Controller
{
    public function create($customerId)
    {
        $customer = Customer::findOrFail($customerId);
        return view('customers.bills.create', compact('customer'));
    }

    public function store(Request $request, $customerId)
    {
        // Retrieve the necessary data from the request
        $month = $request->input('month');
        $units = $request->input('units');

        // Calculate the bill amount based on the provided units and slabs
        $billAmount = $this->calculateBillAmount($units);

        // Store the bill in the user_bills table
        UserBill::create([
            'user_id' => $customerId,
            'month' => $month,
            'amount' => $billAmount,
        ]);

        return redirect()->route('customers.index')->with('success', 'Bill generated successfully.');
    }

    private function calculateBillAmount($units)
    {
        // Calculate the bill amount based on the provided units and slabs
        $totalBill = 0;

        if ($units > 0) {
            if ($units <= 50) {
                $totalBill = $units * 5;
            } elseif ($units <= 100) {
                $totalBill = (50 * 5) + (($units - 50) * 8);
            } elseif ($units <= 250) {
                $totalBill = (50 * 5) + (50 * 8) + (($units - 100) * 12);
            } else {
                $totalBill = (50 * 5) + (50 * 8) + (150 * 12) + (($units - 250) * 15);
            }
        }

        return $totalBill;
    }
}
