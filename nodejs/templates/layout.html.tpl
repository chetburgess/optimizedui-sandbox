<!DOCTYPE html>
<html lang="id" xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8" />
	<title><%- pageTitle %> | Optimized UI for Node.js</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Soluvas Starter Web Application" />
	<meta name="author" content="Soluvas" />

	<!-- Le styles -->

	<link href="<%- staticUri %>bootstrap/css/bootstrap.css" rel="stylesheet" />
	<link href="<%- staticUri %>bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

	<!-- Le fav and touch icons -->
	<link rel="shortcut icon" href="<%- baseUri %>favicon.ico" />

	<link rel="apple-touch-icon-precomposed" sizes="114x114"
		href="<%- staticUri %>images/ico/apple-touch-icon-114-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" sizes="72x72"
		href="<%- staticUri %>images/ico/apple-touch-icon-72-precomposed.png" />
	<link rel="apple-touch-icon-precomposed" href="<%- staticUri %>images/ico/apple-touch-icon-57-precomposed.png" />

	<link rel="stylesheet" href="<%- staticUri %>jquery-ui/css/ui-lightness/jquery-ui-1.8.20.custom.css"/>
	<link rel="stylesheet" href="<%- staticUri %>jquery-notify/ui.notify.css"/>

	<script type="text/javascript" src="<%- staticUri %>jquery-ui/development-bundle/jquery-1.7.2.js"></script>
	<script type="text/javascript" src="<%- jsUri %>underscore.js"></script>
	<script type="text/javascript" src="<%- jsUri %>backbone.js"></script>
	<script type="text/javascript" src="<%- jsUri %>sockjs-0.3.min.js"></script>
	<script type="text/javascript" src="<%- jsUri %>stomp.js"></script>
	<script type="text/javascript" src="<%- staticUri %>jquery-ui/development-bundle/ui/jquery-ui-1.8.20.custom.js"></script>
	<script type="text/javascript" src="<%- staticUri %>jquery-notify/jquery.notify.js"></script>

	<!-- Pass server-side variables to client-side script -->
	<script type="text/javascript">
	var baseUri = '<%- baseUri %>';
	var apiUri = baseUri + 'api/';
	</script>

</head>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">

				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span></a>

				<a class="brand" href="<%- baseUri %>">Fashion Store</a>

				<!--<a class="brand" href="#">Berbatik</a>-->
				<div class="nav-collapse">

					<ul class="nav">
						<li><p class="navbar-text"><span id="notification-count">0</span> &nbsp;</p></li>
						<li class="active"><h:link outcome="pretty:home" value="Home" /></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>

					<p class="navbar-text pull-right">
						<h:link outcome="pretty:login" value="Login" />
					</p>

				</div>
				<!--/.nav-collapse -->

			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="span3">
				<div class="well sidebar-nav">

					<ui:insert name="contentSecondary">
					</ui:insert>

				</div>
				<!--/.well -->
			</div>
			<!--/span-->

			<div class="span9">
				<ui:insert name="contentPrimary">
				</ui:insert>

			</div>
			<!--/row-->
		</div>
		<hr />
		<footer><small style="color: #808080;">&copy; <a href="http://www.soluvas.com/">Soluvas</a> 2012</small></footer>
	</div>

	<p:growl id="growl" />

	<!--/.fluid-container-->

	<!-- set the container hidden to avoid a flash of unstyled content
	when the page first loads -->
	<div id="growl-container" style="display:none; margin-top: 60px">

	    <!--
	    Later on, you can choose which template to use by referring to the
	    ID assigned to each template.  Alternatively, you could refer
	    to each template by index, so in this example, "basic-tempate" is
	    index 0 and "advanced-template" is index 1.
	    -->
	    <div id="basic-template">
	        <a class="ui-notify-cross ui-notify-close" href="#">x</a>
	        <p><h:outputText value="#"/>{text}</p>
	    </div>

	</div>

	<!-- Le javascript
    ================================================== -->

	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-transition.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-alert.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-modal.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-dropdown.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-scrollspy.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-tab.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-tooltip.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-popover.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-button.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-collapse.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-carousel.js"></script>
	<script type="text/javascript" src="<%- staticUri %>bootstrap/js/bootstrap-typeahead.js"></script>

<script type="text/javascript">
jQuery('#growl-container').notify();
</script>
</body>
</html>
