using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    public class PaymentController : ControllerBase
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
