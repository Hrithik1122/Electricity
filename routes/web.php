<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
// use App\Http\Controllers\CustomerBillController;

// Route::get('/customers/{customer}/bills/create', [CustomerBillController::class, 'create'])->name('customers.bills.create');
// Route::post('/customers/{customer}/bills', [CustomerBillController::class, 'store'])->name('customers.bills.store');

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::resource('customers', 'App\Http\Controllers\CustomerController');


// Route::post('customers/{customer}/bills', 'App\Http\Controllers\CustomerController@storeBill')->name('customers.bills.store');

use App\Http\Controllers\CustomerController;
use App\Http\Controllers\CustomerBillController;
use App\Http\Controllers\UserBillController;

Route::get('/customers', [CustomerController::class, 'index'])->name('customers.index');
Route::get('/customers/create', [CustomerController::class, 'create'])->name('customers.create');
Route::post('/customers', [CustomerController::class, 'store'])->name('customers.store');
Route::get('/customers/{customer}/edit', [CustomerController::class, 'edit'])->name('customers.edit');
Route::put('/customers/{customer}', [CustomerController::class, 'update'])->name('customers.update');
Route::delete('/customers/{customer}', [CustomerController::class, 'destroy'])->name('customers.destroy');

Route::get('/customers/{customer}/bills/create', [CustomerBillController::class, 'create'])->name('customers.bills.create');
Route::post('/customers/{customer}/bills', [CustomerBillController::class, 'store'])->name('customers.bills.store');

Route::get('/user-bills', [UserBillController::class, 'index'])->name('user-bills.index');
