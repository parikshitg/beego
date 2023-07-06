<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		       
		<link rel="shortcut icon" href="favicon.ico"/> 
		<link href="/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="/css/jquery-ui.structure.min.css" rel="stylesheet" type="text/css"/>
		<link href="/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">        
		<link href="/css/style.css" rel="stylesheet" type="text/css"/>     
		<title>Let's Beego</title>
	</head>
<body data-color="theme-1">
	 
<div class="loading dr-blue-2">
	<div class="loading-center">
		<div class="loading-center-absolute">
			<div class="object object_four"></div>
			<div class="object object_three"></div>
			<div class="object object_two"></div>
			<div class="object object_one"></div>
		</div>
	</div>
</div>
  
{{ template "partials/header.tpl" . }}

{{ template "partials/pagetitle.tpl" . }}

{{ block "contents" . }} {{ end }}

{{ template "partials/footer.tpl" }}

<script src="/js/jquery-2.1.4.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery-ui.min.js"></script>
<!-- <script src="/js/idangerous.swiper.min.js"></script> -->
<!-- <script src="/js/jquery.viewportchecker.min.js"></script> -->
<!-- <script src="/js/isotope.pkgd.min.js"></script> -->
<!-- <script src="/js/jquery.circliful.min.js"></script> -->
<!-- <script src="/js/jquery.countTo.js"></script> -->
<!-- <script src="/js/jquery.mousewheel.min.js"></script>	 -->
<script src="/js/all.js"></script>
</body>
</html>				   