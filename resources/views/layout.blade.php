<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{ asset('assets/css/layout.css')}}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giày </title>
</head>
<body>
    <header>
        <div class="htren">
            <div class="hotline"><p>Hotline: 0987666666</p></div>
            <div class="checking-order"><a href="{{route('KTDonHang')}}">Kiểm tra đơn hàng</a></div>
            <div class="login">
                @if (!(session()->has('TenTaiKhoan')))
                    <a href="{{route('DangNhap')}}">Đăng Nhập</a>
                    <pre>|</pre>
                    <a href="{{route('DangKy')}}">Đăng Ký</a>
                @else
                <a href="{{route('ThongTinCaNhan.index')}}">@php echo session()->get('TenTaiKhoan') @endphp</a>
                <pre>|</pre>
                <a href="{{ route('checkout') }}">Đăng xuất</a>
                @endif

            </div>
        </div>
        <div class="hduoi">
            <a href="{{route('home')}}"><img src="{{ asset('assets/images/Logo.PNG')}}" alt="LOGO"></a>
            <nav>
                <ul>
                    <li><a href="{{route('home')}}">Trang chủ</a></li>
                    {{-- @if(@isset($danhmuc))
                        @foreach($danhmuc as $datadm)
                            <li class="nam">
                                <a href="{{route('XemDanhMuc.index',['id'=>$datadm->MaDanhMuc])}}">{{$datadm->TenDanhMuc}} <input type="hidden" name="_token" value="<?php echo csrf_token();?>"></a>
                            
                            </li>

                        @endforeach
                    @endif --}}
                    <li class="nam">
                        <a href="{{route('XemDanhMuc.index',['id'=>1])}}">Nam <input type="hidden" name="_token" value="<?php echo csrf_token();?>"></a>
                        <a href="{{route('XemDanhMuc.index',['id'=>2])}}">Nữ <input type="hidden" name="_token" value="<?php echo csrf_token();?>"></a>
                        <a href="{{route('XemDanhMuc.index',['id'=>3])}}">Trẻ em <input type="hidden" name="_token" value="<?php echo csrf_token();?>"></a>
                    
                    </li>
                </ul>
            </nav>
            <div class="search">
                <form action="{{route('search-products')}}" method="get">
                    <button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                    <input type="text" name="search" id="search" placeholder="Tìm kiếm sản phẩm...">
                </form>
            </div>
            {{-- href="{{route('ThongTinCaNhan.index')}}" --}}
            <div class="acc_cart">

                <a href="{{route('giohang')}}"><i class="fa-solid fa-cart-shopping GH">
                    @php
                        if (session()->has('TenTaiKhoan'))
                            $loaigio = 'GH';
                        else
                            $loaigio = 'cart';
                    @endphp
                    @if(Session($loaigio)!=null)
                        <div class="carthover">
                            @if(session($loaigio))
                                @php echo count(Session::get($loaigio, array())); @endphp
                            @endif
                        </div>
                    @else
                        <div class="carthover" style="display: none"></div>
                    @endif

                </i></a>
            </div>
        </div>
    </header>
    @yield('content')

    <footer>
        <div class="container_footer">
        <div class="support">
            <p class="bold">HỖ TRỢ</p>
            <p>kiểm tra đơn hàng</p>
            <p>Đăng xuất</p>
            <p>Chính sách hoàn trả</p>
        </div>
        <div class="information">
            <p class="bold">THÔNG TIN</p>
            <p>Tìm kiếm hàng hoá</p>
            <p>Hợp Tác với</p>
            <p>QHP</p>
            <p>Q&A</p>
        </div>
        <div class="about">
            <p class="bold">VỀ QHP</p>
            <p>Về QHP</p>
            <p>Câu chuyện QHP</p>
            <p>Quá trình phát triển</p>
            <p>Hoạt động</p>
            <p>Liên lạc</p>
        </div>
        <div class="LOGO"><img src="{{ asset('assets/images/Logo.PNG')}}" alt="LOGO"></div>
        </div>

        <div class="copyright">© Copyright QHP Store</div>
    </footer>
</body>
@yield('scripts')
</html>
