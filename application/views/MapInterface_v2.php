<!--A Design by W3layouts
  Author: W3layout
  Author URL: http://w3layouts.com
  License: Creative Commons Attribution 3.0 Unported
  License URL: http://creativecommons.org/licenses/by/3.0/
  -->
<!DOCTYPE html>
<html lang="zxx">
  <head>
    <title>Analisa UMKM</title>
    <!--meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="Mulching Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
      Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
      addEventListener("load", function () {
      	setTimeout(hideURLbar, 0);
      }, false);
      
      function hideURLbar() {
      	window.scrollTo(0, 1);
      }
    </script>
    <!--//meta tags ends here-->
    <!--booststrap-->
    <link href="<?php echo base_url() ?>Assets/web/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <!--//booststrap end-->
    <!-- font-awesome icons -->
    <link href="<?php echo base_url() ?>Assets/web/css/font-awesome.min.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!--stylesheets-->
    <link href="<?php echo base_url() ?>Assets/web/css/style.css" rel='stylesheet' type='text/css' media="all">
    <!--//stylesheets-->
   <!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Mada:200,300,400,500,600,700,900&amp;subset=arabic" rel="stylesheet">
	<!-- //Web-Fonts -->

  <script src="<?php echo base_url();?>Assets/js/jquery.min.js"> </script>

    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>Assets/devexpress/dx.common.css" />
    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>Assets/devexpress/dx.light.css" />
    <script src="<?php echo base_url();?>Assets/devexpress/jszip.min.js"></script>
    <script src="<?php echo base_url();?>Assets/devexpress/dx.all.js"></script>

  </head>
  <body>
    <!--headder-->
    <div class="header-outs inner_page-banner " id="home">
      <div class="headder-top">
        <!-- nav -->
        <nav>
          <div id="logo">
            <h1><a href="index.html">K-Means</a></h1>
          </div>
          <label for="drop" class="toggle">Menu</label>
          <input type="checkbox" id="drop">
          <ul class="menu mt-2">
          <!-- 1 -->  <li class="active"><a href="<?php echo base_url(); ?>Welcome/">Home</a></li>
          <!-- 2 -->  <li class="mx-lg-3 mx-md-2 my-md-0 my-1"><a href="<?php echo base_url(); ?>Welcome/about">About</a></li>
          <!-- 3 -->  <li><a href="<?php echo base_url(); ?>Welcome/tanaman">Data UMKM</a></li>
          <!-- 4 -->  <li><a href="<?php echo base_url(); ?>Welcome/lokasi">Lokasi UMKM</a></li>
          <!-- 5 -->  <li><a href="<?php echo base_url(); ?>Home/Login">Login</a></li>
          </ul>
        </nav>
        <!-- //nav -->
      </div>
    </div>
    <!--//headder-->
    <!-- //short-->
    <!-- about -->
    <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
      <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
        <div class="row">
          <div class="col-lg-12 col-md-12 text-left about-two-grids">
            <h3 class="title  mb-md-4 mb-sm-3 mb-3">Hasil Pemetaan UMKM Kabupaten Sukoharjo dengan Metode K-Means Clustering</h3>

            <input type="hidden" name="Alamat" id="Alamat">
            <div id="map-canvas" style="width:100%;height: 600px;"></div>
          </div>
        </div>
      </div>
    </section>
    <!-- footer -->
    <footer class="py-lg-4 py-md-3 py-sm-3 py-3">
      <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
        <div class="footer-w3layouts-head text-center">
          <h2><a href="index.html">AIS System</a></h2>
        </div>
        <div class="social-icons mt-lg-5 mt-md-4 mt-3 text-center">
          <ul>
            <li><a href="mailto:prasetyoajiw@gmail.com"><span class="fa fa-envelope"></span></a></li>
            <li><a href="https://www.instagram.com/aisystem.id/" target="_blank"><span class="fa fa-instagram"></span></a></li>
          </ul>
        </div>
        <div class="bottem-wthree-footer text-center pt-md-4 pt-3">
          <p> 
            © 2021 Mulching. All Rights Reserved | Design by <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
          </p>
        </div>
        <!-- move icon -->
        <div class="text-center">
          <a href="#home" class="move-top text-center mt-3"><i class="fa fa-arrow-up" aria-hidden="true"></i></a>
        </div>
        <!--//move icon -->
      </div>
    </footer>
    <!--//footer -->
  </body>
</html>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCG7FscIk67I9yY_fiyLc7-_1Aoyerf96E&libraries=places&callback=initMap"
         async defer></script>
<script src="<?php echo base_url() ?>Assets/nodemaker/assets/webGisTool-V3.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        // Handle CSRF token
        $.ajaxSetup({
            beforeSend:function(jqXHR, Obj){
                var value = "; " + document.cookie;
                var parts = value.split("; csrf_cookie_token=");
                if(parts.length == 2)
                Obj.data += '&csrf_token='+parts.pop().split(";").shift();
            }
        });
        $(document).ready(function () {
            // body...
        });
        // end Handle CSRF token
        $('#loginform').submit(function (e) {
            $('#btn_login').text('Tunggu Sebentar...');
            $('#btn_login').attr('disabled',true);

            e.preventDefault();
            var me = $(this);
            // alert(me.serialize());
            $.ajax({
                type: "post",
                url: "<?=base_url()?>Auth/Log_Pro",
                data: me.serialize(),
                dataType: "json",
                success:function (response) {
                    if(response.success == true){
                        location.replace("<?=base_url()?>Home")
                    }
                    else{
                        if(response.message == 'L-01'){
                            Swal.fire({
                              type: 'error',
                              title: 'Oops...',
                              text: 'User dan password tidak sesuai dengan database!',
                              // footer: '<a href>Why do I have this issue?</a>'
                            }).then((result)=>{
                                $('#username').val('');
                                $('#password').val('');
                                $('#btn_login').text('Login');
                                $('#btn_login').attr('disabled',false);
                            });
                        }
                        else if(response.message == 'L-02'){
                            Swal.fire({
                              type: 'error',
                              title: 'Oops...',
                              text: 'User tidak di temukan!',
                              footer: '<a href>Why do I have this issue?</a>'
                            }).then((result)=>{
                                $('#username').val('');
                                $('#password').val('');
                                $('#btn_login').text('Login');
                                $('#btn_login').attr('disabled',false);
                            });
                        }
                        else{
                            Swal.fire({
                              type: 'error',
                              title: 'Oops...',
                              text: 'Undefine Error Contact your system administrator!',
                              footer: '<a href>Why do I have this issue?</a>'
                            }).then((result)=>{
                                $('#username').val('');
                                $('#password').val('');
                                $('#btn_login').text('Login');
                                $('#btn_login').attr('disabled',false);
                            });
                        }
                    }
                }
            });
        });
    });
</script>