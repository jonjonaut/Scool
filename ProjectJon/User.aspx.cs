using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectJon
{
    public static Login login;
    public partial class User : System.Web.UI.Page
    {
        private static int user = login.userName;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
    }
}