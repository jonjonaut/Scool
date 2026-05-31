using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectJon
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string response;
        // <p style="color: blue">i</p>"

        private static int i;

        private static string color, bkgc;

        public bool noFade = false;

        private static int liners = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["HomeVisits"] == null) Session["HomeVisits"] = 0;

            Session["HomeVisits"] = (int)Session["HomeVisits"] + 1;
            if ((int)Session["HomeVisits"] < 2) return;
            noFade = true;
        }
    }
}