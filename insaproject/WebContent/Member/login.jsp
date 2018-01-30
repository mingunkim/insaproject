<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0'/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<script src='http://code.jquery.com/jquery-3.2.1.min.js'></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script><!-- 부트스트랩 js중첩되면 드랍안먹음 -->
<title>login</title>
<style>
/* GENERAL RESETS */
* {
    margin: 0;
    padding: 0;
}
html {
  box-sizing: border-box;
}
*, *:before, *:after {
  margin: 0;
  padding: 0;
  box-sizing: inherit;
}
a {
    color: #666;
    text-decoration: none;
}
a:hover {
    color: #4FDA8C;
}

/* BODY */
body {
    position: relative;
    color: #666;
    font: 16px/26px "Raleway", sans-serif;
    text-align: center;
    height: 100%;
    background: -moz-linear-gradient(270deg, rgba(34,46,64,1) 0%, rgba(81,195,184,1) 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(34,46,64,1)), color-stop(100%, rgba(81,195,184,1)));
    background: -webkit-linear-gradient(270deg, rgba(34,46,64,1) 0%, rgba(81,195,184,1) 100%);
    background: linear-gradient(180deg, rgba(34,46,64,1) 0%, rgba(81,195,184,1) 100%);
    overflow:hidden;
}

/* BUTTON */
a.button {
    position: absolute;
    left: 20px;
    top: 20px;
    height: auto;
    padding: .8rem 1.0rem;
    font-size: .8rem;
    line-height: normal;
    text-transform: uppercase;
    font-family: 'Proxima Nova', sans-serif;
    font-weight: 700;
    letter-spacing: 0;
    border-radius: 0;
    border: 1px solid #2D515C;
    text-decoration: none;
    color: #fff;
    background-color: transparent;
    -webkit-transition: all .2s ease-in-out;
    -moz-transition: all .2s ease-in-out;
    -o-transition: all .2s ease-in-out;
    transition: all .2s ease-in-out;
}
a.button:hover {
    border-color: #2D515C;
    color: #fff;
    padding: 1.0rem 3.2rem;
}
@media only screen and (min-width: 22em) {
    a.button {
        padding: 1.0rem 2.8rem;
        font-size: 1.0rem;
    }
}

/* LOGIN */
.login {
    margin: 0;
    width: 100%;
    height: 100%;
    min-height: 100vh;
}

/* WRAP */
.wrap {
    position: static;
    margin: auto;
    width: 100%;
    height: auto;
    overflow: hidden;
}
.wrap:after {
  content: "";
  display: table;
  clear: both;
}

/* LOGO */
.logo {
    position: absolute;
    z-index: 2;
    top: 0;
    left: 0;
    width: 40px;
    height: 40px;
    background: #4FC1B7;
}
.logo img {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 30px;
}
.logo a {
    width: 100%;
    height: 100%;
    display: block;
}

