<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EngHouse.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kids Park</title>
    <link rel="stylesheet" href="Assets/Libraries/Bootstrap/css/bootstrap.min.css" />
    <style>
        body {
            background-image: url(Assets/Images/mainRouteImg.jpg);
            background-size: cover;
        }

        .container-fluid {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <div class="row" style="height: 200px"></div>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4 bg-light rounded-2">
                        <br />
                        <h1 class="text-primary text-center">Registration</h1>
                        <form>
                            <div class="mb-3">
                                <label for="UserTb" class="form-label">User Name</label>
                                <input type="text" class="form-control" id="UserTb" runat="server">
                            </div>
                            <div class="mb-3">
                                <label for="PasswordTb" class="form-label">Password</label>
                                <input type="password" class="form-control" id="PasswordTb" runat="server" aria-describedby="passwordHelpInline">
                                <asp:RegularExpressionValidator ID="PwdExp" runat="server" ErrorMessage="Can only input number" ControlToValidate="PasswordTb" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="mb-3">
                                <label for="EmailTb" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="EmailTb" aria-describedby="emailHelp" runat="server">
                                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                            </div>
                            <div class="mb-3">
                                <label for="PhoneTb" class="form-label">Phone</label>
                                <input type="password" class="form-control" id="PhoneTb" runat="server">
                            </div>
                            <div class="d-grid mb-3 mt-3">
                                <asp:Button ID="SubmitBtn" runat="server" Text="Register" class="btn btn-primary btn-block" OnClick="SubmitBtn_Click" />
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
