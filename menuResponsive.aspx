﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuResponsive.aspx.cs" Inherits="Test.menuResponsive" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
            a {
  text-decoration: none;
}

nav {
  display: table;
  position: relative;
  table-layout: fixed;
  width: 100%;
}
nav input {
  display: none;
}
nav label {
  margin: 0;
}
nav div.nav-container {
  display: table-row;
}
nav div.nav-container > div {
  display: table-cell;
}
nav div.nav-container > div:nth-of-type(5n+1) .slide, nav div.nav-container > div:nth-of-type(5n+1) a {
  border-color: #8cc63f;
}
nav div.nav-container > div:nth-of-type(5n+1) .slide:hover, nav div.nav-container > div:nth-of-type(5n+1) a:hover {
  color: #567b24;
}
nav div.nav-container > div:nth-of-type(5n+1) .slide ~ .child-menu, nav div.nav-container > div:nth-of-type(5n+1) a ~ .child-menu {
  background-color: #a4d266;
}
nav div.nav-container > div:nth-of-type(5n+1) input:checked ~ label, nav div.nav-container > div:nth-of-type(5n+1) .slide.active ~ label {
  color: #8cc63f;
}
nav div.nav-container > div:nth-of-type(5n+2) .slide, nav div.nav-container > div:nth-of-type(5n+2) a {
  border-color: #ef3724;
}
nav div.nav-container > div:nth-of-type(5n+2) .slide:hover, nav div.nav-container > div:nth-of-type(5n+2) a:hover {
  color: #a11a0c;
}
nav div.nav-container > div:nth-of-type(5n+2) .slide ~ .child-menu, nav div.nav-container > div:nth-of-type(5n+2) a ~ .child-menu {
  background-color: #f26254;
}
nav div.nav-container > div:nth-of-type(5n+2) input:checked ~ label, nav div.nav-container > div:nth-of-type(5n+2) .slide.active ~ label {
  color: #ef3724;
}
nav div.nav-container > div:nth-of-type(5n+3) .slide, nav div.nav-container > div:nth-of-type(5n+3) a {
  border-color: #ffa61a;
}
nav div.nav-container > div:nth-of-type(5n+3) .slide:hover, nav div.nav-container > div:nth-of-type(5n+3) a:hover {
  color: #b36d00;
}
nav div.nav-container > div:nth-of-type(5n+3) .slide ~ .child-menu, nav div.nav-container > div:nth-of-type(5n+3) a ~ .child-menu {
  background-color: #ffba4d;
}
nav div.nav-container > div:nth-of-type(5n+3) input:checked ~ label, nav div.nav-container > div:nth-of-type(5n+3) .slide.active ~ label {
  color: #ffa61a;
}
nav div.nav-container > div:nth-of-type(5n+4) .slide, nav div.nav-container > div:nth-of-type(5n+4) a {
  border-color: #1ab1ff;
}
nav div.nav-container > div:nth-of-type(5n+4) .slide:hover, nav div.nav-container > div:nth-of-type(5n+4) a:hover {
  color: #0076b3;
}
nav div.nav-container > div:nth-of-type(5n+4) .slide ~ .child-menu, nav div.nav-container > div:nth-of-type(5n+4) a ~ .child-menu {
  background-color: #4dc2ff;
}
nav div.nav-container > div:nth-of-type(5n+4) input:checked ~ label, nav div.nav-container > div:nth-of-type(5n+4) .slide.active ~ label {
  color: #1ab1ff;
}
nav div.nav-container > div:nth-of-type(5n+5) .slide, nav div.nav-container > div:nth-of-type(5n+5) a {
  border-color: #FC1DCF;
}
nav div.nav-container > div:nth-of-type(5n+5) .slide:hover, nav div.nav-container > div:nth-of-type(5n+5) a:hover {
  color: #b1028d;
}
nav div.nav-container > div:nth-of-type(5n+5) .slide ~ .child-menu, nav div.nav-container > div:nth-of-type(5n+5) a ~ .child-menu {
  background-color: #fd4fda;
}
nav div.nav-container > div:nth-of-type(5n+5) input:checked ~ label, nav div.nav-container > div:nth-of-type(5n+5) .slide.active ~ label {
  color: #FC1DCF;
}
nav a, nav label {
  -moz-transition-property: color;
  -o-transition-property: color;
  -webkit-transition-property: color;
  transition-property: color;
  -moz-transition-duration: 0.2s;
  -o-transition-duration: 0.2s;
  -webkit-transition-duration: 0.2s;
  transition-duration: 0.2s;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
}
nav .slide {
  padding: 10px 10px;
  font-size: 1em;
  display: block;
  color: #393939;
  border-top: 4px solid transparent;
  position: relative;
  -moz-transition-property: border-width, color;
  -o-transition-property: border-width, color;
  -webkit-transition-property: border-width, color;
  transition-property: border-width, color;
  -moz-transition-duration: 0.1s, 0.2s;
  -o-transition-duration: 0.1s, 0.2s;
  -webkit-transition-duration: 0.1s, 0.2s;
  transition-duration: 0.1s, 0.2s;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
  -moz-transition-delay: 0.2s, 0s;
  -o-transition-delay: 0.2s, 0s;
  -webkit-transition-delay: 0.2s, 0s;
  transition-delay: 0.2s, 0s;
}
nav .slide .element {
  font-size: 1.25em;
  font-weight: 600;
  font-style: normal;
  display: block;
  line-height: 1;
}
nav .slide .name {
  font-size: 0.6875em;
  position: relative;
}
nav .has-child .name:after {
  content: "";
  width: 10px;
  height: 4px;
  background-image: url("http://www.elemental-shift.com/remote-assets/down-arrow.svg");
  display: block;
  position: absolute;
  bottom: -9px;
  left: 1px;
  background-repeat: no-repeat;
  -moz-transition-property: -moz-transform;
  -o-transition-property: -o-transform;
  -webkit-transition-property: -webkit-transform;
  transition-property: transform;
  -moz-transition-duration: 0.5s;
  -o-transition-duration: 0.5s;
  -webkit-transition-duration: 0.5s;
  transition-duration: 0.5s;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
  -moz-transform-origin: 50% 50%;
  -ms-transform-origin: 50% 50%;
  -webkit-transform-origin: 50% 50%;
  transform-origin: 50% 50%;
}
nav .child-menu {
  display: block;
  position: absolute;
  max-height: 0;
  overflow: hidden;
  background-color: #393939;
  width: 100%;
  top: 65px;
  left: 0;
  z-index: 5000;
  -moz-transition-property: max-height;
  -o-transition-property: max-height;
  -webkit-transition-property: max-height;
  transition-property: max-height;
  -moz-transition-duration: 0.5s;
  -o-transition-duration: 0.5s;
  -webkit-transition-duration: 0.5s;
  transition-duration: 0.5s;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
}
nav .child-menu a {
  color: white;
  display: inline-block;
  padding: 15px 30px 15px 10px;
  font-size: 0.9375em;
}
nav input:checked ~ .child-menu {
  max-height: 100px;
  -moz-transition-property: max-height;
  -o-transition-property: max-height;
  -webkit-transition-property: max-height;
  transition-property: max-height;
  -moz-transition-duration: 0.5s;
  -o-transition-duration: 0.5s;
  -webkit-transition-duration: 0.5s;
  transition-duration: 0.5s;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
}
nav input:checked ~ .has-child .name:after {
  -moz-transform: rotateX(180deg);
  -webkit-transform: rotateX(180deg);
  transform: rotateX(180deg);
}

@media only screen and (min-width: 48.0625em) {
  nav {
    display: block;
    table-layout: auto;
  }
  nav div.nav-container {
    display: block;
  }
  nav div.nav-container > div {
    display: block;
    margin: 5px 0;
  }
  nav div.nav-container > div:hover .slide {
    border-left-width: 55px;
    -moz-transition-delay: 0;
    -o-transition-delay: 0;
    -webkit-transition-delay: 0;
    transition-delay: 0;
  }
  nav .slide {
    display: block;
    width: auto;
    border-left: solid 4px #393939;
    border-top: none;
  }
  nav .slide .element {
    line-height: 1;
  }
  nav .child-menu {
    display: block;
    position: relative;
    top: 0;
    background-color: transparent !important;
    margin-left: 55px;
    width: auto;
    max-height: 0px;
    overflow: hidden;
    border-top: none;
  }
  nav .child-menu a {
    color: #393939;
    display: block;
    padding: 3px 0 3px 10px;
    font-size: 0.8125em;
  }
  nav input:checked ~ div.child-menu {
    max-height: 120px;
  }
  nav input:checked ~ .slide {
    border-width: 55px;
  }
}
.masthead {
  font-family: "Open Sans", sans-serif;
}
.masthead .brand-container {
  padding: 10px;
  background-color: #393939;
}
.masthead .brand-container a {
  color: white;
  display: inline-block;
  -moz-transition-property: all;
  -o-transition-property: all;
  -webkit-transition-property: all;
  transition-property: all;
  -moz-transition-duration: 0.2s;
  -o-transition-duration: 0.2s;
  -webkit-transition-duration: 0.2s;
  transition-duration: 0.2s;
  -moz-transition-timing-function: ease-in;
  -o-transition-timing-function: ease-in;
  -webkit-transition-timing-function: ease-in;
  transition-timing-function: ease-in;
}
.masthead .brand-container a:hover {
  color: #8cc63f;
}
.masthead .brand-initials {
  font-size: 3.0625em;
  font-weight: 700;
  font-style: normal;
  display: block;
  line-height: 42px;
}
.masthead .brand-name {
  font-size: 0.8125em;
  text-indent: 3px;
  display: block;
}

