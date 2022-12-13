<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SimpleDashboard.index" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <!-- Google Font Recursive -->
       <link rel="preconnect" href="https://fonts.googleapis.com"/>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
<link href="https://fonts.googleapis.com/css2?family=Recursive:wght@300;400;700&display=swap" rel="stylesheet"/> 
        <!-- End of Google Font Recursive -->
        <title>Welcome to Art Gallery</title>
        <link href="assets/css/style.css" rel="stylesheet" />
    </head>

    <body class="login-body">
        <main class="login-container">
        <form id="loginForm" runat="server">
            <fieldset class="user-login">
                <div class="username-section">
                    <asp:Label ID="usernameLabel" runat="server" Text="Username:"></asp:Label>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </div>
                <div class="password-section">
                    <asp:Label ID="passwordLabel" runat="server" Text="Password:"></asp:Label>
                    <asp:TextBox ID="password" runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="loginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login" />
            </fieldset>
        </form>
        </main>
    </body>

    </html>