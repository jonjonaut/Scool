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


            /*i++;

            bool even = i % 2 == 0; bool feven = i % 5 == 0;
            color = even ? "blue" :  "red";
            bkgc = feven ? "aquamarine" : "transparent";
            response = $"<p style=\"color:{color}; background-color: {bkgc} \">{i}</p>";
            if (i % 10 == 0)
            {
                liners++;
            }*/
            //Response.Write(string.Concat(Enumerable.Repeat($"<br>", liners)) + response);

        }
    }
}