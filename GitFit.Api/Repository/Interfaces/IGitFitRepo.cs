using GitFit.Api.Models;

namespace GitFit.Api.Repositories.Interfaces
{
    public interface IGitFitRepo
    {
        IQueryable<Announcement> Announcements();
        IQueryable<CheckIn> CheckIns();
        IQueryable<ClassEnrollment> ClassEnrollments();
        IQueryable<Class> Classes();
        IQueryable<Employee> Employees();
        IQueryable<EmployeeSchedule> EmployeeSchedules();
        IQueryable<Equipment> Equipment();
        IQueryable<EquipmentMaintenance> EquipmentMaintenance();
        IQueryable<Gym> Gyms();
        IQueryable<Member> Members();
        IQueryable<MembershipPlan> MembershipPlans();
        IQueryable<MemberSubscription> MemberSubscriptions();
        IQueryable<Payment> Payments();
        IQueryable<Payroll> Payrolls();
    }
}