/* USER (FORM WRAPPER) */
.user {
    position: relative;
    z-index: 0;
    float: none;
    margin: 0 auto;
    padding-top: 40px;
    width: 100%;
    height: 100vh;
    overflow: auto;
    background: -moz-linear-gradient(48deg, rgba(42,46,54,1) 0%, rgba(97,107,125,1) 100%);
    background: -webkit-gradient(linear, left bottom, right top, color-stop(0%, rgba(42,46,54,1)), color-stop(100%, rgba(97,107,125,1)));
    background: -webkit-linear-gradient(48deg, rgba(42,46,54,1) 0%, rgba(97,107,125,1) 100%);
    background: linear-gradient(42deg, rgba(42,46,54,1) 0%, rgba(97,107,125,1) 100%);
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    border-radius: 0;
    border-top: 1px solid #4FC1B7;
}
.user .actions {
    margin: 1em 0 0;
    padding-right: 10px;
    width: 100%;
    display: block;
    text-align: center;
}
.user .actions a {
    margin: 1em 0;
    width: 90px;
    display: inline-block;
    padding: .2em 0em;
    background-color: #5C6576;
    border: none;
    color: #999;
    cursor: pointer;
    text-align: center;
    font-size: .8em;
    border-radius: 30px 0 0 30px;
    -webkit-box-shadow: 0px 0px 27px -9px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 0px 27px -9px rgba(0,0,0,0.75);
    box-shadow: 0px 0px 27px -9px rgba(0,0,0,0.75);
}
.user .actions a:last-child {
    color: #fff;
    border-radius: 0 30px 30px 0;
    background-color: #28A55F;
    background: -moz-linear-gradient(270deg, rgba(105,221,201,1) 0%, rgba(78,193,182,1) 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(105,221,201,1)), color-stop(100%, rgba(78,193,182,1)));
    background: -webkit-linear-gradient(270deg, rgba(105,221,201,1) 0%, rgba(78,193,182,1) 100%);
    background: linear-gradient(180deg, rgba(105,221,201,1) 0%, rgba(78,193,182,1) 100%);
}

/* TERMS */
@keyframes show_terms {
    0% {
        opacity: 0;
        -webkit-transform: translateY(-110%);
        -moz-transform: translateY(-110%);
        -o-transform: translateY(-110%);
        transform: translateY(-110%);
    }
    100% {
        opacity: 1;
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
    }
}
@keyframes hide_terms {
    0% {
        -webkit-transform: translateY(0);
        -moz-transform: translateY(0);
        -o-transform: translateY(0);
        transform: translateY(0);
        opacity: 1;
    }
    100% {
        -webkit-transform: translateY(-110%);
        -moz-transform: translateY(-110%);
        -o-transform: translateY(-110%);
        transform: translateY(-110%);
        opacity: 0;
    }
}
.terms, .recovery {
    position: absolute;
    z-index: 3;
    margin: 40px 0 0;
    padding: 1.5em 1em;
    width: 100%;
    height: calc(100% - 40px);
    border-radius: 0;
    background: #fff;
    text-align: left;
    overflow: auto;
    will-change: transform;
    -webkit-transform: translateY(-110%);
    -moz-transform: translateY(-110%);
    -o-transform: translateY(-110%);
    transform: translateY(-110%);
    opacity: 0;
    border-radius: 0;
}
.terms.open, .recovery.open {
    -webkit-transform: translateY(0);
    -moz-transform: translateY(0);
    -o-transform: translateY(0);
    transform: translateY(0);
    animation: show_terms .5s .2s 1 ease normal forwards;
}
.terms.closed, .recovery.closed {
    -webkit-transform: translateY(0);
    -moz-transform: translateY(0);
    -o-transform: translateY(0);
    transform: translateY(0);
    opacity: 1;
    animation: hide_terms .6s .2s 1 ease normal forwards;
}
.terms p, .recovery p {
    margin: 1em 0;
    font-size: .9em;

}
.terms h3, .recovery h3 {
    margin: 2em 0 .2em;
}
.terms p.small {
    margin: 0 0 1.5em;
    font-size: .8em;
}

.recovery form .input {
    margin: 0 0 .8em 0;
    padding: .8em 2em 10px 0;
    width: 100%;
    display: inline-block;
    background: transparent;
    border: 0;
    border-bottom: 1px solid #5A6374;
    outline: 0;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    color: inherit;
    font-family: inherit;
    color: #666;
}
.recovery form .button {
    margin: 1em 0;
    padding: .2em 3em;
    width: auto;
    display: block;
    background-color: #28A55F;
    border: none;
    color: #fff;
    cursor: pointer;
    font-size: .8em;
    border-radius: 0px;
    background: rgba(62,181,169,1) 0%;
}
.form-wrap form .button:hover {
    background-color: #4FDA8C;
}
.recovery p.mssg {
    opacity: 0;
    -webkit-transition: opacity 1s .5s ease;
    -moz-transition: opacity 1s .5s ease;
    -o-transition: opacity 1s .5s ease;
    transition: opacity 1s .5s ease;
}
.recovery p.mssg.animate {
    opacity: 1;
}

