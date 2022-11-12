<%@ Page Language="C#" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e) 
    {
        if((bool)Session["flag"]!= true) 
        {
            Response.Redirect("login.aspx");
        }
    }
</script>

<html>
     <frameset rows="680,*" frameborder=0>
     <frame col="740.*" frameborder=0>
            <frame name="display" src="display.aspx" scrolling="auto"/>
            <frame name="show" src="show.aspx" scrolling="auto"/>
     </frameset>
     <frame name="speak" src="speak.aspx" scrolling="auto" >
     <noframes>
</html>
