<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e) 
    {
        string usename;
        if(speakmess.Text != "") 
        {
            usename = Session["username"].ToString();
            Application.Lock();
            Application["message"] = usename + ":" + speakmess.Text + "\n" + Application["message"].ToString();
            Application.UnLock();
            speakmess.Text = "";
        }
    }

    protected void Button2_Click(object sender, EventArgs e) 
    {
        speakmess.Text = "";
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            SPEAK:<br/>
            <asp:TextBox ID="speakmess" runat="server" Width="444px" Height="72px" 
                TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="Button1" Text="Post" runat="server" OnClick="Button1_Click" />
            <asp:Button ID="Button2" Text="Reset" runat="server" OnClick="Button2_Click" /><br /><br /> 
        </div>
    </form>
</body>
</html>
