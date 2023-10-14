<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Education System</title>
</head>
<body>
<div id="loginPage" class="h-100" v-cloak>
<div class="container h-100">
	<div class="row justify-content-center align-items-center h-100">
		<div class="col-10">
			<div class="outer-box">
				<div class="container h-100">
					<div class="row align-items-center h-100">
						<div class="col-6 back-panel" id="back-panel-left">
							<p style="font-size: 18px">You are attempting to log into the Compass College Portal as an admin.</p>
							<h3>Not an Admin? </h3>
							<button class="btn btn-primary" id="toggle-panel-left" @click="slideInnerBox('Student')">Login as student &#8592</button>
						</div>
						<div class="col-6 back-panel" id="back-panel-right">
							<p style="font-size: 18px">You are attempting to log into the Compass College Portal as a Student.</p>
							<h3>Not a Student?</h3>
							<button class="btn btn-primary" id="toggle-panel-right" @click="slideInnerBox('Admin')">&#8594 Login as admin</button>
						</div>
					</div>
                </div>
                
				
				<div class="inner-box v" v-bind:class="{ 'left-panel': onLeft && !mobile, 'right-panel push-pull': onRight && !mobile, 'flip' : signupActive && onLeft }">
					<div class="front-card">
						<h1 class="header-text">{{ title }} Login</h1>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-10">
									<form class="sign-in-form" method="POST" action="">
                                        

                                        <input id="email" type="email" class="form-control sign-in-input" name="email" value="" required autofocus placeholder="Email Address">


										<input id="password" type="password" class="form-control sign-in-input" name="password" required placeholder="Password">

                                        <button type="submit" class="btn btn-success">Log me in!</button>
									</form>
								</div>
							</div>
							<div class="row justify-content-center options">
								<div class="col-sm-12 col-5 text-center">
                                    <p class="option-link"><a href="/password/reset" class="option-link">Forgot password?</a></p>
                                </div>
                                <div class="col-sm-12 col-5 text-center">
									<p class="option-link" v-show="onLeft" @click="createAccount()">Don't have an account?</p>
								</div>
							</div>
						</div>
					</div>
				

					<div class="back-card">
						<h1 class="header-text">Signing up?</h1>
						<div class="container">
							<div class="row justify-content-center">
								<div class="col-10">
									<form class="sign-in-form" action="{{ route('register') }}">
                                        

                                        <div class="form-group">
                    
                                                <div class="col">
                                                    <input id="name" type="text" class="form-control sign-in-input" name="name" value="" required autofocus placeholder="Name">
                    
                                                </div>
                                            </div>
                    
                                            <div class="form-group">

                    
                                                <div class="col">
                                                    <input id="email" type="email" class="form-control sign-in-input" name="email" value="" required placeholder="Email Address">

                                                </div>
                                            </div>
                    
                                            <div class="form-group">
                    
                                                <div class="col">
                                                    <input id="password" type="password" class="form-control sign-in-input" name="password" required placeholder="Password">

                                                </div>
                                            </div>
                    
                                            <div class="form-group">
                    
                                                <div class="col">
                                                    <input id="password-confirm" type="password" class="form-control sign-in-input" name="password_confirmation" required placeholder="Confirm Password">
                                                </div>
                                            </div>
                    
                                            <div class="form-group">
                                                <div class="col">
                                                    <button type="submit" class="btn btn-primary">
                                                        Register
                                                    </button>
                                                </div>
                                            </div>
                                    </form>
								</div>
							</div>
                        </div>
                        <div class="row">
                            <div class="col-6 offset-6 text-center">
                                <p class="option-link right align-bottom" v-show="onLeft && signupActive" @click="signIn()">Wait, I have an account...</p>
                            </div>
                        </div>
					</div>
                </div>
                <div class="container mobile-admin-toggle">
                    <div class="row">
                        <div v-if="onLeft" class="col" @click="changeMobileTitle('Admin')"><p>Not a Student? Login as an Admin &#8594</p></div>
                        <div v-else class="col" @click="changeMobileTitle('Student')"><p>Not an Admin? Login as an Student &#8594</p></div>
                    </div>
                </div>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>

