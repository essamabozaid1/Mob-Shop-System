<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginmobile.aspx.cs" Inherits="tests_jquery_logintestjquery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>

    <link rel="stylesheet" href="loginstyle.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img class="logo" src="../imges/Logo.png"/>
    	<div class="box">
       
        </div>        
        <div class="cont" >
               <asp:TextBox  ID="txtUsername" runat="server" style="display:block" placeholder="USERNAME" Font-Names="Gotham" class="forma"></asp:TextBox>
               <asp:TextBox  ID="txtPassword" runat="server"  style="display:block" placeholder="PASSWORD" Font-Names="Gotham" class="forma"></asp:TextBox>
               <asp:Button  ID="btnLogin" runat="server"  Text="LOGIN"  width="80px" height="30px" Font-Names="Gotham" BackColor="White" ForeColor="#ED4832" class="btnlog" BorderWidth="0" OnClick="btnLogin_Click" />
               <asp:Label ID="lblLoggingStatus" runat="server" Width="400px" ForeColor="White" Font-Names="Gotham" Font-Size="Small" ></asp:Label>
        </div>        
        <script>
          $(document).ready(function () {
              $(".box").animate({
                  top: '350px'
              }, 1000);
              $(".box").animate({
                  paddingLeft: '100px',
                  paddingRight: '100px',
                  paddingTop: '90px',
                  paddingBottom: '70px',
                  top: '-=100px',
                  left: '-=100px',
                  borderRadius: '20px'
              }, 1000, function () {
                  $(".cont").animate({
                      opacity: '1.0'
                  }, 1000);
              });
          });
        </script>
    </div>
    </form>
</body>
</html>
