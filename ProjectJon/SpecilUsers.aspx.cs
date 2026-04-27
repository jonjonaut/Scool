using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectJon
{
    public partial class SpecilUsers : System.Web.UI.Page
    {
        public string myThingamajig = "";
        public string notherThingamajiga = "";
        public string tabler;
        public DataTable Dtable;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("Login.aspx");

            string fileName = "sanctumdb.accdb";

            string sql = $"SELECT * FROM SanctumDB WHERE UID='{Session["User"]}' AND UPass='{Session["Password"]}'";

            Dtable = dbHelper.ExecuteDataTable(fileName, sql);

            //if (Dtable.Rows.Count > 0) return;

            for (int i = 0; i < Dtable.Columns.Count; i++)
            {
                string columnName = Dtable.Columns[i].ColumnName;
                string dtableStr = Convert.ToString(Dtable.Rows[0][columnName]);


                if (dtableStr != "False")
                {
                    myThingamajig += $"<th > {columnName} </th >";
                    notherThingamajiga += $"<td > {Dtable.Rows[0][columnName]} </td >";
                }
            }


        }
    }
}