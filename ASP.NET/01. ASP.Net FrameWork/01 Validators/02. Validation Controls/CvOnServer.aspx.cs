using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class CvOnServer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ValidateName(object source, ServerValidateEventArgs args)
    {
        int size = int32.Parse(args.Value);
        if (size >= 8)
            args.IsValid = true;
        else
            args.IsValid = false;
    }

    protected void ValidateNationality(object source, ServerValidateEventArgs args)
    {
        string country= args.Value;
        if (country == "India")
            args.IsValid = true;
        else
            args.IsValid = false;
    }
}
