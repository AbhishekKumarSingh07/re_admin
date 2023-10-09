from re_admin.models import Employees,Products,Tasks,Types, task_employee_association


def check1():
    print(Tasks.query.filter(Tasks.employees_assigned.any(Employees.employee_id == 1)).all())