<style> 
@import url(https://fonts.googleapis.com/css?family=Raleway)

$card-border-radius: 4px

$s-width: 640px
$m-width: 960px
$l-width: 1200px
$xl-width: 1600px

@mixin s-size 
	@media (max-width: $s-width)
		@content

@mixin m-size 
	@media (max-width: $m-width)
		@content

@mixin l-size 
	@media (max-width: $l-width)
		@content

@mixin xl-size 
	@media (max-width: $xl-width)
		@content

[v-cloak] *
	display: none
	
body
	font-family: 'Raleway'
	height: 100%
	position: absolute
	top: 0
	bottom: 0
	left: 0
	right: 0
	background-position: center
	background-repeat: no-repeat
	background-size: cover

#loginPage 
	background-color: #3BC2FA

.outer-box
	background-color: #414042
	border-radius: $card-border-radius
	height: 400px
	position: relative
	box-shadow: 0px 10px 50px 0px rgba(33, 33, 33, 0.65)
	@include m-size
		background-color: rgba(255, 255, 255, 0)

.inner-box
	background-color: #fff
	border-radius: $card-border-radius
	height: 450px
	width: 50%
	position: absolute
	top: -25px
	transition: all 700ms ease
	backface-visibility: hidden
	border-bottom: 3px solid #414042
	@include m-size
		width: 100%
		border-radius: $card-border-radius $card-border-radius 0px 0px
		border-color: #71B4CC

.front-card, .back-card
	backface-visibility: hidden
	position: absolute
	width: 100%
	height: inherit
	transition: all 0.5s ease-in

.inner-box.v.flip .front-card
	transform: rotateX(180deg)

.inner-box.v.flip .back-card
	transform: rotateX(0deg)

.inner-box.v .back-card
	transform: rotateX(-180deg)

.left-panel
	left: 35px
	box-shadow: -4px 5px 10px rgba(132, 132, 132, 0.15)
	@include m-size
		left: 0

.right-panel
	left: -35px
	box-shadow: 4px 5px 10px rgba(132, 132, 132, 0.15)
	@include m-size
		right: 0
	
.back-panel
	color: #fff
	text-align: center
	padding: 0 50px
	display: block
	@include m-size
		display: none
	
.sign-in-form
	color: #414042
	margin-top: 20px

.sign-in-input
	color: #757575
	transition: all 500ms ease
	font-size: 19px
	display: inline
	border: none
	border-radius: 0
	border-bottom: 1px solid #757575
	margin-bottom: 1.5em
	width: 100%

.form-group
	margin-bottom: 0
	
.options
	padding-top: 20px
	
.push-pull
	transform: translateX(100%)

.header-text
	color: #6fb4cd
	text-align: center
	margin-top: 20px

.btn-primary
	background-color: #6fb4cd
	border-color: #6fb4cd
	&:hover
		background-color: #0d85b1

.option-link
	transition: all 500ms ease
	color: #757575
	display: inline-block
	text-align: center
	&:hover
		color: #6fb4cd
		text-decoration: none
		cursor: pointer

.mobile-admin-toggle
	background-color: #62696B
	border-radius: 0px 0px $card-border-radius $card-border-radius
	position: absolute
	bottom: -60px
	color: #fff
	text-align: right
	height: 35px
	display: none
	p
		display: inline-block
		&:hover
			color: #B2D6E4
			cursor: pointer
	@include m-size
		display: block

</style>

<script>
var app = new Vue({
    el: '#loginPage',
    data: {
        title: 'Student',
        onLeft: true,
        onRight: false,
        signupActive: false,
        mobile: false,
    },
    methods: {
        slideInnerBox: function(title) {
            this.mobile = false;
            this.title = title;
            this.onLeft = !this.onLeft;
            this.onRight = !this.onRight;
            this.signupActive = false;
        },
        createAccount: function() {
            this.signupActive = true;
        },
        signIn: function() {
            this.signupActive = false;
        },
        changeMobileTitle: function (title) {
            this.mobile = true;
            this.title = title;
            this.onLeft = !this.onLeft;
            this.onRight = !this.onRight;
            this.signupActive = false;
        }
    }
});
</script>