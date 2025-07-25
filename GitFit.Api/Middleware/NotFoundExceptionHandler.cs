using Microsoft.AspNetCore.Diagnostics;
using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Middleware
{
    public class NotFoundExceptionHandler : IExceptionHandler
    {
        public async ValueTask<bool> TryHandleAsync(HttpContext httpContext, Exception exception, CancellationToken cancellationToken)
        {
            if (exception is not KeyNotFoundException keyNotFoundException) { return await ValueTask.FromResult(false); }
            var logger = httpContext.RequestServices.GetRequiredService<ILogger<NotFoundExceptionHandler>>();
            logger.LogError(exception, "Not Found: {Message}.", keyNotFoundException.Message);
            var problemDetails = new ProblemDetails
            {
                Status = StatusCodes.Status404NotFound,
                Title = "Resource Not Found",
                Detail = keyNotFoundException.Message
            };
            httpContext.Response.StatusCode = problemDetails.Status.Value;
            await httpContext.Response.WriteAsJsonAsync(problemDetails, cancellationToken: cancellationToken);
            return true; // Indicate that the exception has been handled
        }
    }
}
