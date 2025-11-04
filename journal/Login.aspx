<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="journal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>

         body { background-color: #212832; font-family: Arial, sans-serif; color: #FFFFFF; margin: 0; padding: 0; }
         .textbox{
     border-color:black;
     padding:8px;
     width:90%;
     margin-top:8px;
     margin-bottom:10px;
     border:solid;
 }
         .btn{
    border-color: #000000;
    height: 40px;
    width: 80px;
    background-color: wheat;
    margin-bottom: 15px;
    margin-top: 30px;
    font-weight: bold;
    font-size: small;
    color: black;"
}
            .btn:hover {
                background-color: #00AEEF;
                border-color: black;
            }
         .txt{
             color: white;
         }

         .nav-link { color: wheat;}
         .nav-link:hover { color: #00AEEF; }
    </style>
   
   
</head>
<body>
       
        <center>
        <div class="Login_card" style =" border-width: medium; background-color: #3B4F81; height: auto; width: 350px; padding-bottom: 30px; padding-top: 30px; color: #000000; margin-top: 100px;">
           
                <form id="form1" runat="server" style="font-weight: bold; width: 90%; ;" >
       
                
                <h1>
                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/MuscleMan logo.png" Width="110px"  />
                </h1>
                  
                <label style="font-style: italic; text-decoration: underline; color: wheat; font-weight: 600; font-size: x-large;">Hey! Welcome Back..</label>
     
                    <br />
                    <br />
     
                 <asp:Label ID="lbl_email" runat="server" Text="Email :" CssClass="txt"></asp:Label>
       
                 <asp:TextBox ID="txtbox_email" runat="server" placeholder ="Enter Email" CssClass="textbox"   ></asp:TextBox>
                 <br />
                 <asp:Label ID="lbl_password" runat="server" Text="Password :" CssClass="txt"></asp:Label>
                 <br />
                 <asp:TextBox ID="txtbox_password" runat="server"  placeholder ="Enter Password" CssClass="textbox"></asp:TextBox>
       
                
                 <br />
                 <br />
                
                 <asp:Button ID="btn_login" runat="server" Text="Sign in" CssClass="btn"  />
                 <br />
                 <asp:Label ID="Label1" runat="server" Text="Don't have an account ?" CssClass="txt"></asp:Label>
                 <br />
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Register.aspx" CssClass="nav-link">Sign up</asp:HyperLink>
            
                        
             </form>    
        </div>
       </center>
        
</body>
</html>
