using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class GymController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
