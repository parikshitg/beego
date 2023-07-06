{{ template "layouts/layout.tpl" . }}

{{ define "title" }} Contact {{ end }}

{{ define "contents" }}
<div class="detail-wrapper">
<!-- CONTACT-FORM -->
<div class="main-wraper padd-40">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8">
				{{with .error}}<p>{{.}}</p>{{end}}
				{{with .success}}<p>{{.}}</p>{{end}}
				<form class="contact-form" action="/contact" method="POST">
					{{.xsrfdata}}
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<div class="input-style-1 type-2 color-2">
							  	<input type="text" name="name" placeholder="Enter your name" required>
							</div>
						</div>
						<div class="col-xs-12 col-sm-6">
							<div class="input-style-1 type-2 color-2">
							  	<input type="email" name="email" placeholder="Enter your email" required>
							</div>
						</div>
						<div class="col-xs-12">
							<div class="input-style-1 type-2 color-2">
							  	<input type="text" name="subject" placeholder="Enter Subject" required>
							</div>
						</div>
						<div class="col-xs-12">
							<textarea class="area-style-1 color-1" name="message" placeholder="Enter your message"></textarea>
							<button type="submit" class="c-button bg-dr-blue-2 hv-dr-blue-2-o"><span>submit</span></button>
						</div>
					</div>					
				</form>
			</div>
			<div class="col-xs-12 col-sm-4">
				<div class="contact-about">
					<h4 class="color-dark-2"><strong>contact info</strong></h4>
					<p class="color-grey-3">Donec gravida euismod felis, quis dictum justo scelerisque in. Aenean nec lacus ipsum. Suspendisse vel lobortis libero, eu imperdiet purus.  Aenean nec lacus ipsum.</p>					
				</div>
				<div class="contact-info">
					<h4 class="color-dark-2"><strong>contact info</strong></h4>
					<div class="contact-line color-grey-3"><img src="img/phone_icon_2_dark.png" alt="">Phone: <a class="color-dark-2" href="/contact">+91 123 456 789</a></div>					
					<div class="contact-line color-grey-3"><img src="img/mail_icon_b_dark.png" alt="">Email us: <a class="color-dark-2 tt" href="#">let’s_beego@beego.com</a></div>					
					<div class="contact-line color-grey-3"><img src="img/loc_icon_dark.png" alt="">Address: <span class="color-dark-2 tt">Aenean vulputate porttitor</span></div>
				</div>
				<div class="contact-socail">
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-facebook"></i></a>
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-twitter"></i></a>
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-skype"></i></a>
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-google-plus"></i></a>
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-pinterest-p"></i></a>
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-instagram"></i></a>
					<a class="color-grey-3 link-dr-blue-2" href="#"><i class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>

</div>
{{ end }}
