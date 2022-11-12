<%@ Page Language="C#" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        content.Text = Application["message"].ToString();
    }
</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta http-equiv="refresh" content="1;display.aspx"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>DISPLAY BOX</h1>
            </center>
            <asp:TextBox ID="content" runat="server" Height="455px" ReadOnly="true" 
                TextMode="MultiLine" Width="676px"></asp:TextBox><br/>
        </div>
    </form>
</body>
</html>
