using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class EquipmentMaintenanceController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