/* CONTENT */
.content {
    position: fixed;
    z-index: 1;
    float: none;
    margin: 0 auto;
    width: 100%;
    height: 40px;
    background: -moz-linear-gradient(90deg, rgba(62,181,169,1) 0%, rgba(111,226,204,1) 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(111,226,204,1)), color-stop(100%, rgba(62,181,169,1)));
    background: -webkit-linear-gradient(90deg, rgba(62,181,169,1) 0%, rgba(111,226,204,1) 100%);
    background: linear-gradient(0deg, rgba(62,181,169,1) 0%, rgba(111,226,204,1) 100%);
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
    box-shadow: none;
    overflow: hidden;
}

/* TOGGLE */
#toggle-wrap {
    position: absolute;
    z-index: 4;
    top: 40px;
    right: 17px;
    width: 80px;
    height: 1px;
}
#toggle-terms span {
  background: #fff;
  border-radius: 0;
}
/* TOGGLE TERMS */
#toggle-terms {
    position: absolute;
    z-index: 4;
    right: 0;
    top: 0;
    width: 40px;
    height: 40px;
    margin: auto;
    display: block;
    cursor: pointer;
    background: rgba(0, 0, 0, 0.1);
    border-radius: 100%;
    opacity: 0;
    -webkit-transform: translate(-6px, 20px);
    -moz-transform: translate(-6px, 20px);
    -o-transform: translate(-6px, 20px);
    transform: translate(-6px, 20px);
}
/* CIRCLE EFFECT */
#toggle-terms:after {
    position: absolute;
	width: 100%;
	height: 100%;
	pointer-events: none;
	border-radius: 50%;
	content: '';
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	box-sizing: content-box;
}
#toggle-terms:before {
	speak: none;
	display: block;
	-webkit-font-smoothing: antialiased;
}
#toggle-terms {
	box-shadow: 0 0 0 0px rgba(0, 0, 0, 0.2);
    -webkit-transition: color 0.3s ease;
    -moz-transition: color 0.3s ease;
    -o-transition: color 0.3s ease;
    transition: color 0.3s ease;
}
#toggle-terms:after {
	top: 0px;
	left: 0px;
	padding: 0;
	z-index: -1;
	background: rgba(0, 0, 0, 0.2);
    -webkit-transition: -webkit-transform 0.2s, opacity 0.3s;
    -moz-transition: -moz-transform 0.2s, opacity 0.3s;
    -o-transition: -o-transform 0.2s, opacity 0.3s;
    transition: transform 0.2s, opacity 0.3s;
}
#toggle-terms.closed {
	color: rgba(0, 0, 0, 0.2);
}
#toggle-terms.closed:after {
	-webkit-transform: scale(1.6);
	-moz-transform: scale(1.6);
	-ms-transform: scale(1.6);
	transform: scale(1.6);
	opacity: 0;
}

/* CLOSE ANIMATION*/
@keyframes show_close {
    0% {
        opacity: 0;
        -webkit-transform: translate(-6px, -100px);
        -moz-transform: translate(-6px, -100px);
        -o-transform: translate(-6px, -100px);
        transform: translate(-6px, -100px);
    }
    100% {
        opacity: 1;
        -webkit-transform: translate(-6px, 20px);
        -moz-transform: translate(-6px, 20px);
        -o-transform: translate(-6px, 20px);
        transform: translate(-6px, 20px);
    }
}
@keyframes hide_close {
    0% {
        opacity: 1;
    }
    100% {
        opacity: 0;
    }
}
#toggle-terms.open {
    animation: show_close .4s .5s 1 ease normal forwards;
}
#toggle-terms.closed {
    animation: hide_close .2s .0s 1 ease normal forwards;
}
#toggle-terms:hover {
    background: rgba(0, 0, 0, 0.4);
}

