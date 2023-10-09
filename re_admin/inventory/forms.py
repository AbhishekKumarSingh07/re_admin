from flask_wtf import FlaskForm
from flask_wtf.file import FileField, FileAllowed
from wtforms import StringField, SubmitField, IntegerField, DecimalField, BooleanField
from wtforms.validators import DataRequired, Length, NumberRange
from wtforms_sqlalchemy.fields import QuerySelectField



"""
Product Form
"""


class AddProductForm(FlaskForm):
    product_name = StringField("Name of the Product", validators=[DataRequired(), Length(min=1, max=50)])
    price = DecimalField(
        "Price", validators=[DataRequired(), NumberRange(min=0, max=None)]
    )
    quantity = IntegerField("Quantity", validators=[DataRequired()])
    availablity = BooleanField("Tick if available")
    product_type = QuerySelectField(
        query_factory=product_type_list, allow_blank=False, get_label="product_type"
    )
    details = TextAreaField("Specification", validators=[DataRequired()])
    submit = SubmitField("Add")



class EditProductForm(FlaskForm):
    pass


"""
Product Type Form
"""


class AddProductTypeForm(FlaskForm):
    pass


class EditProductTypeForm(FlaskForm):
    pass


"""
Task Form
"""


class AddTaskForm(FlaskForm):
    pass


class EditTaskForm(FlaskForm):
    pass
