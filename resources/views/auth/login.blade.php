@extends('layout.login_layout')
@section('content')
    <div class="container">
        <form action="{{ route('login') }}">
        @csrf
            <div class="form-group row">
                <label for="staticEmail" class="col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputEmail" placeholder="Email" name="email">
                </div>
            </div>
            <div class="form-group row">
                <label for="Input Password" class="col-sm-2 col-form-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
                </div>
            </div>
            <div>
                <button type="submit">Login</button>
            </div>
        </form>
    </div>
@endsection