/* TOGGLE TERMS CROSS */
#toggle-terms #cross {
    position: absolute;
    z-index: 4;
    height: 100%;
    width: 100%;
    -webkit-transform: rotate(0deg);
    -moz-transform: rotate(0deg);
    -o-transform: rotate(0deg);
    transform: rotate(0deg);
}
#toggle-terms.open #cross {
    -webkit-transition-delay: .9s;
    -moz-transition-delay: .9s;
    -o-transition-delay: .9s;
    transition-delay: .9s;
    -webkit-transition-duration: .2s;
    -moz-transition-duration: .2s;
    -o-transition-duration: .2s;
    transition-duration: .2s;
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    transform: rotate(45deg);
}
#toggle-terms.open #cross span {
    position: absolute;
    z-index: 4;
    -webkit-transition-delay: 0s;
    -moz-transition-delay: 0s;
    -o-transition-delay: 0s;
    transition-delay: 0s;
    -webkit-transition-duration: 0s;
    -moz-transition-duration: 0s;
    -o-transition-duration: 0s;
    transition-duration: 0s;
}
#toggle-terms.open #cross span:nth-child(1) {
    top: 15%;
    left: 19px;
    height: 70%;
    width: 1px;
}
#toggle-terms.open #cross span:nth-child(2) {
    left: 15%;
    top: 19px;
    width: 70%;
    height: 1px;
}
#toggle-terms #cross span:nth-child(1) {
    height: 0;
    -webkit-transition-delay: .625s;
    -moz-transition-delay: .625s;
    -o-transition-delay: .625s;
    transition-delay: .625s;
}
#toggle-terms #cross span:nth-child(2) {
    width: 0;
    -webkit-transition-delay: .375s;
    -moz-transition-delay: .375s;
    -o-transition-delay: .375s;
    transition-delay: .375s;
}

/* SLIDESHOW */
#slideshow {
    position: relative;
    margin: 0 auto;
    width: 100%;
    height: 100%;
    padding: 10px;
    border-radius: 10px 0 0 10px;
}
#slideshow h2 {
    margin: .0em auto .0em auto;
    text-align: center;
    font-size: 1.4em;
    color: #fff;
    line-height: .5em;
}
#slideshow p {
  color: #fff;
  display: none;
}
#slideshow div {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    padding: 1em 3em;
    background-repeat: no-repeat;
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
#slideshow .one {
    background-image: url("http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/dots.png");
    background-repeat: no-repeat;
    background-position: 0% 50%;
}
#slideshow .two {
    background-image: url("http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/gears.png");
    background-repeat: no-repeat;
    background-position: 0% 50%;
}
#slideshow .three {
    background-image: url("http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/splat.png");
    background-repeat: no-repeat;
    background-position: 0% 5%;
}
#slideshow .four {
    background-image: url("http://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/ray.png");
    background-repeat: no-repeat;
    background-position: 0% 50%;
}

/* FORM ELEMENTS */
input {
    font: 16px/26px "Raleway", sans-serif;
}
.form-wrap {
    width: 100%;
    margin: 2em auto 0;
}
.form-wrap a {
    color: #ccc;
    padding-bottom: 4px;
    border-bottom: 1px solid #5FD1C1;
}
.form-wrap a:hover {
    color: #fff;
}
.form-wrap .tabs {
    overflow: hidden;
}
.form-wrap .tabs * {
    -webkit-transition: .25s ease-in-out;
    -moz-transition: .25s ease-in-out;
    -o-transition: .25s ease-in-out;
    transition: .25s ease-in-out;
}


.form-wrap .tabs h3 {
    width: 95%;
}
.form-wrap .tabs h3 a {
    padding: 0.5em 0;
    text-align: center;
    font-weight: 400;
    display: block;
    color: #999;
    border: 0;
 }
