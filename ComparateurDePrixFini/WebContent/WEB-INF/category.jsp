<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">

<title>Unicase</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/green.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
<link href="assets/css/lightbox.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/rateit.css">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

<!-- Demo Purpose Only. Should be removed in production -->
<link rel="stylesheet" href="assets/css/config.css">

<link href="assets/css/green.css" rel="alternate stylesheet"
	title="Green color">
<link href="assets/css/blue.css" rel="alternate stylesheet"
	title="Blue color">
<link href="assets/css/red.css" rel="alternate stylesheet"
	title="Red color">
<link href="assets/css/orange.css" rel="alternate stylesheet"
	title="Orange color">
<link href="assets/css/dark-green.css" rel="alternate stylesheet"
	title="Darkgreen color">
<!-- Demo Purpose Only. Should be removed in production : END -->


<!-- Icons/Glyphs -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700'
	rel='stylesheet' type='text/css'>

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">
<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

<style>
#prodcomp img {
	height: 61px;
	width: 46px;
	object-fit: contain;
	background-repeat: no-repeat;
	background-position: 50% 50%;
}
</style>

</head>
<body class="cnt-home">



	<!-- ============================================== HEADER ============================================== -->
	<header class="header-style-1">

		<!-- ============================================== TOP MENU ============================================== -->
		<div class="top-bar animate-dropdown">
			<div class="container">
				<div class="header-top-inner">
					<div class="cnt-account">
						<ul class="list-unstyled">
							<li><a href="<c:url value="/espaceMembre"/>"><i class="icon fa fa-user"></i> <c:out
										value="${sessionScope.sessionMember.pseudonym}">Mon compte</c:out></a></li>
							<c:if test="${!empty sessionScope.sessionMember}">

							



								<li><a href="<c:url value="/deconnexion"/>"> <i
										class="fa fa-sign-out" aria-hidden="true"></i>Déconnexion
								</a></li>
							</c:if>
							<li><a href="#"><i class="icon fa fa-heart"></i>Favoris</a></li>
							<!--  <li><a href="#"><i class="icon fa fa-shopping-cart"></i>My
									Cart</a></li>-->
							<!-- <li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li> -->
							
							
							<!-- test -->
							<c:if test="${!empty sessionScope.listFavoris}">
							   <c:forEach var="produit" items="${sessionScope.listFavoris}">
							   <c:out value="${produit.id}" />
							   </c:forEach>
							</c:if>
							<!-- test -->
							
							
							<c:if test="${empty sessionScope.sessionMember}">
								<li><a href="connexion#connecter"><i
										class="icon fa fa-sign-in"></i>Connecter</a></li>
							</c:if>
							
						</ul>
					</div>
					<!-- /.cnt-account -->

					<div class="cnt-block">
						<ul class="list-unstyled list-inline">
							<li class="dropdown dropdown-small"><a href="#"
								class="dropdown-toggle" data-hover="dropdown"
								data-toggle="dropdown"><span class="key">currency :</span><span
									class="value">USD </span><b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">USD</a></li>
									<li><a href="#">INR</a></li>
									<li><a href="#">GBP</a></li>
								</ul></li>

							<li class="dropdown dropdown-small"><a href="#"
								class="dropdown-toggle" data-hover="dropdown"
								data-toggle="dropdown"><span class="key">language :</span><span
									class="value">English </span><b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">French</a></li>
									<li><a href="#">German</a></li>
								</ul></li>
						</ul>
						<!-- /.list-unstyled -->
					</div>
					<!-- /.cnt-cart -->
					<div class="clearfix"></div>
				</div>
				<!-- /.header-top-inner -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.header-top -->
		<!-- ============================================== TOP MENU : END ============================================== -->
		<div class="main-header">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
						<!-- ============================================================= LOGO ============================================================= -->
						<div class="logo">
							<a href="home.html"> <img src="assets/images/logo.png" alt="">

							</a>
						</div>
						<!-- /.logo -->
						<!-- ============================================================= LOGO : END ============================================================= -->
					</div>
					<!-- /.logo-holder -->

					<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
						<div class="contact-row">
							<div class="phone inline">
								<i class="icon fa fa-phone"></i> (400) 888 888 868
							</div>
							<div class="contact inline">
								<i class="icon fa fa-envelope"></i> saler@unicase.com
							</div>
						</div>
						<!-- /.contact-row -->
						<!-- ============================================================= SEARCH AREA ============================================================= -->
						<div class="search-area">
							<form method="post" action="category">
								<div class="control-group">

									<ul class="categories-filter animate-dropdown">
										<li class="dropdown"><a class="dropdown-toggle"
											data-toggle="dropdown">Categories <b href="category.html"
												class="caret"></b></a>

											<ul class="dropdown-menu" role="menu">
												<c:forEach var="category" items="${categories }">
													<c:if test="${category.pid  eq 0}">
														<li class="menu-header"><a
															href="category?id=${category.id }">${category.name}</a></li>
													</c:if>
												</c:forEach>
											</ul></li>
									</ul>
									<input class="search-field" placeholder="Saisir un mot clé"
										name="searchkeyword" /> <a class="search-button" href="#"
										onclick="event.preventDefault(); this.parentNode.submit()"></a>

								</div>
							</form>
						</div>
						<!-- /.search-area -->
						<!-- ============================================================= SEARCH AREA : END ============================================================= -->
					</div>
					<!-- /.top-search-holder -->

					<div
						class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
						<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

						<div class="dropdown dropdown-cart mega-dropdown-menu">
							<a href="#" class="dropdown-toggle lnk-cart"> <!-- data-toggle="dropdown" -->
								<div class="items-cart-inner">
									<div class="total-price-basket">
										<span class="lbl">PRODUITS SÉLÉCTIONÉS</span>
									</div>
									<div class="basket">
										<i class="fa fa-retweet"></i>
									</div>
									<div id="bulle">
										<c:if test="${!empty productstocompare}">
											<div class="basket-item-count">
												<span class="count">${fn:length(productstocompare)}</span>
											</div>
										</c:if>
									</div>
								</div>
							</a>
							<ul class="dropdown-menu">
								<li>

									<div id="prodcomp">
										<c:if test="${empty  productstocompare}">Aucun Produit Séléctioné</c:if>
										<c:forEach var="product" items="${productstocompare }">
											<div class="cart-item product-summary">
												<div class="row">
													<div class="col-xs-4">
														<div class="image">
															<a href="detail.html"><img src="${product.imglink}"
																alt=""></a>
														</div>
													</div>
													<div class="col-xs-7">

														<h3 class="name">
															<a href="index.php?page-detail">${product.name}</a>
														</h3>

													</div>
													<div class="col-xs-1 action">
														<a onclick="buttonCompare(${product.id})"><i
															class="fa fa-trash"></i></a>
													</div>
												</div>
											</div>
											<!-- /.cart-item -->
										</c:forEach>
									</div>
									<div class="clearfix">

										<a href="compare" id="lienid"
											class="btn btn-upper btn-primary btn-block m-t-20">Comparer</a>
									</div> <!-- /.cart-total-->


								</li>
							</ul>
							<!-- /.dropdown-menu-->
						</div>
						<!-- /.dropdown-cart -->

						<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
					</div>
					<!-- /.top-cart-row -->
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->

		</div>
		<!-- /.main-header -->

		<!-- ============================================== NAVBAR ============================================== -->
		<div class="header-nav animate-dropdown">
			<div class="container">
				<div class="yamm navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button data-target="#mc-horizontal-menu-collapse"
							data-toggle="collapse" class="navbar-toggle collapsed"
							type="button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="nav-bg-class">
						<div class="navbar-collapse collapse"
							id="mc-horizontal-menu-collapse">
							<div class="nav-outer">
								<ul class="nav navbar-nav">
									<li class="active dropdown yamm-fw"><a href="home.html"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Home</a>
										<ul class="dropdown-menu">
											<li>
												<div class="yamm-content">
													<div class="row">
														<div class="col-md-8 col-sm-8">
															<div class="row">
																<div class='col-md-12'>

																	<div class="col-xs-12 col-sm-6 col-md-3">
																		<h2 class="title">Computer</h2>
																		<ul class="links">
																			<li><a href="#">Lenovo</a></li>
																			<li><a href="#">Microsoft </a></li>
																			<li><a href="#">Fuhlen</a></li>
																			<li><a href="#">Longsleeves</a></li>
																		</ul>
																	</div>
																	<!-- /.col -->

																	<div class="col-xs-12 col-sm-6 col-md-3">
																		<h2 class="title">Camera</h2>
																		<ul class="links">
																			<li><a href="#">Fuhlen</a></li>
																			<li><a href="#">Lenovo</a></li>
																			<li><a href="#">Microsoft </a></li>
																			<li><a href="#">Longsleeves</a></li>
																		</ul>
																	</div>
																	<!-- /.col -->

																	<div class="col-xs-12 col-sm-6 col-md-3">
																		<h2 class="title">Apple Store</h2>
																		<ul class="links">
																			<li><a href="#">Longsleeves</a></li>
																			<li><a href="#">Fuhlen</a></li>
																			<li><a href="#">Lenovo</a></li>
																			<li><a href="#">Microsoft </a></li>
																		</ul>
																	</div>
																	<!-- /.col -->

																	<div class="col-xs-12 col-sm-6 col-md-3">
																		<h2 class="title">Smart Phone</h2>
																		<ul class="links">
																			<li><a href="#">Microsoft </a></li>
																			<li><a href="#">Longsleeves</a></li>
																			<li><a href="#">Fuhlen</a></li>
																			<li><a href="#">Lenovo</a></li>

																		</ul>
																	</div>
																	<!-- /.col -->

																</div>

															</div>
														</div>
														<div class="col-sm-4"></div>
													</div>
													<!-- /.row -->

													<!-- ============================================== WIDE PRODUCTS ============================================== -->
													<div class="wide-banners megamenu-banner">
														<div class="row">
															<div class="col-sm-12 col-md-8">
																<div class="row">
																	<div class="col-md-12">
																		<div class="col-sm-6 col-md-6">
																			<div class="wide-banner cnt-strip">
																				<div class="image">
																					<img class="img-responsive"
																						data-echo="assets/images/banners/4.jpg"
																						src="assets/images/blank.gif" alt="">
																				</div>
																				<div class="strip">
																					<div class="strip-inner text-right">
																						<h3 class="white">new trend</h3>
																						<h2 class="white">apple product</h2>
																					</div>
																				</div>
																			</div>
																			<!-- /.wide-banner -->
																		</div>
																		<!-- /.col -->

																		<div class="col-sm-6 col-md-6">
																			<div class="wide-banner cnt-strip">
																				<div class="image">
																					<img class="img-responsive"
																						data-echo="assets/images/banners/5.jpg"
																						src="assets/images/blank.gif" alt="">
																				</div>
																				<div class="strip">
																					<div class="strip-inner text-left">
																						<h3 class="white">camera collection</h3>
																						<h2 class="white">new arrivals</h2>
																					</div>
																				</div>
																			</div>
																			<!-- /.wide-banner -->
																		</div>
																		<!-- /.col -->
																	</div>

																</div>
																<!-- /.row -->
															</div>
															<div class="col-sm-12 col-md-4 hidden-xs hidden-sm">
																<p class="text ">LenovoProin gravida nibh vel velit
																	auctor aliquet es Aenean sollicitudin,lorem quis
																	bibendu auctor,nisi elit consequat ipsum auctor.</p>
															</div>
														</div>
													</div>
													<!-- /.wide-banners -->

													<!-- ============================================== WIDE PRODUCTS : END ============================================== -->

												</div> <!-- /.yamm-content -->
											</li>
										</ul></li>
									<li class="dropdown yamm"><a href="home.html"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Desktop</a>
										<ul class="dropdown-menu">
											<li>
												<div class="yamm-content">
													<div class="row">
														<div class='col-sm-12'>
															<div class="col-xs-12 col-sm-12 col-md-4">
																<h2 class="title">Laptops &amp; Notebooks</h2>
																<ul class="links">
																	<li><a href="#">Power Supplies Power</a></li>
																	<li><a href="#">Power Supply Testers Sound </a></li>
																	<li><a href="#">Sound Cards (Internal)</a></li>
																	<li><a href="#">Video Capture &amp; TV Tuner
																			Cards</a></li>
																	<li><a href="#">Other</a></li>
																</ul>
															</div>
															<!-- /.col -->

															<div class="col-xs-12 col-sm-12 col-md-4">
																<h2 class="title">Computers &amp; Laptops</h2>
																<ul class="links">
																	<li><a href="#">Computer Cases &amp;
																			Accessories</a></li>
																	<li><a href="#">CPUs, Processors</a></li>
																	<li><a href="#">Fans, Heatsinks &amp; Cooling</a></li>
																	<li><a href="#">Graphics, Video Cards</a></li>
																	<li><a href="#">Interface, Add-On Cards</a></li>
																	<li><a href="#">Laptop Replacement Parts</a></li>
																	<li><a href="#">Memory (RAM)</a></li>
																	<li><a href="#">Motherboards</a></li>
																	<li><a href="#">Motherboard &amp; CPU Combos</a></li>
																	<li><a href="#">Motherboard Components &amp;
																			Accs</a></li>
																</ul>
															</div>
															<!-- /.col -->

															<div class="col-xs-12 col-sm-12 col-md-4">
																<h2 class="title">Dekstop Parts</h2>
																<ul class="links">
																	<li><a href="#">Power Supplies Power</a></li>
																	<li><a href="#">Power Supply Testers Sound</a></li>
																	<li><a href="#">Sound Cards (Internal)</a></li>
																	<li><a href="#">Video Capture &amp; TV Tuner
																			Cards</a></li>
																	<li><a href="#">Other</a></li>
																</ul>
															</div>
															<!-- /.col -->
														</div>
													</div>
													<!-- /.row -->
												</div> <!-- /.yamm-content -->
											</li>
										</ul></li>

									<li class="dropdown"><a href="category.html">Electronics
											<span class="menu-label hot-menu hidden-xs">hot</span>
									</a></li>
									<li class="dropdown hidden-sm"><a href="category.html">Television
											<span class="menu-label new-menu hidden-xs">new</span>
									</a></li>

									<li class="dropdown hidden-sm"><a href="category.html">Smart
											Phone</a></li>

									<li class="dropdown"><a href="contact.html">Contact</a></li>

									<li class="dropdown navbar-right"><a href="#"
										class="dropdown-toggle" data-hover="dropdown"
										data-toggle="dropdown">Pages</a>
										<ul class="dropdown-menu pages">
											<li>
												<div class="yamm-content">
													<div class="row">

														<div class='col-xs-12 col-sm-4 col-md-4'>
															<ul class='links'>
																<li><a href="home.html">Home I</a></li>
																<li><a href="home2.html">Home II</a></li>
																<li><a href="category.html">Category</a></li>
																<li><a href="category-2.html">Category II</a></li>
																<li><a href="detail.html">Detail</a></li>
																<li><a href="detail2.html">Detail II</a></li>
																<li><a href="shopping-cart.html">Shopping Cart
																		Summary</a></li>

															</ul>
														</div>
														<div class='col-xs-12 col-sm-4 col-md-4'>
															<ul class='links'>
																<li><a href="checkout.html">Checkout</a></li>
																<li><a href="blog.html">Blog</a></li>
																<li><a href="blog-details.html">Blog Detail</a></li>
																<li><a href="contact.html">Contact</a></li>
																<li><a href="homepage1.html">Homepage 1</a></li>
																<li><a href="homepage2.html">Homepage 2</a></li>
																<li><a href="home-furniture.html">Home
																		Furniture</a></li>
															</ul>
														</div>
														<div class='col-xs-12 col-sm-4 col-md-4'>
															<ul class='links'>
																<li><a href="sign-in.html">Sign In</a></li>
																<li><a href="my-wishlist.html">Wishlist</a></li>
																<li><a href="terms-conditions.html">Terms and
																		Condition</a></li>
																<li><a href="track-orders.html">Track Orders</a></li>
																<li><a href="product-comparison.html">Product-Comparison</a></li>
																<li><a href="faq.html">FAQ</a></li>
																<li><a href="404.html">404</a></li>
															</ul>

														</div>

													</div>
												</div>
											</li>


										</ul></li>

								</ul>
								<!-- /.navbar-nav -->
								<div class="clearfix"></div>
							</div>
							<!-- /.nav-outer -->
						</div>
						<!-- /.navbar-collapse -->


					</div>
					<!-- /.nav-bg-class -->
				</div>
				<!-- /.navbar-default -->
			</div>
			<!-- /.container-class -->

		</div>
		<!-- /.header-nav -->
		<!-- ============================================== NAVBAR : END ============================================== -->

	</header>

	<!-- ============================================== HEADER : END ============================================== -->
	<div class="breadcrumb">
		<div class="container">
			<div class="breadcrumb-inner">
				<ul class="list-inline list-unstyled">
					<li><a href="#">Home</a></li>
					<li class='active'>Smart Phone</li>
				</ul>
			</div>
			<!-- /.breadcrumb-inner -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class='container'>
			<div class='row outer-bottom-sm'>
				<div class='col-md-3 sidebar'>
					<!-- ================================== TOP NAVIGATION ================================== -->
					<div class="side-menu animate-dropdown outer-bottom-xs">
						<div class="head">
							<i class="icon fa fa-align-justify fa-fw"></i> Categories
						</div>
						<nav class="yamm megamenu-horizontal" role="navigation">
							<ul class="nav">
								<c:forEach var="categorie" items="${categories }">
									<c:if test="${categorie.pid eq 0 }">


										<c:set var="test" value="0" />

										<c:forEach var="categoriechild" items="${categories }"
											varStatus="status">
											<c:if test="${categoriechild.pid eq categorie.id }">
												<c:set var="test" value="${test + 1 }" />
											</c:if>
										</c:forEach>

										<fmt:parseNumber var="nb" integerOnly="true" type="number"
											value="${test / 4}" />
										<c:if test="${nb < 1 }">
											<c:set var="nb" value="1" />
										</c:if>

										<li class="dropdown menu-item"><a
											href="category?id=${categorie.id }"
											<c:if test="${test ne 0 }">class="dropdown-toggle" data-toggle="dropdown"</c:if>><i
												class="icon fa ${ categorie.icon} fa-fw"></i>${categorie.name }</a>
											<ul class="dropdown-menu mega-menu">
												<c:if test="${test ne 0 }">
													<c:set var="compteur" value="0" />
													<li class="yamm-content">
														<div class="row">
															<c:set var="compteur" value="0" />
															<div class="col-sm-12 col-md-3">
																<ul class="links list-unstyled">
																	<c:forEach var="categoriechild" items="${categories }"
																		varStatus="status">
																		<c:if test="${categoriechild.pid eq categorie.id }">
																			<c:set var="compteur" value="${compteur + 1 }" />
																			<c:if test="${compteur <= nb}">
																				<li><a href="category?id=${categoriechild.id}">${categoriechild.name }</a></li>
																			</c:if>
																		</c:if>
																	</c:forEach>
																</ul>
															</div>
															<!-- /.col -->
															<c:set var="compteur" value="0" />
															<div class="col-sm-12 col-md-3">
																<ul class="links list-unstyled">
																	<c:forEach var="categoriechild" items="${categories }"
																		varStatus="status">
																		<c:if test="${categoriechild.pid eq categorie.id }">
																			<c:set var="compteur" value="${compteur + 1 }" />
																			<c:if
																				test="${compteur > nb and compteur <= (nb * 2)}">
																				<li><a href="category?id=${categoriechild.id}">${categoriechild.name }</a></li>
																			</c:if>
																		</c:if>
																	</c:forEach>
																</ul>
															</div>
															<!-- /.col -->
															<c:set var="compteur" value="0" />
															<div class="col-sm-12 col-md-3">
																<ul class="links list-unstyled">
																	<c:forEach var="categoriechild" items="${categories }"
																		varStatus="status">
																		<c:if test="${categoriechild.pid eq categorie.id }">
																			<c:set var="compteur" value="${compteur + 1 }" />
																			<c:if
																				test="${compteur <= (nb * 3) and compteur > (nb * 2)}">
																				<li><a href="category?id=${categoriechild.id}">${categoriechild.name }</a></li>

																			</c:if>
																		</c:if>
																	</c:forEach>
																</ul>
															</div>
															<!-- /.col -->
															<c:set var="compteur" value="0" />
															<div class="col-sm-12 col-md-3">
																<ul class="links list-unstyled">
																	<c:forEach var="categoriechild" items="${categories }"
																		varStatus="status">
																		<c:if test="${categoriechild.pid eq categorie.id }">
																			<c:set var="compteur" value="${compteur + 1 }" />
																			<c:if
																				test="${compteur > (nb * 3) and compteur <= test}">
																				<li><a href="category?id=${categoriechild.id}">${categoriechild.name }</a></li>
																			</c:if>
																		</c:if>
																	</c:forEach>
																</ul>
															</div>
															<!-- /.col -->
														</div> <!-- /.row -->
													</li>
													<!-- /.yamm-content -->
												</c:if>
											</ul> <!-- /.dropdown-menu --></li>
										<!-- /.menu-item -->
									</c:if>
								</c:forEach>


							</ul>
							<!-- /.nav -->
						</nav>
						<!-- /.megamenu-horizontal -->
					</div>
					<!-- /.side-menu -->
					<!-- ================================== TOP NAVIGATION : END ================================== -->
					<div class="sidebar-module-container"></div>
					<!-- /.sidebar-module-container -->
				</div>
				<!-- /.sidebar -->
				<div class='col-md-9'>
					<!-- ========================================== SECTION – HERO ========================================= -->






					<!-- ========================================= SECTION – HERO : END ========================================= -->
					<div class="clearfix filters-container m-t-10">
						<div class="row">
							<div class="text-right">
								<div class="pagination-container">
									<ul class="list-inline list-unstyled">
										<c:if test="${page ne 1  }">
											<c:set var="prevp" value="${page - 1 }" />
										</c:if>
										<c:if test="${page eq 1  }">
											<c:set var="prevp" value="${page}" />
										</c:if>
										<li class="prev"><a
											href="category<c:if test="${empty keyword}">?id=${id}</c:if><c:if test="${!empty keyword}">?searchkeyword=${keyword}</c:if>&page=${prevp}"><i
												class="fa fa-angle-left"></i></a></li>
										<c:set var="length" value="${fn:length(products)}" />
										<c:set var="endl" value="${length div 18 }" />
										<c:if test="${length % 18 ne 0 }">
											<c:set var="endl" value="${length div 18 + 1 }" />
										</c:if>
										<c:forEach var="i" begin="1" end="${endl}">
											<li <c:if test="${page eq i }" >class="active"</c:if>><a
												href="category<c:if test="${empty keyword}">?id=${id}</c:if><c:if test="${!empty keyword}">?searchkeyword=${keyword}</c:if>&page=${i}">${i }</a></li>
										</c:forEach>
										<c:if test="${page < endl  }">
											<c:set var="nextp" value="${page + 1 }" />
										</c:if>
										<c:if test="${page >= endl - 1 }">
											<c:set var="nextp" value="${page}" />
										</c:if>
										<li class="next"><a
											href="category<c:if test="${empty keyword}">?id=${id}</c:if><c:if test="${!empty keyword}">?searchkeyword=${keyword}</c:if>&page=${nextp}"><i
												class="fa fa-angle-right"></i></a></li>
									</ul>
									<!-- /.list-inline -->
								</div>
								<!-- /.pagination-container -->
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<div class="search-result-container">
						<div id="myTabContent" class="tab-content">
							<div class="tab-pane active " id="grid-container">
								<div class="category-product  inner-top-vs">
									<div class="row">
										<c:if test="${empty page }">
											<c:set var="page" value="1" />
										</c:if>
										<c:set var="pagem" value="${page - 1}" />
										<c:set var="begin" value="${pagem * 18}" />
										<c:set var="end" value="${page * 18 - 1 }" />

										<style>
