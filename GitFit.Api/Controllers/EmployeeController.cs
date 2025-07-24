using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class EmployeeController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
