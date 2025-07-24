using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class ClassEnrollmentController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
