<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <script src="catalog/view/theme/cf-opencart/dist/scripts/modernizr.js" type="text/javascript"></script>
  <script src="catalog/view/theme/cf-opencart/dist/scripts/jquery.js" type="text/javascript"></script>
  <script src="catalog/view/theme/cf-opencart/dist/scripts/main.js" type="text/javascript"></script>
  <link href="catalog/view/theme/cf-opencart/dist/styles/main.css" rel="stylesheet" type="text/css" media="screen, projection" />
  <link href="catalog/view/theme/cf-opencart/dist/styles/font-awesome.css" rel="stylesheet" type="text/css" />
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
  <?php echo $analytic; ?>
  <?php } ?>
	<script src="https://use.typekit.net/zyb2kaf.js"></script>
	<script>try{Typekit.load({ async: true });}catch(e){}</script>
</head>
<body class="<?php echo $class; ?>">
<nav id="top" class="visible-xs">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4 col-md-3">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5 col-md-4 col-md-offset-1 text-center">
				<p>
					<i class="fa fa-phone"></i> Give us a call: <b>01305 2634444</b>
				</p>
				<?php echo $search; ?>
      </div>
      <div class="col-sm-3 col-md-offset-1 text-center">
				<ul class="list-inline">
					<li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
         	<li><i class="fa fa-user"></i> <a href="<?php echo $register; ?>"><?php echo $text_register; ?></a> / <a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
				</ul>
				<?php echo $cart; ?>
			</div>
    </div>
  </div>
	<?php if ($categories) { ?>
	<div class="nav-wrapper">
		<nav id="menu" class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
					<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
				</div>
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav">
						<?php foreach ($categories as $category) { ?>
						<?php if ($category['children']) { ?>
						<li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
							<div class="dropdown-menu">
								<div class="dropdown-inner">
									<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
									<ul class="list-unstyled">
										<?php foreach ($children as $child) { ?>
										<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
										<?php } ?>
									</ul>
									<?php } ?>
								</div>
								<a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
						</li>
						<?php } else { ?>
						<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
						<?php } ?>
						<?php } ?>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<?php } ?>
</header>