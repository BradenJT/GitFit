using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class EquipmentController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
