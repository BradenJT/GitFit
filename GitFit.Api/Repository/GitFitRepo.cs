using GitFit.Api.Models;
using GitFit.Api.Repositories.Interfaces;

namespace GitFit.Api.Repositories
{
    public class GitFitRepo(GitFitContext _gfDb) : IGitFitRepo
    {
        public IQueryable<Announcement> Announcements() => _gfDb.Announcements.AsQueryable();
        public IQueryable<Class> Classes() => _gfDb.Classes.AsQueryable();
        public IQueryable<ClassEnrollment> ClassEnrollments() => _gfDb.ClassEnrollments.AsQueryable();
        public IQueryable<CheckIn> CheckIns() => _gfDb.CheckIns.AsQueryable();
        public IQueryable<Employee> Employees() => _gfDb.Employees.AsQueryable();
        public IQueryable<EmployeeSchedule> EmployeeSchedules() => _gfDb.EmployeeSchedules.AsQueryable();
        public IQueryable<Equipment> Equipment() => _gfDb.Equipment.AsQueryable();
        public IQueryable<EquipmentMaintenance> EquipmentMaintenance() => _gfDb.EquipmentMaintenances.AsQueryable();
        public IQueryable<Gym> Gyms() => _gfDb.Gyms.AsQueryable();
        public IQueryable<Member> Members() => _gfDb.Members.AsQueryable();
        public IQueryable<MembershipPlan> MembershipPlans() => _gfDb.MembershipPlans.AsQueryable();
        public IQueryable<MemberSubscription> MemberSubscriptions() => _gfDb.MemberSubscriptions.AsQueryable();
        public IQueryable<Payment> Payments() => _gfDb.Payments.AsQueryable();
        public IQueryable<Payroll> Payrolls() => _gfDb.Payrolls.AsQueryable();
    }
}
