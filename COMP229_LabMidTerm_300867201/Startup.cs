using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(COMP229_LabMidTerm_300867201.Startup))]
namespace COMP229_LabMidTerm_300867201
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
