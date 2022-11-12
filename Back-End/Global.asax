<%@ Application Language="C#" %>

<script runat="server">

    protected void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        Application["meassage"] = "";
        Application["usercount"] = 0;
        Application["username"] = "";

    }

    protected void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown


    }

    protected void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    protected void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        Session["username"] = "";
        Session.Timeout = 2;
        Application.Lock();
        Application["usercount"] = (int)Application["usercount"] + 1;
        Application.UnLock();

    }

    protected void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        string str1, str2;
        str1 = Session["username"].ToString();
        Application.Lock();
        Application["usercount"] = (int)Application["usercount"] - 1;
        str2 = Application["username"].ToString();
        Application["username"] = str2.Replace(str1 + "\n", "");
        Application.UnLock();
        Session.Abandon();

    }

</script>
