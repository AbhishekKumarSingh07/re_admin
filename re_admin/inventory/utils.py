from re_admin.models import Products, Types, Tasks


"""
Product Getter
"""


def get_all_products():
    return Products.query.all()


def get_product_by_id(product_id):
    return Products.query.filter_by(product_id=product_id).first()


def get_product_by_name(product_name):
    return Products.query.filter_by(product_name=product_name).first()


def get_product_list_by_type(product_type):
    return Products.query.filter_by(product_type=product_type)


"""
Type Getter
"""


def get_all_type():
    return Types.query.all()


def get_type_by_id(type_id):
    return Types.query.filter_by(type_id=type_id).first()


def get_type_by_name(product_type):
    return Types.query.filter_by(product_type=product_type).first()


"""
Task Getter
"""


def get_all_tasks():
    return Tasks.query.all()


def get_task_by_id(task_id):
    return Tasks.query.filter_by(task_id=task_id).first()


def get_task_by_code(task_code):
    return Tasks.query.filter_by(task_code=task_code).first()


def get_task_by_name(task_name):
    return Tasks.query.filter_by(task_name=task_name).first()


def get_task_by_employee(employee_id):
    return Tasks.query.filter_by(employees_assigned=employee_id)