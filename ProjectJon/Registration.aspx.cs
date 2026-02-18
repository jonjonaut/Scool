using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace ProjectJon
{
    public partial class Registration : System.Web.UI.Page
    {
        public static bool isLogin = false;
        public static bool isDuplicate = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            string db = "sanctumdb.accdb";

            if (Request.Form["submit"] != null)
            {
                string username = Request.Form["regiName"]; 
                string password = Request.Form["regiPassword"];    
                string favorite = Request.Form["favsite"];
                
                string duplicateSql = $"SELECT * FROM SanctumDB WHERE UID='{username}'";

                isDuplicate = dbHelper.IsExist(db, duplicateSql);
                if (isDuplicate) return; 
                string sql = $"INSERT INTO SanctumDB ([UID], [UPass], [Retro], [Modern], [General], [Movies], [Other], [Favorite]) VALUES ('{username}','{password}','{(retro.Checked ? "True" : "False")}','{(modern.Checked ? "True" : "False")}','{(general.Checked ? "True" : "False")}','{(movies.Checked ? "True" : "False")}','{(otherPurpose.Checked ? "True" : "False")}','{favorite}')";

                dbHelper.DoQuery("sanctumdb.accdb", sql);

                isLogin = true;
                
            }
        }
    }
}