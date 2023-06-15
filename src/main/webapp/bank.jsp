<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<style>

    body{
        width: 100%;
        height: 100dvh;
        display: grid;
        place-items: center;
	margin:0;
	color:#232323;
	background:#191919;
}

ul{
	margin:0; 
	padding:0; 
	list-style-type:none;
	font-size:0;
	line-height:0;
}


    #top_links
{
margin:0 auto;
padding:0px;
width:900px;
border-radius: 8px;
}
#top_linksin
{
padding:10px 0 0 0;
width:310px;
height:18px;
float:right;
}

#top_linksin ul
{
list-style:none;
margin:0 0 0 40px;
}
#top_linksin ul li
{
font:normal 11px/10px Arial, Helvetica, sans-serif;
color:#FFFFFF;
border-right:#7f7f7f 1px solid;
padding:0 15px;
float:left;
}
#top_linksin ul li a
{
text-decoration:none;
display:block;
color:#7f7f7f;
}
#top_linksin ul li a:hover
{
text-decoration:none;
display:block;
color:#FFFFFF;
}

#header
{
margin:0 auto;
background:#000 url(globe_03.gif) 0 0 no-repeat;
width:897px;
height:282px;
}
#header h1
{
font:bold 44px/18px Arial, Helvetica, sans-serif;
color:#FFFFFF;
padding:100px 0 0 380px;
}
#header h2
{
font:bold italic 24px/18px Arial, Helvetica, sans-serif;
color:#ababab;
padding:20px 0 0 380px;
}

#navigation
{
margin:0 auto;
width:896px;
height:40px;
background:#000;
border:1px solid #282828;
}
#navigation ul
{
list-style:none;
}
#navigation ul li
{
color:#adadad;
float:left;
text-align:center;
font:bold 15px/40px Arial, Helvetica, sans-serif;
width:127px;
border-right:1px solid #282828;
}
#navigation ul li a
{
text-decoration:none;
display:block;
color:#adadad;
}
#navigation ul li a:hover
{
color:#FFFFFF;
}
#navigation ul li.last
{
border:none;
float:left;
}

</style>
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>TLA - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>	

</div>

<div id="navigation">
    <ul>
    <li><a href="#">NEW ACCOUNT</a></li>
    <li><a href="#">BALANCE</a></li>
    <li><a href="#">DEPOSIT</a></li>
    <li><a href="#">CREDIT</a></li>
    <li><a href="#">HISTORY</a></li>
    <li><a href="#">CLOSE A/C</a></li>
    <li><a href="#">ABOUT US</a></li>
    </ul>
</div>

<script type="text/javascript">
document.onload = ctck();
</script>
</div>

</body>
</html>