.form-wrap .tabs h3 a.active {
    color: #ccc;
}
.form-wrap .tabs h3 a.active span {
    padding-bottom: 4px;
    border-bottom: 1px solid #5FD1C1;
}
.form-wrap .tabs-content {
    padding: 1.5em 3em;
    text-align: left;
    width: auto;
}
.help-action {
    padding: .4em 0 0;
    font-size: .93em;
}
.form-wrap .tabs-content div[id$="tab-content"] {
    display: none;
}
.form-wrap .tabs-content .active {
    display: block !important;
}
.form-wrap form .input {
    margin: 0 0 .8em 0;
    padding: .8em 2em 10px 0;
    width: 100%;
    display: inline-block;
    background: transparent;
    border: 0;
    border-bottom: 1px solid #5A6374;
    outline: 0;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    color: inherit;
    font-family: inherit;
    color: #fff;
}
.form-wrap form .button {
    margin: 1em 0;
    padding: .2em 3em;
    width: auto;
    display: block;
    background-color: #28A55F;
    border: none;
    color: #fff;
    cursor: pointer;
    font-size: .8em;
    border-radius: 30px;
    background: -moz-linear-gradient(270deg, rgba(105,221,201,1) 0%, rgba(78,193,182,1) 100%);
    background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, rgba(105,221,201,1)), color-stop(100%, rgba(78,193,182,1)));
    background: -webkit-linear-gradient(270deg, rgba(105,221,201,1) 0%, rgba(78,193,182,1) 100%);
    background: linear-gradient(180deg, rgba(105,221,201,1) 0%, rgba(78,193,182,1) 100%);
    -webkit-box-shadow: 0px 0px 37px -9px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 0px 37px -9px rgba(0,0,0,0.75);
    box-shadow: 0px 0px 37px -9px rgba(0,0,0,0.75);
}
.form-wrap form .button:hover {
    background-color: #4FDA8C;
}
.form-wrap form .checkbox {
    margin: 1em 0;
    padding: 20px;
    visibility: hidden;
    text-align: left;
}
.form-wrap form .checkbox:checked + label:after {
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
}
.form-wrap form label[for] {
    position: relative;
    padding-left: 20px;
    cursor: pointer;
}
.form-wrap form label[for]:before {
    position: absolute;
    width: 17px;
    height: 17px;
    top: 0px;
    left: -14px;
    content: '';
    border: 1px solid #5A6374;
}
.form-wrap form label[for]:after {
    position: absolute;
    top: 1px;
    left: -10px;
    width: 15px;
    height: 8px;
    -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    content: '';
    background-color: transparent;
    border: solid #67DAC6;
    border-width: 0 0 3px 3px;
    -webkit-transform: rotate(-45deg);
    -moz-transform: rotate(-45deg);
    -o-transform: rotate(-45deg);
    transform: rotate(-45deg);
}
.form-wrap .help-text {
    margin-top: .6em;
}
.form-wrap .help-text p {
    text-align: left;
    font-size: 14px;
}
.fa {
    display: none;
}
/* MEDIUM VIEWPORT */
@media only screen and (min-width: 40em) {
    /* GLOBAL TRANSITION */
    * {
      /*transition: .25s ease-in-out;*/
    }
    /* WRAP */
    .wrap {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        width: 600px;
        height: 500px;
        margin: auto;
        border-radius: 10px;
    }
    /* LOGO */
    .logo {
        top: 10px;
        left: 10px;
        width: 40px;
        height: 40px;
        background: none;
    }
    .logo img {
        width: 100%;
    }
    @keyframes show_close {
        0% {
            opacity: 0;
            -webkit-transform: translate(-6px, -100px);
            -moz-transform: translate(-6px, -100px);
            -o-transform: translate(-6px, -100px);
            transform: translate(-6px, -100px);
        }
        100% {
            opacity: 1;
            -webkit-transform: translate(-6px, 18px);
            -moz-transform: translate(-6px, 18px);
            -o-transform: translate(-6px, 18px);
            transform: translate(-6px, 18px);
        }
    }
    /* TOGGLE WRAP */
    #toggle-wrap {
        top: 60px;
        right: calc(50% + 17px);
        height: 80px;
        overflow: hidden;
    }
    #toggle-wrap.closed {
        width: 50%;
    }
    /* TOGGLE TERMS */
    #toggle-terms {
        opacity: 1;
        -webkit-transform: translate(-6px, -100px);
        -moz-transform: translate(-6px, -100px);
        -o-transform: translate(-6px, -100px);
        transform: translate(-6px, -100px);
    }
    #toggle-terms.closed {
        opacity: 1;
        -webkit-transform: translate(-6px, 18px);
        -moz-transform: translate(-6px, 18px);
        -o-transform: translate(-6px, 18px);
        transform: translate(-6px, 18px);
    }

    /* SLIDESHOW */
    #slideshow h2 {
        margin: 4.5em 0 1em;
        font-size: 2em;
    }
    #slideshow h2 span {
        padding: 5px 0;
        border: solid #B6EDE3;
        border-width: 1px 0;
    }
    #slideshow p {
        display: block;
    }
    #slideshow div {
        -webkit-background-size: auto;
        -moz-background-size: auto;
        -o-background-size: auto;
        background-size: auto;
    }
    #slideshow .one {
        background-position: 50% 130%;
    }
    #slideshow .two {
        background-position: 50% 200%;
    }
    #slideshow .three {
        background-position: 50% 300%;
    }
    #slideshow .four {
        background-position: -40% -80%;
    }

    /* CONTENT */
    .content, .content.full {
        position: relative;
        float: left;
        width: 50%;
        height: 500px;
        -webkit-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        -moz-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        border-radius: 10px 0 0 10px;
    }
    /* TERMS */
    .terms, .recovery {
        position: absolute;
        width: 50%;
        height: 440px;
        float: left;
        margin: 60px 0 0;
        -webkit-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        -moz-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        border-radius: 0 0 0 10px;
    }
    /* USER (FORM WRAPPER) */
    .user {
        padding-top: 0;
        float: left;
        width: 50%;
        height: 500px;
        -webkit-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        -moz-box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        box-shadow: -3px 0px 45px -6px rgba(56,75,99,0.61);
        border-radius: 0 10px 10px 0;
        border: 0;
    }
    .user .actions {
        margin: 0;
        text-align: right;
    }
    /* FORM ELEMENTS */
    .form-wrap {
        margin: 3em auto 0;
    }
    .form-wrap .tabs-content {
        padding: 1.5em 2.5em;
    }
    .tabs-content p {
        position: relative;
    }
    /* ARROW */
    .tabs-content .fa {
        position: absolute;
        top: 8px;
        left: -16px;
        display: block;
        font-size: .8em;
        color: #fff;
        opacity: .3;
        -webkit-transform: translate(0, 0);
        -moz-transform: translate(0, 0);
        -o-transform: translate(0, 0);
        transform: translate(0, 0);
        -webkit-transition: transform .3s .3s ease, opacity .6s .0s ease;
        -moz-transition: transform .3s .3s ease, opacity .6s .0s ease;
        -o-transition: transform .3s .3s ease, opacity .6s .0s ease;
        transition: transform .3s .3s ease, opacity .6s .0s ease;
    }
    .tabs-content .fa.active {
        -webkit-transform: translate(-3px, 0);
        -moz-transform: translate(-3px, 0);
        -o-transform: translate(-3px, 0);
        transform: translate(-3px, 0);
        opacity: .8;
    }
    .tabs-content .fa.inactive {
        -webkit-transform: translate(0, 0);
        -moz-transform: translate(0, 0);
        -o-transform: translate(0, 0);
        transform: translate(0, 0);
        opacity: .3;
    }
}
/* LARGE VIEWPORT */
@media only screen and (min-width: 60em) {
    /* WRAP */
    .wrap {
        width: 900px;
        height: 550px;
    }
    /* CONTENT */
    .content, .content.full {
        height: 550px;
    }
    .terms, .recovery {
        height: 490px;
    }
    /* SLIDESHOW */
    #slideshow h2 {
        margin: 4em 0 1em;
        font-size: 3em;
    }
    #slideshow .four {
        background-position: -82% -330%;
    }
    /* USER (FORM WRAPPER) */
    .user {
        height: 550px;
    }
    .form-wrap {
        margin: 5em auto 0;
    }
    .form-wrap .tabs-content {
        padding: 1.5em 4.9em;
    }
}


