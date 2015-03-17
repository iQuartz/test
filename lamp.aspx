﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lamp.aspx.cs" Inherits="Test.lamp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        @import url(http://weloveiconfonts.com/api/?family=entypo);
*, *:before, *:after {
  margin:0;
  padding:0;
  -webkit-box-sizing:border-box;
  -moz-box-sizing:border-box;
  box-sizing:border-box;
}
#lamp {
  position:relative;
  width:100vw;
  height:100vh;
  overflow:hidden;
}
input[name="switch"], input[name="switch"] + label {
  position:absolute;
  bottom:3rem;
  width:4rem;
  height:4rem;
}
input[name="switch"] + label {right:3rem;}
input[name="switch"] {
  opacity:0;
  z-index:9;
  cursor:pointer;
}
input[value="on"] {
  right:3rem;
}
input[value="off"] {
  right:-4rem;
}
input[name="switch"] + label {
  text-align:center;
}
[class*="entypo-"]:before {
  line-height:4rem;
  font-size:2.5rem;
  color:rgba(255,255,255,0.4);
  font-family:'entypo', sans-serif;
}
input[value="on"]:checked {
  right:-4rem;
}
input[value="on"]:checked + input[value="off"] {
  right:3rem;
}
.lamp {
  position:relative;
  margin:0 auto;
  width:.7rem;
  height:10rem;
  background-image:linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                   linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
                   linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7));
  background-repeat:no-repeat;
  background-size:.15rem 8rem, .4rem .8rem, .7rem 2rem;
  background-position:50% 0, .19rem 8rem, 0 8.8rem;
}
.lamp:before, .lamp:after {
  content:'';
  position:absolute;
}
.lamp:before {
  left:-1.65rem;
  bottom:-4rem;
  width:4rem;
  height:4rem;
  border-radius:50%;
  background:rgba(255,255,255,0.03);
  box-shadow:inset 2px -2px 10px rgba(255,255,255,0.07);
  transition:all .15s;
}
.gonna-give-light, 
.gonna-give-light:before{
  position:absolute;
}
.gonna-give-light {
  top:10.05rem;
  left:.25rem;
  width:0;
  height:1.5rem;
  border-right:.2rem solid rgba(255,255,255,0.05);
}
.gonna-give-light:before {
  content:'';
  top:1.5rem;
  left:-.35rem;
  width:.9rem;
  height:.9rem;
  border-radius:50%;
  border:.2rem solid rgba(255,255,255,0.05);
  box-shadow:0px 0px 50px rgba(255,255,255,0);
}
input[value="on"]:checked ~ .lamp:before {
  background:rgba(255,255,255,1);
  box-shadow:0px 2px 10px rgba(255,255,255,0.8),
             0px 5px 50px rgba(255,255,255,0.8),
             0px 8px 80px rgba(255,255,255,0.6),
             0px 8px 120px rgba(255,255,255,0.6);
}
body {background:#2f323c;}
html, body {
  width:100%;
  height:100%;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="lamp">
      <input type="radio" name="switch" value="on" />
      <input type="radio" name="switch" value="off" checked="checked"/>
      <label for="switch" class="entypo-lamp"></label>
      <div class="lamp">
        <div class="gonna-give-light"></div>
      </div>
    </div>
    </form>
</body>
</html>
