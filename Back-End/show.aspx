<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e) 
    {
        content.Text = Application["username"].ToString();
        count.Text = "UsersCount:" + Application["usercount"].ToString();
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="refresh" content="1;show.aspx"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <left>
                <h1>Show</h1>
            </left>
            <asp:TextBox ID="content" runat="server" Height="455px"
                TextMode="MultiLine" Width="266px" ReadOnly="true"></asp:TextBox><br/>
            <asp:Label ID="count" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
