@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Users Bill</div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Customer Name</th>
                                    <th>Month</th>
                                    <th>Amount</th>
                                    <th>Created At</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($userBills as $userBill)
                                    <tr>
                                        <td>{{ $userBill->user_name }}</td>
                                        <td>{{ $userBill->month }}</td>
                                        <td>{{ $userBill->amount }}</td>
                                        <td>{{ $userBill->created_at }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        {{ $userBills->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection