<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Test._default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <link href="css/simpletextrotator.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="js/jquery.simple-text-rotator.js" type="text/javascript"></script>
    <script type="text/javascript">
//        $(document).ready(function () {
//            $(".expan").click(function () {
//                $(".rotate").textrotator();

//            });
        //        });
        $(function () {
            // Clickable Dropdown
            $('.expan > ul').toggleClass('no-js js');
            $('.expan .js ul').hide();
            $('.expan .js').click(function (e) {
                $(".rotate").textrotator();
                $('.expan .js ul').slideToggle(200);
                $('.iconic').toggleClass('active');
                e.stopPropagation();
            });
            $(document).click(function () {
                if ($('.expan .js ul').is(':visible')) {
                    $('.expan .js ul', this).slideUp();
                    $('.iconic').removeClass('active');
                    $(".rotate").textstop();
                }
            });
        });
	</script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="expan">
			<ul class="no-js">
				<li>
                    <a class="iconic" href="#"><span class="rotate">X</span> Setting</a>
                    <ul>
				        <li><a href="#">Dashboard</a></li>
				        <li><a href="#">Dashboard</a></li>
				        <li><a href="#">Dashboard</a></li>
			        </ul>
				</li>
			</ul>
            
        </div>
    </form>
</body>
</html>
