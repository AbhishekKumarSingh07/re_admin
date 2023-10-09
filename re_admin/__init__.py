from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

from re_admin.config import Config

db = SQLAlchemy()


def main_app():
    app = Flask(__name__)

    from re_admin.models import Employees, Tasks, Types, Products

    app.config.from_object(Config)
    db.init_app(app)
    from re_admin.db_test import check1
    print("Before App Context")
    with app.app_context():
        db.create_all()
        check1()

    return app
