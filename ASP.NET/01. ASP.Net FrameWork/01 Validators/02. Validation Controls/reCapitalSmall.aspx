<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="reCapitalSmall.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblName1" Text="Enter Your Name 1" runat="server"></asp:Label>
    <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revName1" ControlToValidate="txtName1"
        runat="server" ErrorMessage="Enter Only CAPITAL LETTERS" ValidationExpression="^[A-Z]*$"></asp:RegularExpressionValidator>
       <br />
    <asp:Label ID="lblName2" Text="Enter Your Name 2" runat="server"></asp:Label>
    <asp:TextBox ID="txtName2" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revName2" ControlToValidate="txtName2"
        runat="server" ErrorMessage="Enter Only small letter" ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
       

    </div>
    </form>
</body>
</html>
