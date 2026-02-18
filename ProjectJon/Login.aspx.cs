using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectJon.images
{
    public partial class Login : System.Web.UI.Page
    {

        public string userName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] == null) return; 

            userName = Request.Form["username"];
            string userPassword = Request.Form["pass"];

            if (userName == "admin" && userPassword == "bruhreal")
            {
                Session["admin"] = "OK";
                Response.Redirect("ADMINISTRATOR.aspx");
            }else
            {
                string db = "sanctumdb.accdb";

                string sql = $"SELECT * FROM SanctumDB WHERE UID='{userName}' AND UPass='{userPassword}'";

                bool real = dbHelper.IsExist(db, sql);
                if (real) {
                    Session["User"] = userName;
                    Session["Password"] = userPassword;
                    Response.Redirect("User.aspx");
                }
            }
        }
    }
}