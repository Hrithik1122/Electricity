<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use App\Models\UserBill;
use App\Models\UnitSlab;
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

// private function calculateBillAmount($units)
    // {
    //     // Calculate the bill amount based on the provided units and slabs
    //     $totalBill = 0;

    //     if ($units > 0) {
    //         if ($units <= 50) {
    //             $totalBill = $units * 5;
    //         } elseif ($units <= 100) {
    //             $totalBill = (50 * 5) + (($units - 50) * 8);
    //         } elseif ($units <= 250) {
    //             $totalBill = (50 * 5) + (50 * 8) + (($units - 100) * 12);
    //         } else {
    //             $totalBill = (50 * 5) + (50 * 8) + (150 * 12) + (($units - 250) * 15);
    //         }
    //     }
    //     return $totalBill;
    // }

    // private function calculateBillAmount($units)
    // {
    //     // Fetch unit slabs from the database table
    //     $slabs = [
    //         ['unit_from' => 1, 'unit_to' => 50, 'price' => 5],
    //         ['unit_from' => 51, 'unit_to' => 100, 'price' => 8],
    //         ['unit_from' => 101, 'unit_to' => 250, 'price' => 12],
    //         ['unit_from' => 250, 'unit_to' => null, 'price' => 15]
    //     ];
    
    //     // Calculate the bill amount based on the provided units and slabs
    //     $totalBill = 0;
    //     $remainingUnits = $units;
    
    //     foreach ($slabs as $slab) {
    //         $unitFrom = $slab['unit_from'];
    //         $unitTo = $slab['unit_to'];
    //         $price = $slab['price'];
    
    //         if ($remainingUnits > 0) {
    //             if ($unitTo === null) {
    //                 // Last slab, calculate bill for all remaining units
    //                 $totalBill += ($remainingUnits * $price);
    //             } else {
    //                 $unitsInSlab = min($remainingUnits, ($unitTo - $unitFrom + 1));
    //                 $totalBill += ($unitsInSlab * $price);
    //                 $remainingUnits -= $unitsInSlab;
    //             }
    //         } else {
    //             break;
    //         }
    //     }
    
    //     return $totalBill;
    // }

    // ------------------------ For taking UnitSlab Data Dynamically -------------------------
    private function calculateBillAmount($units)
    {
    // Fetch unit slabs from the database table
    $slabs = UnitSlab::all();

    $totalBill = 0;
    $remainingUnits = $units;

    foreach ($slabs as $slab) {
        $unitFrom = $slab['unit_from'];
        $unitTo = $slab['unit_to'];
        $price = $slab['price'];

        if ($remainingUnits > 0) {
            if ($unitTo === null) {

                $totalBill += ($remainingUnits * $price);
            } else {
                $unitsInSlab = min($remainingUnits, ($unitTo - $unitFrom + 1));
                $totalBill += ($unitsInSlab * $price);
                $remainingUnits -= $unitsInSlab;
            }
        } else {
            break;
        }
    }

    return $totalBill;
    }
}
