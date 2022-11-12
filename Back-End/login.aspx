<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e) 
    {
        if(username.Text !="" && username.Text.Length>= 4) 
        {
            Session["username"] = username.Text;
            Application.Lock();
            Application["username"] = Application["username"].ToString() + Session["username"] + "\n";
            Application.UnLock();
            Session["flag"] = true;
            Response.Redirect("main.aspx");
        }
        else 
        {
            message.Visible = true;
            message.Text = "UserName must be more than 4 words";
            username.Text = "";
            username.Focus();
        }
    }

    protected void Button2_Click(object sender, EventArgs e) 
    {
        username.Text = "";
        username.Focus();
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <h1>Discussion Forum</h1>
    <form id="form1" runat="server">
        <div>
            Enter Name<asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" Text="Login" runat="server" OnClick="Button1_Click" />
            <asp:Button ID="Button2" Text="Reset" runat="server" OnClick="Button2_Click" /> <br />
            <asp:Label ID="message" runat="server" Visible="false" Font-Bold="true" ForeColor="#FF3300"></asp:Label>
        </div>
    </form>
</body>
</html>