@media only screen and (min-width: 48.0625em) {
  .masthead {
    position: absolute;
    top: 0;
    left: 0;
    width: 150px;
  }
  .masthead .brand-container {
    padding: 10px 0 50px 10px;
  }
  .masthead .brand-container a {
    display: block;
  }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <header class="masthead">
  <div class="brand-container">
    <a href="#">
      <span class="brand-initials">Es</span>
      <span class="brand-name">Elemental Shift</span>
    </a>
  </div>
  <nav>
    <div class="nav-container">
      <div>
        <input id="slider1" name="slider1" type="checkbox">/</input>
        <label class="slide has-child" for="slider1">
          <span class="element">Bg</span>
          <span class="name">Blog</span>
        </label>
        <div class="child-menu">
          <a href="#">Recent</a>
          <a href="#">Archives</a>
          <a href="#">Categories</a>
        </div>
      </div>
      <div>
        <a class="slide" href="#">
          <span class="element">Po</span>
          <span class="name">Portfolio</span>
        </a>
      </div>
      <div>
        <input id="slider2" name="slider2" type="checkbox">/</input>
        <label class="slide has-child" for="slider2">
          <span class="element">Xp</span>
          <span class="name">Laboratory</span>
        </label>
        <div class="child-menu">
          <a href="#">PHP</a>
          <a href="#">Javascript</a>
          <a href="#">Css</a>
          <a href="#">Ruby</a>
          <a href="#">Python</a>
          <a href="#">Design</a>
        </div>
      </div>
      <div>
        <a class="slide" href="#">
          <span class="element">Ab</span>
          <span class="name">About</span>
        </a>
      </div>
      <div>
        <a class="slide" href="#">
          <span class="element">C</span>
          <span class="name">Contact</span>
        </a>
      </div>
    </div>
  </nav>
  <div class="social-container">
    <span>
      <a class="social-roll github" href="#"></a>
    </span>
    <span>
      <a class="social-roll twitter" href="#"></a>
    </span>
    <span>
      <a class="social-roll linkedin" href="#"></a>
    </span>
    <span>
      <a class="social-roll rss" href="#"></a>
    </span>
  </div>
</header>
    </form>
</body>
</html>
