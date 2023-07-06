{{ template "layouts/layout.tpl" . }}

{{ define "title" }} BlogList {{ end }}

{{ define "contents" }}
<div class="main-wraper padd-120">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2">
				<div class="second-title">

				</div>
			</div>
		</div>
		<div class="blog-grid row">
			{{ range $blog := .blogs}}
			<div class="blog-grid-entry col-mob-12 col-xs-12 col-sm-6 col-md-4">
				<div class="s_news-entry style-2">
					<a href="/blog/{{$blog.Slug}}"><img class="s_news-img img-responsive" src="{{$blog.Image}}" alt=""></a>
					<h4 class="s_news-title"><a href="/blog/{{$blog.Slug}}">{{$blog.Title}}</a></h4>
					<div class="tour-info-line clearfix">
						<div class="tour-info fl">
				  	 		<img src="img/calendar_icon_grey.png" alt="">
				  	 		<span class="font-style-2 color-dark-2">{{$blog.Date}}</span>
				  	 	</div>
						<div class="tour-info fl">
				  	 		<img src="img/people_icon_grey.png" alt="">
				  	 		<span class="font-style-2 color-dark-2">By {{$blog.Author}}</span>
				  	 	</div>
						<div class="tour-info fl">
				  	 		<img src="img/comment_icon_grey.png" alt="">
				  	 		<span class="font-style-2 color-dark-2">10 comments</span>
				  	 	</div>						
					</div>
					<div class="s_news-text color-grey-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
					<a href="/blog/{{$blog.Slug}}" class="c-button small bg-dr-blue-2 hv-dr-blue-2-o"><span>view more</span></a>	  	 	
				</div>				
			</div>			
			{{ end }}											
		</div>
		<div class="c_pagination clearfix">
			<a href="#" class="c-button b-40 bg-dr-blue-2 hv-dr-blue-2-o fl">prev page</a>
			<a href="#" class="c-button b-40 bg-dr-blue-2 hv-dr-blue-2-o fr">next page</a>
			<ul class="cp_content color-3">
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">...</a></li>
				<li><a href="#">10</a></li>
			</ul>
		</div>		
	</div>
</div> 

{{ end }}