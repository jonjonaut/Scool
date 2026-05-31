using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectJon
{

    public partial class User : System.Web.UI.Page
    {
        public static bool visited = false;
        public static string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            user = Session["User"] as string;
            if (Session["UserVisits"] == null) Session["UserVisits"] = 0;

            Session["UserVisits"] = (int)Session["UserVisits"] + 1;
            if ((int)Session["UserVisits"] < 2) return;
            visited = true;
        }
    }
}