/* CSS */
.element {
  opacity: 0.0;
  transform: scale(0.95) translate3d(0,100%,0);
  transition: transform 400ms ease, opacity 400ms ease;
}
.element.active {
  opacity: 1.0;
  transform: scale(1.0) translate3d(0,0,0);
}
.element.inactive {
  opacity: 0.0;
  transform: scale(1) translate3d(0,0,0);
}
</style>
</head>
<body>
	<!-- LOGIN MODULE -->
        <div class="login">
            <div class="wrap">
                <!-- TOGGLE -->
                <div id="toggle-wrap">
                    <div id="toggle-terms">
                        <div id="cross">
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>

                <!-- RECOVERY -->
                <div class="recovery">
                    <h2>패스워드 초기화하기</h2>
                    <p>계정의 <strong>이메일주소</strong> 와 <strong>사원코드를</strong> 입력하고 <strong>제출하기를 클릭해주세요.</strong></p>
                    <p>계정비밀번호를 초기설정하겠습니다.</p>
                    <form class="recovery-form" action="" method="post">
                        <input type="text" class="input" name='recovery_empDepartment' placeholder="사원코드 입력">
                        <input type="text" class="input" id="recovery_empEmail" placeholder="이메일주소 입력">
                        <input type="submit" class="button" value="Submit">
                    </form>
					<!-- 사원코드와 이메일주소가 일치한다면  -->
                    <p class="mssg">계정비밀번호가 초기비밀번호로 변경되었습니다.</p>
                </div>

                <!-- SLIDER -->
                <div class="content">
                    <!-- LOGO -->
                    <div class="logo">
                        <a href="#"><img src="https://res.cloudinary.com/dpcloudinary/image/upload/v1506186248/logo.png" alt=""></a>
                    </div>
                    <!-- SLIDESHOW -->
                    <div id="slideshow">
                        <div class="one">
                            <h2><span>EVENTS</span></h2>
                            <p>Sign up to attend any of hundreds of events nationwide</p>
                        </div>
                        <div class="two">
                            <h2><span>LEARNING</span></h2>
                            <p>Thousands of instant online classes/tutorials included</p>
                        </div>
                        <div class="three">
                            <h2><span>GROUPS</span></h2>
                            <p>Create your own groups and connect with others that share your interests</p>
                        </div>
                        <div class="four">
                            <h2><span>SHARING</span></h2>
                            <p>Share your works and knowledge with the community on the public showcase section</p>
                        </div>
                    </div>
                </div>
                <!-- LOGIN FORM -->
                <div class="user">
                    <!-- ACTIONS
                    <div class="actions">
                        <a class="help" href="#signup-tab-content">Sign Up</a><a class="faq" href="#login-tab-content">Login</a>
                    </div>
                    -->
                    <div class="form-wrap">
                        <!-- TABS -->
                    	<div class="tabs">
                            <h3 class="login-tab"><a class="log-in active" href="#login-tab-content"><span>Login<span></a></h3>
                    	</div>
                        <!-- TABS CONTENT -->
                    	<div class="tabs-content">
                            <!-- TABS CONTENT LOGIN -->
                    		<div id="login-tab-content" class="active">
                    			<form class="login-form" action="" method="post">
                    				<input type="text" class="input" name='employee_department' autocomplete="off" placeholder="사원코드입력">
                    				<input type="password" class="input" name='employee_email' autocomplete="off" placeholder="비밀번호입력">
                    				<input type="checkbox" class="checkbox" checked id="remember_me">
                    				<label for="remember_me">사원코드 기억하기</label>
                    				<input type="button" class="button" id='btnLogin' value="Login">
                    			</form>
                    			<div class="help-action">
                    				<p><i class="fa fa-arrow-left" aria-hidden="true"></i><a class="forgot" href="#">암호를 잊어버리셨습니까?</a></p>
                    			</div>
                    		</div>
                    	</div>
                	</div>
                </div>
            </div>
        </div>
