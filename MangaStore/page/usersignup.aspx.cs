using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Windows.Documents;

namespace MangaStore.page
{
    public partial class usersignup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DropDownList1.DataSource = GetCountryList();
                DropDownList1.DataBind();
            }
        }

        public static List<string> GetCountryList()
        {
            List<string> Countrylist = new List<string>();

            CultureInfo[] getCultureInfo = CultureInfo.GetCultures(CultureTypes.SpecificCultures);

            foreach (CultureInfo ci in getCultureInfo)
            {
                RegionInfo getRegionInfo = new RegionInfo(ci.LCID);
                if (!(Countrylist.Contains(getRegionInfo.EnglishName)))
                {
                    Countrylist.Add(getRegionInfo.EnglishName);
                }
            }
            Countrylist.Sort();
            return Countrylist;
        }
    }
}
