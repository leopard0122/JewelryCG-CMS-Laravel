
<div class="card m-0">
    <div class="card-body">
        <a href="{{ route('seller.dashboard') }}" class="w-100 d-block mb-2 {{ \Route::currentRouteName() == 'seller.dashboard' ? "active" : "" }}">Dashboard</a>
        <div class="fw-700 text-uppercase fs-14 opacity-70 my-2">Seller Menu</div>
        <a href="{{ route('seller.services.list') }}" class="w-100 d-block mb-2 {{ \Route::currentRouteName() == 'seller.services.list' ? "active" : "" }}">Services</a>
        <a href="{{ route('seller.service.orders') }}" class="w-100 d-block mb-2 {{ \Route::currentRouteName() == 'seller.service.orders' ? "active" : "" }}">Orders</a>
        <a href="{{ route('seller.transaction.history') }}" class="w-100 d-block mb-2 {{ \Route::currentRouteName() == 'seller.transaction.history' ? "active" : "" }}">Wallet History</a>
        <a href="{{ route('seller.profile') }}" class="w-100 d-block mb-2 {{ \Route::currentRouteName() == 'seller.profile' ? "active" : "" }}">Profile</a>
    </div>
</div>