</body>
<script>
 //LOGIN TABS
$(function() {
	var tab = $('.tabs h3 a');
	tab.on('click', function(event) {
		event.preventDefault();
		tab.removeClass('active');
		$(this).addClass('active');
		tab_content = $(this).attr('href');
		$('div[id$="tab-content"]').removeClass('active');
		$(tab_content).addClass('active');
	});
});

// SLIDESHOW
$(function() {
	$('#slideshow > div:gt(0)').hide();
	setInterval(function() {
		$('#slideshow > div:first')
		.fadeOut(1000)
		.next()
		.fadeIn(1000)
		.end()
		.appendTo('#slideshow');
	}, 3850);
});

// CUSTOM JQUERY FUNCTION FOR SWAPPING CLASSES
(function($) {
	'use strict';
	$.fn.swapClass = function(remove, add) {
		this.removeClass(remove).addClass(add);
		return this;
	};
}(jQuery));

// SHOW/HIDE PANEL ROUTINE (needs better methods)
// I'll optimize when time permits.
$(function() {
	$('.agree,.forgot, #toggle-terms, .log-in').on('click', function(event) {
		event.preventDefault();
		var terms = $('.terms'),
        recovery = $('.recovery'),
        close = $('#toggle-terms'),
        arrow = $('.tabs-content .fa');
		if ($(this).hasClass('agree') || $(this).hasClass('log-in')) {
			if (terms.hasClass('open')) {
				terms.swapClass('open', 'closed');
				close.swapClass('open', 'closed');
				arrow.swapClass('active', 'inactive');
			} else {
				if ($(this).hasClass('log-in')) {
					return;
				}
				terms.swapClass('closed', 'open').scrollTop(0);
				close.swapClass('closed', 'open');
				arrow.swapClass('inactive', 'active');
			}
		}
		else if ($(this).hasClass('forgot') || $(this).is('#toggle-terms')) {
			if (recovery.hasClass('open')) {
				recovery.swapClass('open', 'closed');
				close.swapClass('open', 'closed');
				arrow.swapClass('active', 'inactive');
			} else {
				
				recovery.swapClass('closed', 'open');
				close.swapClass('closed', 'open');
				arrow.swapClass('inactive', 'active');
			}
		}
	});
});

// DISPLAY MSSG
$(function() {
	$('.recovery .button').on('click', function(event) {
		event.preventDefault();
		$('.recovery .mssg').addClass('animate');
		setTimeout(function() {
			$('.recovery').swapClass('open', 'closed');
			$('#toggle-terms').swapClass('open', 'closed');
			$('.tabs-content .fa').swapClass('active', 'inactive');
			$('.recovery .mssg').removeClass('animate');
		}, 2500);
	});
});

// DISABLE SUBMIT FOR DEMO
$(function() {
	$('.button').on('click', function(event) {
		$(this).stop();
		event.preventDefault();
		return false;
	});
});
//# sourceURL=pen.js

$(function(){ //btnSignUp 클릭
	$('#btnLogin').on('click', function(){
		location.href = "/insaproject/index.jsp";
	});
});
</script>
</html>