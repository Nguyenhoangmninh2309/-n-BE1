<?php session_start() ;
// if(!$_SESSION['user']){
// 	header('location: login.php');
// } ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="css/style.css"/>

 		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
 		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 		<!--[if lt IE 9]>
 		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
						<?php				 					
						if(isset($_SESSION['user'])){	?>
						         <div class="name dropdown" style ="display: flex;">
						                   <li><a href=''><?php echo "Chào ".$_SESSION['user'] ?></a>
							         <li><a href='../dangnhap/logout.php'><?php echo "Thoát"  ?></a>
						         </div>						
							
						<?php }
						else
						{
							echo "<li><a href='login.php'></a>";
						}
						?>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="./img/logo.png" alt="">
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<?php require "addcart.php" ?>
						<?php //require "addwishlist.php" ?>
						<!-- SEARCH BAR -->
						<?php require "../models/protypes.php"; 
						$manufacture = new Protype;
						$manufactures = $manufacture -> getAllProtypes();  ?>
						<div class="col-md-6">
							<div class="header-search">
								<form action = "blank.php" method = "get" >
									<select class="input-select" name = "type_id">
										<option value="0">All Categories</option>
										<?php foreach($manufactures as $value):?>
										<option value="<?php echo $value['type_id'] ?>"><?php echo $value['type_name'] ?></option>
										<?php endforeach; ?>
									</select>
									<input class="input" type="text" name="keyword" id =" " placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->


						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="wishlist.php">
										<i class="fa fa-heart-o"></i>
										<span>Your Wishlist</span>
										<div class="qty"><?php //echo demSLWList() ?></div>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
										<i class="fa fa-shopping-cart"></i>
										<span>Your Cart</span>
										<div class="qty"><?php echo demSL() ?></div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
										    <?php 
											if(isset($_SESSION['cart'])){
												foreach($_SESSION['cart'] as $key=>$qty): 
													foreach($products as $value):
														  if($key == $value['id']): ?>
	
												 <div class="product-widget">
													<div class="product-img">
														<img src="./img/<?php echo  $value['image'] ?>" alt="">
													</div>
													<div class="product-body">
														<h3 class="product-name"><a href="product.php?idtam=<?php echo  $value['id'] ?>"><?php echo  $value['name'] ?></a></h3>
														<?php if($value['selling'] == 1) { ?>
															<h4 class="product-price"><span class="qty"><?php echo  $qty ?></span><?php echo number_format(($value['price'] * 0.9 )*$qty) ?> VND</h4>
														<?php } else {?>
															<h4 class="product-price"><span class="qty"><?php echo  $qty ?></span><?php echo number_format($value['price']  *$qty) ?> VND</h4>
														<?php } ?>
													</div>
													
													<a href="delproduct.php?id=<?php echo $value['id'] ?>"><button class="delete"><i class="fa fa-close"></i></button></a>
												</div>
												<?php
													  endif;
													 endforeach;
													 endforeach; 
											 }else{
												 echo "<div>  </div>";
											}
											?>
										 </div>
										<div class="cart-summary">
										     <?php if(isset($_SESSION['cart'])){?>
											<small><?php echo demSL() ?> Item(s) selected</small>
											<h5>SUBTOTAL: <?php echo number_format( tinhtongtien()) ?> VND</h5>
											<?php }else{
                                                echo "<p> Không Có Sản Phẩm </p>";
											}?>
										</div>
										<div class="cart-btns">
											<a href="cart.php">View Cart</a>
											<a href="checkout.php">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
					<li ><a href="index.php">Home</a></li>
						<li ><a href="store.php?type_id=2">Laptops</a></li>
						<li><a href="store.php?type_id=1">Smartphones</a></li>
						<li><a href="store.php?type_id=3">Tai Nghe</a></li>
						<li><a href="store.php?type_id=4">Cameras</a></li>
						<li><a href="store.php?type_id=5">Accessories</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<h3 class="breadcrumb-header">Regular Page</h3>
						<ul class="breadcrumb-tree">
							<li><a href="index.php">Home</a></li>
							<li class="active">Blank</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->

		<?php 
		//kiểm tra tồn tại biến
			//số lượng
			if(isset($_GET['soluong'])){
				$soluong = $_GET['soluong'];
			}else{
				$soluong = 20 ;
			}
			//type_id
			if(isset($_GET['type_id'])){
				$type_id = $_GET['type_id'];
			}else{
				$type_id = "0";
			}
			
			
			//page
			
			if (isset($_GET['page'])) {
				$page  = $_GET['page'];
			}else{
				$page=1;
			}

		// kiểm tra tồn tại biến
		?>
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
			            	<?php
					$per_page_record = 4;  // số lượng phần tử muốn xuất trong 1 trang
                            				

					// Look for a GET variable page if not found default is 1.
					
					$start_from = ($page-1) * $per_page_record;
							//<!-- product -->
							if(isset($_GET['keyword']) && isset($_GET['type_id']))
							{
								$keyword = $_GET['keyword'];
								$type_id = $_GET['type_id'];
								if($_GET['type_id'] == "0"){
									$search = $product -> phantrangsearch($keyword,$start_from);
		                                                                      $timkiem = $product-> search($keyword);
								}else{
									$search = $product ->  phantrangsearchType_id($keyword,$type_id,$start_from);
									$timkiem = $product ->  searchType_id($keyword,$type_id);
								}
							}
                                                    $soluong = count($timkiem);
                                                    //var_dump($soluong);
							
							//hàm đếm sl phần tử
							if(count($search) != 0){
								//var_dump($search);
								foreach($search as $value):
									?>
									<!-- product -->
							<div class="col-md-3 col-xs-6">
							<div class="product">
											         <div class="product-img">
												    <img src="./img/<?php echo $value['image'] ?>" alt="">
												    <div class="product-label">
                                                        <?php if($value['selling'] == 1) { ?>
                                                            <span class="sale">-10%</span>
                                                        <?php } ?>
                                                         
													    <span class="new">NEW</span>
												        </div>
											        </div>
											      <div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="product.php?idtam=<?php echo $value['id']?>"><?php echo substr($value['name'],0,35) ?></a></h3>
                                                <?php if($value['selling'] == 1) { ?>
                                                    <h4 class="product-price"><?php echo number_format($value['price'] * 0.9 ) ?><del class="product-old-price"><?php echo number_format($value['price']) ?></del></h4>
                                                    <?php } else {?>
                                                        <h4 class="product-price"><?php echo number_format($value['price']) ?><del class="product-old-price"></del></h4>
                                                    <?php } ?>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><a href="<?php  //addSLWList($_SESSION['user'],$value['id']) ?>"><i class="fa fa-heart-o"></i> <span class="tooltipp">add to wishlist</a></span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											   </div>
											    <div class="add-to-cart">
												<a href="store.php?type_id=&id=<?php echo $value['id']?>&idtam=<?php echo $value['id']?>"><button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button></a>
											</div>
										    </div>
							</div>
							<!-- /product -->
							    <?php
								endforeach;
							} else{
								echo "<h3 >Không Tìm Thấy Sản Phẩm!!</h3>";
							};
							?>
							
						</div>
						<div class="store-filter clearfix">
							<span class="store-qty">Showing 20-50 products</span>
							<ul class="store-pagination">
							      <?php 
							      // Number of pages required.:Số trang yêu cầu.
								$total_pages = ceil($soluong / $per_page_record);
									if($page>=2){ ?>
										<li ><a href='blank.php?type_id=<?php echo $type_id ?>&page=<?php echo ($page-1)?>&soluong=<?php echo $soluong?>&keyword=<?php echo $keyword?>'>  Prev </a></li>
									<?php };
									for ($i=1; $i<=(int)$total_pages; $i++) {
										if ($i == $page) { ?>
											<li class='active' ><a  href= 'blank.php?type_id=<?php echo  $type_id ?>&page=<?php echo $i?>&soluong=<?php echo $soluong?>&keyword=<?php echo $keyword?>'><?php echo $i?> </a></li>
										<?php }
										else  { ?>
											<li><a href= 'blank.php?type_id=<?php echo $type_id?>&page=<?php echo $i?>&soluong=<?php echo $soluong?>&keyword=<?php echo $keyword?>'><?php echo $i?> </a></li>

										<?php }
									};
									if($page < $total_pages ){ ?>

										<li><a href='blank.php?type_id=<?php echo $type_id?>&page=<?php echo ($page+1)?>&soluong=<?php echo $soluong?>&keyword=<?php echo $keyword?>'>  Next </a></li>
									 <?php };
								?>
							</ul>
						</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Hot deals</a></li>
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Cameras</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">My Account</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>


						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
<!-- delete product -->
<script>
			const product = document.querySelectorAll('.product-widget');
			const b = document.querySelectorAll('.delete');
			
			for (let i = 0; i < b.length; i++) {
				b[i].addEventListener("click", function(){
						 product[i].remove();
						
				});
            };
        </script>
		
	</body>
</html>
