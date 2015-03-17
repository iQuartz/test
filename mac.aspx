﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mac.aspx.cs" Inherits="Test.mac" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        *, *:before, *:after {   -moz-box-sizing: border-box;-webkit-box-sizing: border-box;	box-sizing: border-box;}
body { background: #f4f4f0; font: 100%/1.618 'Lato', sans-serif; font-weight: 400; color: #666; text-rendering: optimizeLegibility;}

#device,
#device:before,
#device:after{
	 background: rgba(0,0,0,0.00);
	 -webkit-transition: all 1s ease-in-out;
    -moz-transition: wall 1s ease-in-out;
    -o-transition: all 1s ease-in-out;
    transition: all 1s ease-in-out;
}

#device:before,
#device:after,
#device span:before,
#device span:after{
	content: '';
	display: block;
	position: absolute;
	right: 50%;
}

#device	{
	position: relative;
	margin: 80px auto 0;
	background: #525255;
}

#device:before {
	background: #ec8277;
	z-index: 2;
}

#device:after {
	background: #d2d5d9;
}

#device span:after{
	background: #b2b5b9;
	z-index: 1;
}

#device span,
#device span:after,
#device span:before{
	-webkit-transition: all 1s ease-in-out;
    -moz-transition: wall 1s ease-in-out;
    -o-transition: all 1s ease-in-out;
    transition: all 1s ease-in-out;
}

#device span {
	display: block;
	position: absolute;
	top: 0px;
	left: 50%;
	background: #818188;
	margin: 4px 0 0 -3px;
	width: 6px;
	height: 6px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;

}

#device span:before{
	content: '<HTML>';
	text-align: center;
	background: #eee;
	border-top: 8px solid #ddd;
  -webkit-box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
  -moz-box-shadow: 0px 0px 10px rgba(0,0,0,0.3);
  box-shadow: 0px 0px 10px rgba(0,0,0,0.3)
  ;

	z-index: 2;
}


/* MBPro */
/* MBPro */
#device	{
 	width: 280px;
 	height: 160px; 
	-webkit-border-radius: 10px 10px 0 0 ;
	-moz-border-radius: 10px 10px 0 0;
	border-radius: 10px 10px 0 0 ;
}

#device:before	{
	top: 15px;
	margin: 0 -125px 0 0;
	height: 129px;
	width: 250px;
}

#device:after	{
	bottom: -18px;
	margin: 0 -180px 0 0;
	height: 18px;
	width: 360px;
	-webkit-border-radius: 0 0 10px 10px ;
	-moz-border-radius: 0 0 10px 10px ;
	border-radius: 0 0 10px 10px ;
}

#device span:after{
	top:156px;
	margin: 0 -40px 0 0;
	height: 10px;
	width: 80px;
	-webkit-border-radius: 0 0 5px 5px ;
	-moz-border-radius: 0 0 5px 5px ;
	border-radius: 0 0 5px 5px ;
}

#device span:before{
	height: 110px;
	top: 20px;
	width: 180px;
	margin: 0 -90px 0 0;
	padding: 35px 0 0 0;
}

/* -- Wide Screen -- */
@media only screen and (min-width: 1400px){

/* Thunderbolt */
#device	{
 	width: 400px;
 	height: 220px; 
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	border-radius: 15px;
}

#device:before	{
	top: 17px;
	margin: 0 -183px 0 0;
	height: 186px;
	width: 366px;
}

#device:after	{
	bottom: -30px;
	margin: 0 -40px 0 0;
	height: 15px;
	width: 80px;
	background: transparent;
 border-bottom: 30px solid #d2d5d9;
 border-left: 5px solid transparent;
 border-right: 5px solid transparent;

	-webkit-border-radius: 0px;
	-moz-border-radius: 0px;
	border-radius: 0px;

}

#device span {
	top: 2px;
}

#device span:after{
	top:244px;
	margin: 0 -50px 0 0;
	height: 6px;
	width: 100px;
}

#device span:before{
	height: 165px;
	top: 20px;
	width: 300px;
	margin: 0 -150px 0 0;
	padding: 65px 0 0 0;
}


} /* -- End Wide -- */

/* -- iPad Screen Vertical -- */
@media only screen and (min-width: 480px) and (max-width: 768px) {

/* iPad */
#device	{
	margin: 75px auto 0;
 	width: 200px;
 	height: 240px; 
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	border-radius: 15px;
	background: #fff;
}

#device:before	{
	top: 15px;
	margin: 0 -85px 0 0;
	height: 194px;
	width: 170px;
}

#device:after	{
	bottom: 5px;
	margin: 0 -10px 0 0;
	height: 20px;
	width: 20px;

	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;

	background: #d2d5d9;
}

#device span {
	background: #d2d5d9;
}

#device span:after{
	top:220px;
	margin: 0;
	height: 0;
	border-width: 0 0 0 0;
	width: 0;
	background: #d2d5d9;
}

#device span:before{
	height: 194px;
	top: 11px;
	width: 170px;
	margin: 0 -85px 0 0;
	padding: 75px 0 0 0;
 -webkit-box-shadow: 0px 0px 0px ;
  -moz-box-shadow: 0px 0px 0px ;
  box-shadow: 0px 0px 0px ;
}

}

@media only screen and (max-width: 479px) {

/* iPhone */
#device	{
	margin: 70px auto 0;
 	width: 130px;
 	height: 220px; 
	-webkit-border-radius: 15px;
	-moz-border-radius: 15px;
	border-radius: 15px;
}

#device:before	{
	top: 30px;
	margin: 0 -55px 0 0;
	height: 150px;
	width: 110px;
}

#device:after	{
	bottom: 10px;
	margin: 0 -9px 0 0;
	height: 18px;
	width: 18px;

	-webkit-border-radius: 20px;
	-moz-border-radius: 20px;
	border-radius: 20px;

	background: #818188;
}

#device span{
	top: 4px;
}
#device span:after{
	top:12px;
	margin: 0 -20px 0 0;
	height: 3px;
	width: 40px;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	background: #818188;
	}

#device span:before{
	height: 150px;
	top: 22px;
	width: 110px;
	margin: 0 -55px 0 0;
	padding: 50px 0 0 0;
 -webkit-box-shadow: 0px 0px 0px ;
  -moz-box-shadow: 0px 0px 0px ;
  box-shadow: 0px 0px 0px ;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Resize the browser -->

    <div id="device">
      <span></span>
    </div>
    </form>
</body>
</html>
