using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class ClassController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
