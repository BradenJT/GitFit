using GitFit.Api.Models;
using GitFit.Api.Service.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MemberController(IMemberService _memberService) : ControllerBase
    {
        [HttpGet, Route("GetAllMembers")]
        public async Task<IEnumerable<Member>> GetAllMembers([FromQuery] int? gymId, [FromQuery] string status) => await _memberService.GetAllMembers(gymId, status);

        [HttpGet, Route("GetMemberById/{id}")]
        public async Task<Member> GetMemberById(int id) => await _memberService.GetMemberById(id);

        [HttpPost, Route("CreateMember")]
        public async Task<Member> CreateMember([FromBody] Member member) => await _memberService.CreateMember(member);

        [HttpPut, Route("UpdateMember/{id}")]
        public async Task<Member> UpdateMember(int id, [FromBody] Member member) => await _memberService.UpdateMember(id, member);

        [HttpDelete, Route("DeleteMember/{id}")]
        public async Task<bool> DeleteMember(int id) => await _memberService.DeleteMember(id);
    }
}
