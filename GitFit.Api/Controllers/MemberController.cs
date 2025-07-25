using GitFit.Api.Models;
using GitFit.Api.Models.Dtos.Member;
using GitFit.Api.Service.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace GitFit.Api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MemberController(IMemberService _memberService) : ControllerBase
    {
        [HttpGet, Route("GetAllMembers")]
        public async Task<IEnumerable<MemberDto>> GetAllMembers([FromQuery] int? gymId, [FromQuery] string status) => await _memberService.GetAllMembers(gymId, status);

        [HttpGet, Route("GetMemberById/{id}")]
        public async Task<MemberDto?> GetMemberById(int id) => await _memberService.GetMemberById(id);

        [HttpPost, Route("CreateMember")]
        public async Task<IEnumerable<bool>> CreateMember([FromBody] IEnumerable<MemberDto> member) => await _memberService.CreateMember(member);

        [HttpPut, Route("UpdateMember/{id}")]
        public async Task<IEnumerable<bool>> UpdateMember([FromBody] IEnumerable<MemberDto> member) => await _memberService.UpdateMember(member);

        [HttpDelete, Route("DeleteMember/{id}")]
        public async Task<IEnumerable<bool>> DeleteMember(IEnumerable<int> id) => await _memberService.DeleteMember(id);
    }
}
