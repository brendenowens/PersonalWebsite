using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace PersonalWebsite
{
    public partial class Finished : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(WebsiteEntities tables = new WebsiteEntities())
            {
                var finishedProjects = tables.Projects.Where(x => x.Completed == true).Select(x => x);
                LiteralControl projectGallery = new LiteralControl();
                string tableStart = "<table class=\"table table-striped table-hover \"><thead><tr><th>#</th><th>Name</th><th>Description</th><th>Type</th><th>Language</th><th>Code</th></tr></thead><tbody>";
                projectGallery.Text += tableStart;
                int count = 1;
                string projectHTML;
                foreach(Project proj in finishedProjects)
                {
                    if (count % 2 == 1)
                    {
                        projectHTML = @"<tr><td>" + count.ToString() + @"</td><td>" + proj.Name.ToString() + @"</td><td>" + proj.Description.ToString() + @"</td><td>" + proj.Type.ToString() + @"</td><td>" + proj.Language.ToString() + @"</td><td><a href=""" + proj.Link.ToString() + @"""class=""btn btn-success"">Source</a>";
                    }
                    else
                    {
                        projectHTML = @"<tr class=""info""><td>" + count.ToString() + @"</td><td>" + proj.Name.ToString() + @"</td><td>" + proj.Description.ToString() + @"</td><td>" + proj.Type.ToString() + @"</td><td>" + proj.Language.ToString() + @"</td><td><a href=""" + proj.Link.ToString() + @"""class=""btn btn-success"">Source</a>";
                    }
                        count++;
                    projectGallery.Text += projectHTML;
                }
                projectGallery.Text += @"</tbody></table>";
                finishedProjectsDiv.Controls.Add(projectGallery);
                
            }
        }
    }
}