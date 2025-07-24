using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class MembershipPlanController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
