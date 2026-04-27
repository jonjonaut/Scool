using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectJon
{

    public partial class ADMINISTRATOR : System.Web.UI.Page
    {
        public static bool isAdmin;

        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Request.Form["die"] == null) return;
            Response.Clear();
            Response.End();
            */

            if (Session["admin"] == null)
            {
                isAdmin = true;
                Response.Clear();
            }


        }
    }
}