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
    public partial class ActivityMaster : System.Web.UI.Page
    {
        private SqlCommand cmd = null;
        private SQLAccess objSQLAccess = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string exMessage = string.Empty;
            string Div = string.Empty;
            string Result = string.Empty;
            DataTable dtResult;
            if (!Page.IsPostBack)
            {
                if (Session["CategoryMaster"] != null)
                {
                    dtResult = (DataTable)Session["CategoryMaster"];
                }
                else
                {

                    objSQLAccess = new SQLAccess();
                    cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = GoExplorer.Constants.CategoryMasterInsertUpdateGet;
                    cmd.Parameters.AddWithValue(GoExplorer.Constants.Mode, "GET");
                    dtResult = objSQLAccess.GetDt(cmd, ref exMessage);
                }
                if (dtResult != null && dtResult.Rows.Count > 0)
                {
                    for (int i = 0; i < dtResult.Rows.Count; i++)
                    {
                        Div = @"<div onclick=""OnchangeTab(@CategoryID);"" class=""col-lg-2 col-md-2 col-sm-4 col-xs-6 category text-center"">
                        <div class=""mask"">
                            <h4><i class=""@Class"" aria-hidden=""true""></i>@CategoryName</h4>
                        </div>
                    </div>";
                        Div = Div.Replace("@CategoryDesc", dtResult.Rows[i]["CategoryDesc"].ToString());
                        Div = Div.Replace("@CategoryName", dtResult.Rows[i]["CategoryName"].ToString());
                        Div = Div.Replace("@CategoryID", dtResult.Rows[i]["CategaryID"].ToString()); 
                        Div = Div.Replace("@Class", dtResult.Rows[i]["CssName"].ToString());
                        Result += Div;
                    }
                }
                containercategory.InnerHtml = Result;
                hdnCategoryId.Value = GetCategoryNameToID(Request["category"]);
                ActivityData.InnerHtml = BindDataWithCategory(hdnCategoryId.Value,"");

            }
        }
        protected void btnHidden_Click(object sender, EventArgs e)
        {
            
            ActivityData.InnerHtml = BindDataWithCategory(hdnCategoryId.Value, "");
        }        
        public string GetCategoryNameToID(string CategoryName)
        {
            string SetCategoryID = "0";
            switch (CategoryName)
            {

                case "Food":
                    SetCategoryID = "1";
                    break;
                case "Places to Visit":
                    SetCategoryID = "2";
                    break;
                case "Activities":
                    SetCategoryID = "3";
                    break;
                case "Events":
                    SetCategoryID = "4";
                    break;
                case "Shopping":
                    SetCategoryID = "5";
                    break;
                case "Resorts":
                    SetCategoryID = "6";
                    break;
                default:
                    SetCategoryID = "0";
                    break;
            }
            return SetCategoryID;
        }
        public string BindDataWithCategory(string Category,string PlaceID)
        {

            DataTable dtResult;
            objSQLAccess = new SQLAccess();
            string exMessage = string.Empty;
            string Result = string.Empty;
            cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = GoExplorer.Constants.GetHotelPlusSubDetail;
            cmd.Parameters.AddWithValue(GoExplorer.Constants.CategaryID, Category);
            if (PlaceID != string.Empty)
            {
                cmd.Parameters.AddWithValue(GoExplorer.Constants.PlaceID, PlaceID);
            }
            if (Session["hdnLat"] != null)
            {
                cmd.Parameters.AddWithValue(GoExplorer.Constants.Latitude, Session["hdnLat"].ToString());
            }
            if (Session["hdnLog"] != null)
            {
                cmd.Parameters.AddWithValue(GoExplorer.Constants.Longitude, Session["hdnLog"].ToString());
            }
            dtResult = objSQLAccess.GetDt(cmd, ref exMessage);

            string Data = string.Empty;
            if (dtResult != null && dtResult.Rows.Count > 0)
            {
                for (int i = 0; i < dtResult.Rows.Count; i++)
                {
//                    Data = @" <div class=""col-md-3 col-sm-6 col-xs-12"">
//                                        <article class=""card"">
//                                            <a href=""destination-parent.html"" class=""featured-image"" style=""background-image: url(assets/images/featured-destination-1.jpg)"">
//                                                <div class=""featured-img-inner""></div>
//                                            </a>
//                                            <div class=""card-details"">
//                                                <h4 class=""card-title""><a>@Name</a></h4>
//                                                <h4 class=""card-title""><a>@Address</a></h4>
//                                                <h4 class=""card-title""><a>@types</a></h4>
//                                                <h4 class=""card-title""><a>Sydney, Australia</a></h4>
//                                                <div class=""meta-details clearfix"">
//                                                    <ul class=""hierarchy"">
//                                                        <li class=""symbol""><i class=""fa fa-map-marker""></i></li>
//                                                        <li><a href=""destination-parent.html"">View Map</a></li>
//                                                        <li class=""symbol""><i class=""fa fa-map-marker""></i></li>
//                                                        <li><a href=""destination-parent.html"">View Detail</a></li>
//                                                    </ul>
//                                                </div>
//                                            </div>
//                                        </article>
//                                    </div>";
                    Data = @"<div class=""col-md-3 col-sm-6 col-xs-12 product-card"">
                                        <article class=""card"">
                                            <a href=""destination-parent.html"" class=""featured-image"" style=""background-image: url(assets/images/featured-destination-1.jpg)"">
                                                <div class=""featured-img-inner"">
                                                </div>
                                            </a>
                                            <div class=""card-details"">
                                                <h5 class=""card-title"">@Name <span class=""product-rating""><i class=""fa fa-star fa-icon-product""></i><span>@Rating</span></span></h5>
                                                <div class=""meta-details clearfix"">
                                                    <div class=""col-xs-12 address"">
                                                        <div class=""col-xs-1 address""><i class=""fa fa-map-marker fa-product""></i></div>
                                                        <div class=""col-xs-9 address"">@Address</div>
                                                    </div>
                                                </div>
                                                <div class=""meta-details clearfix"">
                                                    <div class=""col-xs-12 address"">
                                                        <div class=""col-xs-1 address""><i class=""fa fa-hand-o-right fa-product""></i></div>
                                                        <div class=""col-xs-9 address"">@types</div>
                                                    </div>
                                                </div>
                                                <div class=""meta-details clearfix"">
                                                    <div class=""col-xs-12 address"">
                                                        <div class=""col-xs-1 address""><i class=""fa fa fa-map-signs fa-product""></i></div>
                                                        <div class=""col-xs-9 address"">@Distance</div>
                                                    </div>
                                                </div>
                                                <div class=""meta-details clearfix"">
                                                    <div class=""col-xs-12 address address-info"">
                                                        <div class=""col-xs-1 address""><i class=""fa fa fa-street-view fa-product""></i></div>
                                                        <div class=""col-xs-5 address""><a href=""#"" class=""link-view-map"">View Map</a></div>
                                                        <div class=""col-xs-1 address""><input type=""hidden"" id=""@hdnID"" runat=""server"" value=""@values"" /></div>
                                                        <div class=""col-xs-5 address"">
                                                            <a href=""#"" class=""btn btn-success btn-sm"" style=""float:right"">
                                                                <i class=""fa fa-check-square-o"" aria-hidden=""true""></i>
                                                                Add to plan
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>";
                    Data = Data.Replace("@hdnID", "hdnID" + Convert.ToString(i));
                    Data = Data.Replace("@values", dtResult.Rows[i]["Name"].ToString() + "@" + dtResult.Rows[i]["Address"].ToString() + "@" + dtResult.Rows[i]["types"].ToString() + "@" + dtResult.Rows[i]["Rating"].ToString() + "@" + dtResult.Rows[i]["Distance"].ToString() + "@" + dtResult.Rows[i]["PhoneNo"].ToString());
                    Data = Data.Replace("@Name", dtResult.Rows[i]["Name"].ToString());
                    Data = Data.Replace("@Address", dtResult.Rows[i]["Address"].ToString());
                    Data = Data.Replace("@types", dtResult.Rows[i]["types"].ToString());
                    Data = Data.Replace("@Rating", dtResult.Rows[i]["Rating"].ToString());
                    Data = Data.Replace("@Distance", dtResult.Rows[i]["Distance"].ToString());
                    Result += Data;
                    
                }
            }
            return Result;
        }
    }
}