.activated {
	background-color: #abda7e !important;
}
</style>

										<c:if test="${empty products }">
											<p>Aucun résultat !</p>
										</c:if>
										<c:forEach var="product" begin="${begin}" end="${end}"
											items="${products }" varStatus="status">
											<div class="col-sm-6 col-md-4 wow fadeInUp"
												style="height: 400px;">
												<div class="products">


													<div class="product">
														<div class="product-image">
															<div class="image">
																<a href="product?id=${product.id }"> <img
																	src=${product.imglink }
																	style="width: 180px; height: 200px; object-fit: contain; background-repeat: no-repeat; background-position: 50% 50%;"
																	alt="">
																</a>
															</div>
															<!-- /.image -->

														</div>
														<!-- /.product-image -->


														<div class="product-info text-left">
															<h3 class="name">
																<a href="product?id=${product.id }">${product.name }</a>
															</h3>
															<div class="description"></div>

															<div class="description">A partir de</div>
															<div class="product-price">
																<span class="price" style="font-size: 25px;">

																	${product.bestprice } TND </span>


															</div>
															<!-- /.product-price -->
															<br>
														</div>
														<!-- /.product-info -->
														<div class="cart clearfix animate-effect">
															<div class="action">
																<ul class="list-unstyled">
																	<!-- Favori -->
																	<li class="lnk wishlist"
																		onclick="ajouterFavori(${product.id}, '${sessionScope.sessionMember.memberId}');"><a
																		id="f${product.id}" class="add-to-cart"
																		title="Wishlist"> <i class="icon fa fa-heart"></i>
																	</a></li>
																	<!-- Favori -->
																	<li class="lnk"><a class="add-to-cart"
																		id="${product.id}"
																		onclick="buttonCompare(${product.id});"
																		title="Compare"> <i class="fa fa-retweet"></i>
																	</a></li>
																</ul>
															</div>
															<!-- /.action -->
														</div>
														<!-- /.cart -->
													</div>
													<!-- /.product -->

												</div>
												<!-- /.products -->

											</div>
											<!-- /.item -->
										</c:forEach>

									</div>
									<!-- /.product-info -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.product-list-row -->
						</div>
						<!-- /.products -->
						<div class="clearfix filters-container">

							<div class="text-right">
								<div class="pagination-container">

									<ul class="list-inline list-unstyled">
										<c:if test="${page ne 1  }">
											<c:set var="prevp" value="${page - 1 }" />
										</c:if>
										<c:if test="${page eq 1  }">
											<c:set var="prevp" value="${page}" />
										</c:if>
										<li class="prev"><a
											href="category<c:if test="${empty keyword}">?id=${id}</c:if><c:if test="${!empty keyword}">?searchkeyword=${keyword}</c:if>&page=${prevp}"><i
												class="fa fa-angle-left"></i></a></li>
										<c:set var="length" value="${fn:length(products)}" />
										<c:set var="endl" value="${ length div 18}" />
										<c:if test="${length % 18 ne 0 }">
											<c:set var="endl" value="${length div 18 + 1 }" />
										</c:if>
										<c:forEach var="i" begin="1" end="${endl}">
											<li <c:if test="${page eq i }" >class="active"</c:if>><a
												href="category<c:if test="${empty keyword}">?id=${id}</c:if><c:if test="${!empty keyword}">?searchkeyword=${keyword}</c:if>&page=${i}">${i}</a></li>
										</c:forEach>
										<c:if test="${page < endl  }">
											<c:set var="nextp" value="${page + 1 }" />
										</c:if>
										<c:if test="${page >= endl - 1 }">
											<c:set var="nextp" value="${page}" />
										</c:if>
										<li class="next"><a
											href="category<c:if test="${empty keyword}">?id=${id}</c:if><c:if test="${!empty keyword}">?searchkeyword=${keyword}</c:if>&page=${nextp}"><i
												class="fa fa-angle-right"></i></a></li>
									</ul>
									<!-- /.list-inline -->
								</div>
								<!-- /.pagination-container -->
							</div>
							<!-- /.text-right -->

						</div>
						<!-- /.filters-container -->
					</div>
					<!-- /.category-product-inner -->


				</div>
				<!-- /.category-product -->
			</div>
			<!-- /.tab-pane #list-container -->
		</div>
		<!-- /.tab-content -->


	</div>
	<!-- /.search-result-container -->

	<!-- ============================================== BRANDS CAROUSEL ============================================== -->
	<div id="brands-carousel" class="logo-slider wow fadeInUp"
		style="margin: 0px 50px 0px 50px">

		<h3 class="section-title">Our Brands</h3>
		<div class="logo-slider-inner">
			<div id="brand-slider"
				class="owl-carousel brand-slider custom-carousel owl-theme">
				<div class="item m-t-15">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand1.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item m-t-10">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand2.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand3.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand4.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand5.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand6.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand2.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand4.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand1.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->

				<div class="item">
					<a href="#" class="image"> <img
						data-echo="assets/images/brands/brand5.png"
						src="assets/images/blank.gif" alt="">
					</a>
				</div>
				<!--/.item-->
			</div>
			<!-- /.owl-carousel #logo-slider -->
		</div>
		<!-- /.logo-slider-inner -->

	</div>
	<!-- /.logo-slider -->
	<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->


	<!-- ============================================================= FOOTER ============================================================= -->
	<footer id="footer" class="footer color-bg">
		<div class="links-social inner-top-sm">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<!-- ============================================================= CONTACT INFO ============================================================= -->
						<div class="contact-info">
							<div class="footer-logo">
								<div class="logo">
									<a href="home.html"> <img src="assets/images/logo.png"
										alt="">

									</a>
								</div>
								<!-- /.logo -->

							</div>
							<!-- /.footer-logo -->

							<div class="module-body m-t-20">
								<p class="about-us">Nam libero tempore, cum soluta nobis est
									ses eligendi optio cumque cum soluta nobis est ses eligendi
									optio cumque.</p>

								<div class="social-icons">

									<a href="http://facebook.com/transvelo" class='active'><i
										class="icon fa fa-facebook"></i></a> <a href="#"><i
										class="icon fa fa-twitter"></i></a> <a href="#"><i
										class="icon fa fa-linkedin"></i></a> <a href="#"><i
										class="icon fa fa-rss"></i></a> <a href="#"><i
										class="icon fa fa-pinterest"></i></a>

								</div>
								<!-- /.social-icons -->
							</div>
							<!-- /.module-body -->

						</div>
						<!-- /.contact-info -->
						<!-- ============================================================= CONTACT INFO : END ============================================================= -->
					</div>
					<!-- /.col -->

					<div class="col-xs-12 col-sm-6 col-md-3">
						<!-- ============================================================= CONTACT TIMING============================================================= -->
						<div class="contact-timing">
							<div class="module-heading">
								<h4 class="module-title">opening time</h4>
							</div>
							<!-- /.module-heading -->

							<div class="module-body outer-top-xs">
								<div class="table-responsive">
									<table class="table">
										<tbody>
											<tr>
												<td>Monday-Friday:</td>
												<td class="pull-right">08.00 To 18.00</td>
											</tr>
											<tr>
												<td>Saturday:</td>
												<td class="pull-right">09.00 To 20.00</td>
											</tr>
											<tr>
												<td>Sunday:</td>
												<td class="pull-right">10.00 To 20.00</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->
								<p class='contact-number'>Hot Line:(400)888 868 848</p>
							</div>
							<!-- /.module-body -->
						</div>
						<!-- /.contact-timing -->
						<!-- ============================================================= CONTACT TIMING : END ============================================================= -->
					</div>
					<!-- /.col -->

					<div class="col-xs-12 col-sm-6 col-md-3">
						<!-- ============================================================= LATEST TWEET============================================================= -->
						<div class="latest-tweet">
							<div class="module-heading">
								<h4 class="module-title">latest tweet</h4>
							</div>
							<!-- /.module-heading -->

							<div class="module-body outer-top-xs">
								<div class="re-twitter">
									<div class="comment media">
										<div class='pull-left'>
											<span class="icon fa-stack fa-lg"> <i
												class="fa fa-circle fa-stack-2x"></i> <i
												class="fa fa-twitter fa-stack-1x fa-inverse"></i>
											</span>
										</div>
										<div class="media-body">
											<a href="#">@laurakalbag</a> As a result of your previous
											recommendation :) <span class="time"> 12 hours ago </span>
										</div>
									</div>

								</div>
								<div class="re-twitter">
									<div class="comment media">
										<div class='pull-left'>
											<span class="icon fa-stack fa-lg"> <i
												class="fa fa-circle fa-stack-2x"></i> <i
												class="fa fa-twitter fa-stack-1x fa-inverse"></i>
											</span>
										</div>
										<div class="media-body">
											<a href="#">@laurakalbag</a> As a result of your previous
											recommendation :) <span class="time"> 12 hours ago </span>
										</div>
									</div>
								</div>
							</div>
							<!-- /.module-body -->
						</div>
						<!-- /.contact-timing -->
						<!-- ============================================================= LATEST TWEET : END ============================================================= -->
					</div>
					<!-- /.col -->

					<div class="col-xs-12 col-sm-6 col-md-3">
						<!-- ============================================================= INFORMATION============================================================= -->
						<div class="contact-information">
							<div class="module-heading">
								<h4 class="module-title">information</h4>
							</div>
							<!-- /.module-heading -->

							<div class="module-body outer-top-xs">
								<ul class="toggle-footer" style="">
									<li class="media">
										<div class="pull-left">
											<span class="icon fa-stack fa-lg"> <i
												class="fa fa-circle fa-stack-2x"></i> <i
												class="fa fa-map-marker fa-stack-1x fa-inverse"></i>
											</span>
										</div>
										<div class="media-body">
											<p>868 Any Stress,Burala Casi,Picasa USA.</p>
										</div>
									</li>

									<li class="media">
										<div class="pull-left">
											<span class="icon fa-stack fa-lg"> <i
												class="fa fa-circle fa-stack-2x"></i> <i
												class="fa fa-mobile fa-stack-1x fa-inverse"></i>
											</span>
										</div>
										<div class="media-body">
											<p>
												(400) 0888 888 888<br>(400) 888 888 888
											</p>
										</div>
									</li>

									<li class="media">
										<div class="pull-left">
											<span class="icon fa-stack fa-lg"> <i
												class="fa fa-circle fa-stack-2x"></i> <i
												class="fa fa-envelope fa-stack-1x fa-inverse"></i>
											</span>
										</div>
										<div class="media-body">
											<span><a href="#">Contact @Unicase.com</a></span><br> <span><a
												href="#">Sale @Unicase.com</a></span>
										</div>
									</li>

								</ul>
							</div>
							<!-- /.module-body -->
						</div>
						<!-- /.contact-timing -->
						<!-- ============================================================= INFORMATION : END ============================================================= -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.links-social -->

		<div class="footer-bottom inner-bottom-sm">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="module-heading outer-bottom-xs">
							<h4 class="module-title">category</h4>
						</div>
						<!-- /.module-heading -->

						<div class="module-body">
							<ul class='list-unstyled'>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Libero Sed rhoncus</a></li>
								<li><a href="#">Venenatis augue tellus</a></li>
								<li><a href="#">My Vouchers</a></li>
							</ul>
						</div>
						<!-- /.module-body -->
					</div>
					<!-- /.col -->

					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="module-heading outer-bottom-xs">
							<h4 class="module-title">my account</h4>
						</div>
						<!-- /.module-heading -->

						<div class="module-body">
							<ul class='list-unstyled'>
								<li><a href="#">My Account</a></li>
								<li><a href="#">Customer Service</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Site Map</a></li>
								<li><a href="#">Search Terms</a></li>
							</ul>
						</div>
						<!-- /.module-body -->
					</div>
					<!-- /.col -->

					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="module-heading outer-bottom-xs">
							<h4 class="module-title">our services</h4>
						</div>
						<!-- /.module-heading -->

						<div class="module-body">
							<ul class='list-unstyled'>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Returns</a></li>
								<li><a href="#">Libero Sed rhoncus</a></li>
								<li><a href="#">Venenatis augue tellus</a></li>
								<li><a href="#">My Vouchers</a></li>
							</ul>
						</div>
						<!-- /.module-body -->
					</div>
					<!-- /.col -->

					<div class="col-xs-12 col-sm-6 col-md-3">
						<div class="module-heading outer-bottom-xs">
							<h4 class="module-title">help & support</h4>
						</div>
						<!-- /.module-heading -->

						<div class="module-body">
							<ul class='list-unstyled'>
								<li><a href="#">Knowledgebase</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Contact Support</a></li>
								<li><a href="#">Marketplace Blog</a></li>
								<li><a href="#">About Unicase</a></li>
							</ul>
						</div>
						<!-- /.module-body -->
					</div>
				</div>
			</div>
		</div>

		<div class="copyright-bar">
			<div class="container">
				<div class="col-xs-12 col-sm-6 no-padding">
					<div class="copyright">
						Copyright © 2014 <a href="home.html">UnimarketShop.</a> - All
						rights Reserved
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 no-padding">
					<div class="clearfix payment-methods">
						<ul>
							<li><img src="assets/images/payments/1.png" alt=""></li>
							<li><img src="assets/images/payments/2.png" alt=""></li>
							<li><img src="assets/images/payments/3.png" alt=""></li>
							<li><img src="assets/images/payments/4.png" alt=""></li>
							<li><img src="assets/images/payments/5.png" alt=""></li>
						</ul>
					</div>
					<!-- /.payment-methods -->
				</div>
			</div>
		</div>
	</footer>
	<!-- ============================================================= FOOTER : END============================================================= -->


	<!-- For demo purposes – can be removed on production -->

	<div class="config open">
		<div class="config-options">
			<h4>Pages</h4>
			<ul class="list-unstyled animate-dropdown">
				<li class="dropdown">
					<button class="dropdown-toggle btn btn-primary btn-block"
						data-toggle="dropdown">View Pages</button>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation" class="dropdown-header">Home Pages</li>
						<li><a href="home.html">Home</a></li>
						<li><a href="home2.html">Home II</a></li>
						<li><a href="home-furniture.html">Home Furniture</a></li>
						<li><a href="homepage1.html">Home Page I</a></li>
						<li><a href="homepage2.html">Home Page II</a></li>
						<li class="divider"></li>
						<li role="presentation" class="dropdown-header">Other Pages</li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="blog-details.html">Blog Details</a></li>
						<li><a href="category.html">Category</a></li>
						<li><a href="category-2.html">Category II</a></li>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a href="detail.html">Detail</a></li>
						<li><a href="detail2.html">Detail II</a></li>
						<li><a href="shopping-cart.html">Shopping Cart Summary</a></li>

					</ul>
				</li>
			</ul>
			<h4>Header Styles</h4>
			<ul class="list-unstyled">
				<li><a href="home.html">Header 1</a></li>
				<li><a href="homepage1.html">Header 2</a></li>
				<li><a href="home-furniture.html">Header 3</a></li>
			</ul>
			<h4>Layouts</h4>
			<ul class="list-unstyled">
				<li><a href="homepage1.html">Full Width</a></li>
				<li><a href="homepage2.html">Boxed</a></li>
			</ul>
			<h4>Colors</h4>
			<ul>
				<li><a class="changecolor green-text" href="#"
					title="Green color">Green</a></li>
				<li><a class="changecolor blue-text" href="#"
					title="Blue color">Blue</a></li>
				<li><a class="changecolor red-text" href="#" title="Red color">Red</a></li>
				<li><a class="changecolor orange-text" href="#"
					title="Orange color">Orange</a></li>
				<li><a class="changecolor dark-green-text" href="#"
					title="Darkgreen color">Dark Green</a></li>
			</ul>
		</div>
		<a class="show-theme-options" href="#"><i class="fa fa-wrench"></i></a>
	</div>
	<!-- For demo purposes – can be removed on production : End -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<script src="assets/js/compare.js"></script>
	<script src="assets/js/jquery-1.11.1.min.js"></script>

	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
	<script src="assets/js/jquery.rateit.min.js"></script>
	<script type="text/javascript" src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>
	<script src="assets/js/dropdown.js"></script>

	<!-- For demo purposes – can be removed on production -->

	<script src="switchstylesheet/switchstylesheet.js"></script>

	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->
	<script type="text/javascript">

	function changeButtonState(id){
		
		var cmpBtn = document.getElementById(id);
		if ( cmpBtn == null ) return;
		if (cmpBtn.classList.contains("activated"))
		{
			cmpBtn.classList.remove("activated");
		}else
		{
			cmpBtn.classList.add("activated");
		}
	}	
	
	
	
	
	
	
