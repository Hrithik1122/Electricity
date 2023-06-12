@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Customer Details</div>
                    <div class="card-body">
                        <h5>Name: {{ $customer->name }}</h5>
                        <h5>Address: {{ $customer->address }}</h5>
                        <h5>Email: {{ $customer->email }}</h5>
                        <h5>Mobile: {{ $customer->mobile }}</h5>
                        <h5>City: {{ $customer->city }}</h5>
                        <hr>
                        <h5>Generate Bill</h5>
                        <form action="{{ route('customers.bills.store', $customer->id) }}" method="POST">

                            @csrf
                            <div class="form-group">
                                <label for="month">Month</label>
                                <input type="text" name="month" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="units">Units Consumed</label>
                                <input type="number" name="units" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
