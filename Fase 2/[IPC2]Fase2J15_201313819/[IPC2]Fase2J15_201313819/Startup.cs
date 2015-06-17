using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_IPC2_Fase2J15_201313819.Startup))]
namespace _IPC2_Fase2J15_201313819
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
