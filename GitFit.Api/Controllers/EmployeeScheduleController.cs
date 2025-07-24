using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class EmployeeScheduleController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
