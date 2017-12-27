using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoExplorer
{
    public partial class Category : System.Web.UI.Page
    {
        private SqlCommand cmd = null;
        private SQLAccess objSQLAccess = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string strDiv1 = string.Empty;
                string stResult1 = string.Empty;
                string strDiv2 = string.Empty;
                string stResult2 = string.Empty;
                string exMessage = string.Empty;
                objSQLAccess = new SQLAccess();
                DataTable dtResult = new DataTable();
                cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText =  GoExplorer.Constants.CategoryMasterInsertUpdateGet;
                cmd.Parameters.AddWithValue(GoExplorer.Constants.Mode, "GET");
                dtResult = objSQLAccess.GetDt(cmd, ref exMessage);
                if (dtResult != null && dtResult.Rows.Count > 0)
                {
                    Session["CategoryMaster"] = dtResult;
                    for (int i = 0; i < dtResult.Rows.Count; i++)
                    {
                        strDiv1 = @"<div class=""col-lg-2 category""><div class=""mask""> <h4><i class=""@Class"" aria-hidden=""true""></i>&nbsp; @CategoryName</h4>
                            <p>@CategoryDesc</p>
                            <a href=""ActivityMaster.aspx?category=@CategoryName"" class=""btn btn-success btn-sm"">
                                <i class=""fa fa-check-square-o"" aria-hidden=""true""></i>
                                SELECT
                            </a>
                        </div> </div>";
                        strDiv1 = strDiv1.Replace("@CategoryDesc", dtResult.Rows[i]["CategoryDesc"].ToString());
                        strDiv1 = strDiv1.Replace("@CategoryName", dtResult.Rows[i]["CategoryName"].ToString());
                        strDiv1 = strDiv1.Replace("@Class", dtResult.Rows[i]["CssName"].ToString());
                        stResult1 += strDiv1;

                        strDiv2= @"<div class=""col-md-3 col-sm-6 col-xs-12"">
                            <article class=""card"">
                                <div class=""card-details"">
                                    <h4 class=""card-title""><a href=""activity.html?category=@CategoryName""><i class=""@Class"" aria-hidden=""true""></i>&nbsp; @CategoryName</a></h4>
                                    <div class=""meta-details clearfix"">
                                        <p>@CategoryDesc</p>
                                        <a href=""activity.html?category=@CategoryName"" class=""btn btn-success btn-sm"">
                                            <i class=""fa fa-check-square-o"" aria-hidden=""true""></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>";
                        strDiv2 = strDiv2.Replace("@CategoryDesc", dtResult.Rows[i]["CategoryDesc"].ToString());
                        strDiv2 = strDiv2.Replace("@CategoryName", dtResult.Rows[i]["CategoryName"].ToString());
                        strDiv2 = strDiv2.Replace("@Class", dtResult.Rows[i]["CssName"].ToString());
                        stResult2 += strDiv2;

                    }
                }
                category.InnerHtml = stResult1;
                CategoryMob.InnerHtml = stResult2;
            }
          
        }
    }
}