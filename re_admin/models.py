from datetime import datetime
from re_admin import db
from flask_login import UserMixin
from itsdangerous.url_safe import URLSafeTimedSerializer as Serializer
from flask import current_app

task_employee_association = db.Table(
    'task_employee_association',
    db.Column('task_id', db.Integer, db.ForeignKey('tasks.task_id')),
    db.Column('employee_id', db.Integer, db.ForeignKey('employees.employee_id'))
)

# Association table for the many-to-many relationship between Task and Product
task_product_association = db.Table(
    'task_product_association',
    db.Column('task_id', db.Integer, db.ForeignKey('tasks.task_id')),
    db.Column('product_id', db.Integer, db.ForeignKey('products.product_id'))
)


class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    user_role = db.Column(db.String(20), unique=True, nullable=False)
    first_name = db.Column(db.String(20), nullable=False)
    last_name = db.Column(db.String(20))
    contact_num = db.Column(db.String(13), unique=True, nullable=False)
    password = db.Column(db.String(20), nullable=False)

    def get_reset_token(self):
        s = Serializer(current_app.config["SECRET_KEY"])
        return s.dumps({"userid": self.id}).decode("utf-8")

    @staticmethod
    def verify_reset_token(token):
        s = Serializer(current_app.config["SECRET_KEY"])
        try:
            userid = s.loads(token)["userid"]
        except Exception as exception:
            return None
        return User.query.get(userid)

    def __repr__(self) -> str:
        return f"User('{self.user_name}', '{self.first_name}', '{self.last_name}', '{self.contact_num}', '{self.email}', '{self.image_file}' )"


class Employees(db.Model):
    employee_id = db.Column(db.Integer, primary_key=True)
    first_name = db.Column(db.String(20), nullable=False)
    last_name = db.Column(db.String(20))
    contact_num = db.Column(db.String(13), unique=True, nullable=False)

    assigned_tasks = db.relationship(
        "Tasks",
        secondary=task_employee_association,
        back_populates="employees_assigned"
    )

    def __repr__(self) -> str:
        return f"Employee('{self.first_name}', '{self.last_name}', '{self.contact_num}', '{self.email}', )"


class Types(db.Model):
    type_id = db.Column(db.Integer, primary_key=True)
    product_type = db.Column(db.String(20), unique=True, nullable=False)
    product = db.relationship("Products", backref="type", lazy=True)

    def __repr__(self) -> str:
        return f"Types('{self.id}', '{self.product_type}' )"


class Products(db.Model):
    product_id = db.Column(db.Integer, primary_key=True)
    product_name = db.Column(db.String(20), unique=True, nullable=False)
    price = db.Column(db.Numeric(), nullable=False)
    quantity = db.Column(db.Integer, nullable=False)
    is_available = db.Column(db.Boolean, default=False, nullable=False)
    details = db.Column(db.Text, nullable=False)
    product_type = db.Column(db.Integer, db.ForeignKey("types.type_id"), nullable=False)

    required_tasks = db.relationship(
        "Tasks",
        secondary=task_product_association,
        back_populates="products_required"
    )

    def __repr__(self) -> str:
        return f"Products('{self.product_name}', '{self.price}', '{self.quantity}', '{self.availablity}', '{self.details}', {self.product_type}' )"


class Tasks(db.Model):
    task_id = db.Column(db.Integer, primary_key=True)
    task_code = db.Column(db.String(255), nullable=False)
    task_name = db.Column(db.String(255), nullable=False)
    task_details = db.Column(db.Text)
    location = db.Column(db.String(255))
    date_assigned = db.Column(db.DateTime, default=datetime.utcnow)

    employees_assigned = db.relationship(
        "Employee",
        secondary=task_employee_association,
        back_populates="assigned_tasks"
    )

    products_required = db.relationship(
        "Product",
        secondary=task_product_association,
        back_populates="required_tasks"
    )

    def __repr__(self) -> str:
        return f"Tasks('{self.task_code}', '{self.task_name}', '{self.task_details}','{self.products_required}','{self.employees_assigned}' )"
