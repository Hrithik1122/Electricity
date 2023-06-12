@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">Generate Bill</div>
                    <div class="card-body">
                        <form action="{{ route('customers.bills.store', $customer->id) }}" method="POST">

                            @csrf

                            <div class="form-group">
                                <label for="month">Month</label>
                                <input type="text" name="month" id="month" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <label for="units">Units Consumed</label>
                                <input type="number" name="units" id="units" class="form-control" required>
                            </div>

                            <button type="submit" class="btn btn-primary">Generate Bill</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
