using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class PayrollController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
