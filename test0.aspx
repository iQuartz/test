<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test0.aspx.cs" Inherits="Test.test0" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/fakeLoader.css">
    <script src="js/fakeLoader.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('#fakeloader').fakeLoader({
                timeToHide: 3000,
                spinner: 'spinner7'
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="fakeloader"></div>
    </form>
</body>
</html>
