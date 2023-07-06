{{ template "layouts/layout.tpl" . }}

{{ define "title" }} Blog {{ end }}

{{ define "contents" }}
<div class="detail-wrapper">
	<div class="container">
       	<div class="row padd-90">
       		{{ with .error }}<h3 style="color:#E52F08;">{{.}}</h3><br><br>{{ end }}
       		{{with .blog}}
       		<div class="col-xs-12 col-md-8">
       			<div class="detail-header style-2">
       				<h2 class="detail-title color-dark-2">{{.Title}}</h2>
					<div class="tour-info-line clearfix">
						<div class="tour-info fl">
				  	 		<img src="/img/calendar_icon_grey.png" alt="">
				  	 		<span class="font-style-2 color-dark-2">{{.Date}}</span>
				  	 	</div>
						<div class="tour-info fl">
				  	 		<img src="/img/people_icon_grey.png" alt="">
				  	 		<span class="font-style-2 color-dark-2">By {{.Author}}</span>
				  	 	</div>
						<div class="tour-info fl">
				  	 		<img src="/img/comment_icon_grey.png" alt="">
				  	 		<span class="font-style-2 color-dark-2">10 comments</span>
				  	 	</div>						
					</div>       				
       			</div>
       			<div class="detail-content">
       				<div class="detail-content-block">
						<div class="embed-responsive embed-responsive-16by9">
							<img src="{{.Image}}" alt="">
						</div> 					
						
						{{str2html  .Body}}

						<hr>
						<div class="tags clearfix">
							<div class="tags-title color-dark-2">tag:</div>
							<ul class="clearfix">
							
	 							<li><a class="c-button b-30 b-1 bg-grey-2 hv-dr-blue-2" href="#">{{.Tag}}</a></li>						
								
	 						</ul>						
						</div> 
						<div class="share clearfix">
							<div class="share-title color-dark-2">share:</div>
							<ul>
		    			      	<li class="color-fb"><a href=""><i class="fa fa-facebook"></i>facebook<span class="color-fb-2">12</span></a></li>
		    			      	<li class="color-tw"><a href=""><i class="fa fa-twitter"></i>twitter<span class="color-tw-2">27</span></a></li>
		    			      	<li class="color-gg"><a href=""><i class="fa fa-google-plus"></i>google +<span class="color-gg-2">51</span></a></li>
		    			      	<li class="color-pin"><a href=""><i class="fa fa-pinterest"></i>pinterest<span class="color-pin-2">70</span></a></li>
	    			      	</ul>						
						</div>
					</div> 					     			
				</div>			       			
       		</div>
       		{{ end }}
       		
       		{{ if .blog }}
       		<div class="col-xs-12 col-md-4">
       			<div class="right-sidebar">
       				<div class="sidebar-block type-2">
       					<div class="widget-search clearfix">
	       					<form>
	       						<div class="input-style-1 b-50 brd-0 type-2 color-3">
									<input type="text" placeholder="Enter what you want to find">
								</div>
								<input class="widget-submit" type="submit" value="">
	       					</form>
       					</div>
       				</div>
					<div class="sidebar-block type-2">
						<h4 class="sidebar-title color-dark-2">categories</h4>
						{{ with .categories }}
						<ul class="sidebar-category color-5">
							<li>
								<a href="#">all <span class="fr">(14)</span></a>				
							</li>
							{{ range $k, $v:= . }}
							<li>
								<a href="#">{{$k}}<span class="fr">{{$v}}</span></a>	
							</li>							
							{{ end }}	
						</ul>
						{{ end }}
					</div> 
					<div class="sidebar-block type-2">
						<h4 class="sidebar-title color-dark-2">popular posts</h4>
						<div class="widget-popular">
							{{$blog1 := getBlog "cook-your-own-meals"}}
							{{if $blog1}}
							<div class="hotel-small style-2 clearfix">
								<a class="hotel-img black-hover" href="/blog/{{$blog1.Slug}}">
									<img class="img-responsive radius-0" src="{{$blog1.Image}}" alt="">
									<div class="tour-layer delay-1"></div>		
								</a>
								<div class="hotel-desc">
									<div class="tour-info-line">
										<div class="tour-info">
								  	 		<img src="/img/calendar_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">{{$blog1.Date}}</span>
								  	 	</div>
										<div class="tour-info">
								  	 		<img src="/img/people_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">{{$blog1.Author}}</span>
								  	 	</div>					
									</div>
			    					<h4>{{$blog1.Title}}</h4>
									<div class="tour-info-line clearfix">
										<div class="tour-info">
								  	 		<img src="/img/comment_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">10 comments</span>
								  	 	</div>						
									</div>			    					
								</div>
							</div>
							{{end}}
							{{$blog2 := getBlog "dns-records-simplified"}}
							{{if $blog2}}
							<div class="hotel-small style-2 clearfix">
								<a class="hotel-img black-hover" href="/blog/{{$blog2.Slug}}">
									<img class="img-responsive radius-0" src="{{$blog2.Image}}" alt="">
									<div class="tour-layer delay-1"></div>        						
								</a>
								<div class="hotel-desc">
									<div class="tour-info-line">
										<div class="tour-info">
								  	 		<img src="/img/calendar_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">{{$blog2.Date}}</span>
								  	 	</div>
										<div class="tour-info">
								  	 		<img src="/img/people_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">{{$blog2.Author}}</span>
								  	 	</div>					
									</div>
			    					<h4>{{$blog2.Title}}</h4>
									<div class="tour-info-line clearfix">
										<div class="tour-info">
								  	 		<img src="/img/comment_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">10 comments</span>
								  	 	</div>						
									</div>			    					
								</div>
							</div>
							{{end}}
							{{$blog3 := getBlog "top-travel-essentials"}}
							{{if $blog3}}
							<div class="hotel-small style-2 clearfix">
								<a class="hotel-img black-hover" href="/blog/{{$blog3.Slug}}">
									<img class="img-responsive radius-0" src="{{$blog3.Image}}" alt="">
									<div class="tour-layer delay-1"></div>		
								</a>
								<div class="hotel-desc">
									<div class="tour-info-line">
										<div class="tour-info">
								  	 		<img src="/img/calendar_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">{{$blog3.Date}}</span>
								  	 	</div>
										<div class="tour-info">
								  	 		<img src="/img/people_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">{{$blog3.Author}}</span>
								  	 	</div>					
									</div>
			    					<h4>{{$blog3.Title}}</h4>
									<div class="tour-info-line clearfix">
										<div class="tour-info">
								  	 		<img src="/img/comment_icon_grey.png" alt="">
								  	 		<span class="font-style-2 color-dark-2">10 comments</span>
								  	 	</div>						
									</div>			    					
								</div>
							</div>		
							{{end}}													
						</div>
					</div>
					<div class="sidebar-block type-2">
						<h4 class="sidebar-title color-dark-2">popular tags</h4>
						<ul class="widget-tags clearfix">
							{{ range $t,$v := .tags }}
 							<li><a class="c-button b-30 b-1 bg-grey-2 hv-dr-blue-2" href="#">{{$t}}</a></li>
							{{ end }}
 						</ul>
					</div>							      				
       			</div>       			
       		</div>
       		{{ end }}
       	</div>
	</div>
</div>
{{ end }}