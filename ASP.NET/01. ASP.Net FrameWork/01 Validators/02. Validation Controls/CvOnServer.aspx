<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CvOnServer.aspx.cs" Inherits="CvOnServer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Enter Full Name
    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox>
    <asp:CustomValidator ID="cvName" runat="server" ControlToValidate="txtName" OnServerValidate="ValidateName" ErrorMessage="Enter Full Name only"></asp:CustomValidator>
    <br />
    Enter Nationality
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" OnServerValidate="ValidateNationality" ErrorMessage="Enter India Or Nepal"></asp:CustomValidator>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </div>
    </form>
</body>
</html>
