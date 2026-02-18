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


        private static int liners = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

            i++;

            bool even = i % 2 == 0; bool feven = i % 5 == 0;
            color = even ? "blue" :  "red";
            bkgc = feven ? "aquamarine" : "transparent";
            response = $"<p style=\"color:{color}; background-color: {bkgc} \">{i}</p>";
            if (i % 10 == 0)
            {
                liners++;
            }
            //Response.Write(string.Concat(Enumerable.Repeat($"<br>", liners)) + response);

        }
    }
}