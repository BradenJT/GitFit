using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class CheckInController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
