<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EngHouse.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <metaname="viewport"content="width=device-width,initial-scale=1.0,maximum-scale=1"/>
    <title>Kids Park</title>
    <link rel="stylesheet" href="Assets/Libraries/Bootstrap/css/bootstrap.min.css" />
    <link rel="shortcut icon" href="Assets/Images/kidIcon.png" type="image/x-icon" />
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
                        <h1 class="text-primary text-center">Kids Park</h1>
                        <form>
                            <div class="mb-3 mt-5">
                                <label for="UserTb" class="form-label">User Name</label>
                                <input type="text" class="form-control" id="UserTb" runat="server" required="required" placeholder="enter:admin" />
                            </div>
                            <div class="col-auto">
                                <asp:RequiredFieldValidator ID="UserValid" runat="server" ErrorMessage="Please enter correct username" ControlToValidate="UserTb" Text="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3 mt-3">
                                <label for="PasswordTb" class="form-label">Password</label>
                                <input type="password" class="form-control" id="PasswordTb" runat="server" required="required" aria-describedby="passwordHelpInline" placeholder="enter:1">
                            </div>
                            <div class="col-auto">
                                <asp:RequiredFieldValidator ID="PwdValid" runat="server" ErrorMessage="Please enter correct pwd" ControlToValidate="PasswordTb" Text="Please enter pwd" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="PwdExp" runat="server" ErrorMessage="Can only input number" ControlToValidate="PasswordTb" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                            </div>
                            <%--<div class="mb-3">
                                <label id="ErrMsg" class="text-danger" runat="server"></label>
                                <input type="radio" id="AdminCb" name="Role" runat="server"><label class="text-primary m-lg-1">Admin</label>
                                <input type="radio" id="UserCb" name="Role" runat="server"><label class="text-primary m-lg-1">User</label>
                            </div>--%>
                            <div class="d-grid">
                                <asp:Button ID="LoginBtn" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="LoginBtn_Click" />
                            </div>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end align-items-center mt-3">
                                <span>No Account?</span>
                                <a class="btn btn-secondary" href="Register.aspx">Register</a>
                            </div>
                            <br />
                        </form>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