var requete;

function ajouterFavori(idp , idm) {
if(idm!='')
	{
	changeButtonState("f"+idp) ;
var url = "favori?idp=" + idp + "&idm=" + idm ;
if (window.XMLHttpRequest) {
requete = new XMLHttpRequest();
} else if (window.ActiveXObject) {
requete = new ActiveXObject("Microsoft.XMLHTTP");
}
requete.open("GET", url, true);
requete.onreadystatechange = majIHM ;
requete.send(null);
	}
else
	alert("vous n'êtes pas encore connecté") ;
}





function majIHM() {
	var message = "";
	if (requete.readyState == 4) {
	if (requete.status == 200) {
	// exploitation des données de la réponse
	var messageTag = requete.responseXML.getElementsByTagName("message")[0];
	message = messageTag.childNodes[0].nodeValue;
	mdiv = document.getElementById("xxx");
	if (message == "invalide") {
	mdiv.innerHTML = "non valide";
	} else {
	mdiv.innerHTML = "salut tout le monde";
	}
	}
	}
}
</script>

	<c:forEach var="product" items="${listFavoris}">
		<script>
				changeButtonState('f'+${product.id});
			</script>
	</c:forEach>
	
	<c:forEach var="product" items="${productstocompare}">
		<script>
				changeButtonState(${product.id});
			</script>
	</c:forEach>

</body>
</html>