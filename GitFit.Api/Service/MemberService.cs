using GitFit.Api.Models;
using GitFit.Api.Models.Dtos.Member;
using GitFit.Api.Repositories;
using GitFit.Api.Repositories.Interfaces;
using GitFit.Api.Service.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace GitFit.Api.Service
{
    public class MemberService(IGitFitRepo _gitFitRepo) : IMemberService
    {
        public async Task<IEnumerable<MemberDto>> GetAllMembers(int? gymId, string status)
            => await _gitFitRepo.Members().Where(m => 
                (!gymId.HasValue || m.GymId == gymId) && 
                (string.IsNullOrEmpty(status) || m.Status.Equals(status, StringComparison.OrdinalIgnoreCase)))
                .Select(m => new MemberDto
                {
                    MemberId = m.MemberId,
                    GymId = m.GymId,
                    FirstName = m.FirstName,
                    LastName = m.LastName,
                    Email = m.Email,
                    Phone = m.Phone,
                    DateOfBirth = m.DateOfBirth,
                    JoinDate = m.JoinDate,
                    Status = m.Status,
                    EmergencyContactName = m.EmergencyContactName,
                    EmergencyContactPhone = m.EmergencyContactPhone
                }).ToListAsync();

        public async Task<MemberDto?> GetMemberById(int id)
            =>  await _gitFitRepo.Members()
                .Where(m => m.MemberId == id)
                .Select(m => new MemberDto
                {
                    MemberId = m.MemberId,
                    GymId = m.GymId,
                    FirstName = m.FirstName,
                    LastName = m.LastName,
                    Email = m.Email,
                    Phone = m.Phone,
                    DateOfBirth = m.DateOfBirth,
                    JoinDate = m.JoinDate,
                    Status = m.Status,
                    EmergencyContactName = m.EmergencyContactName,
                    EmergencyContactPhone = m.EmergencyContactPhone
                }).FirstOrDefaultAsync();

        public async Task<IEnumerable<bool>> CreateMember(IEnumerable<MemberDto> memberDto)
        {
            try
            {
                var resonseList = new List<bool>();
                foreach (var m in memberDto)
                {
                    var member = new Member
                    {
                        GymId = m.GymId,
                        FirstName = m.FirstName,
                        LastName = m.LastName,
                        Email = m.Email,
                        Phone = m.Phone,
                        DateOfBirth = m.DateOfBirth,
                        JoinDate = DateTime.Now,
                        Status = m.Status,
                        EmergencyContactName = m.EmergencyContactName,
                        EmergencyContactPhone = m.EmergencyContactPhone
                    };
                   resonseList.Add(await _gitFitRepo.CreateMember(member));
                }
                return resonseList;
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        public async Task<IEnumerable<bool>> UpdateMember(IEnumerable<MemberDto> memberDto)
        {
            try
            {
                var responseList = new List<bool>();
                foreach (var m in memberDto)
                {
                    var member = await _gitFitRepo.Members().FirstOrDefaultAsync(x => x.MemberId == m.MemberId);
                    if (member == null) 
                    {
                        responseList.Add(false); // Member not found
                        continue; // Skip to next iteration if member not found
                    }
                    {
                        member.GymId = m.GymId;
                        member.FirstName = m.FirstName;
                        member.LastName = m.LastName;
                        member.Email = m.Email;
                        member.Phone = m.Phone;
                        member.DateOfBirth = m.DateOfBirth;
                        member.JoinDate = DateTime.Now;
                        member.Status = m.Status;
                        member.EmergencyContactName = m.EmergencyContactName;
                        member.EmergencyContactPhone = m.EmergencyContactPhone;
                        responseList.Add(await _gitFitRepo.UpdateMember(member));
                    }
                }
                return responseList;
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public async Task<IEnumerable<bool>> DeleteMember(IEnumerable<int> memberIds)
        {
            try
            {
                var responseList = new List<bool>();
                foreach (var id in memberIds)
                {
                    responseList.Add(await _gitFitRepo.DeleteMember(id));
                }
                return responseList;
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
