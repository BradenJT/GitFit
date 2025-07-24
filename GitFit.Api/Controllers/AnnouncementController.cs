using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class AnnouncementController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
