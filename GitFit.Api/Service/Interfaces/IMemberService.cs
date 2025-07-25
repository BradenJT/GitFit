using GitFit.Api.Models.Dtos.Member;

namespace GitFit.Api.Service.Interfaces
{
    public interface IMemberService
    {
        Task<IEnumerable<bool>> CreateMember(IEnumerable<MemberDto> memberDto);
        Task<IEnumerable<bool>> DeleteMember(IEnumerable<int> memberIds);
        Task<IEnumerable<MemberDto>> GetAllMembers(int? gymId, string status);
        Task<MemberDto?> GetMemberById(int id);
        Task<IEnumerable<bool>> UpdateMember(IEnumerable<MemberDto> memberDto);
    }
}
