using System;
using System.Collections.Generic;
using System.Data;
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

        public DataTable Dtable;

        public string thingamabob = "";
        public string notherThingamabob = "";
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
                return;
            }

            string SQL;
            string fileName = "sanctumdb.accdb";
            if (Request.Form["searchsub"] == null) SQL = "SELECT * FROM SanctumDB";
            else SQL = $"SELECT * FROM SanctumDB WHERE UID='{Request.Form["searchuser"]}'";
            Dtable = dbHelper.ExecuteDataTable(fileName, SQL);

            if (Dtable.Rows.Count < 1)
            {
                SQL = "SELECT * FROM SanctumDB";
                Dtable = dbHelper.ExecuteDataTable(fileName, SQL);
            }

            for (int i = 0; i < Dtable.Columns.Count; i++)
            {
                string columnName = Dtable.Columns[i].ColumnName;
                string dtableStr = Convert.ToString(Dtable.Rows[0][columnName]);
                
                thingamabob += $"<th > {columnName} </th >";
                
            }
            
            notherThingamabob += "<tr>";

            for (int i = 0; i < Dtable.Rows.Count; i++)
            {
                string columnName;

                for (int j = 0; j < Dtable.Columns.Count; j++)
                {
                    columnName = Dtable.Columns[j].ColumnName;
                    notherThingamabob += $"<td > {Dtable.Rows[i][columnName]} </td >";
                }
                notherThingamabob += "</tr>";
            }    
        }
    }
}