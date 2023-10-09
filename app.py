from flask import Flask, render_template
from re_admin import main_app


app = main_app()


if __name__ == '__main__':
    app.run(debug=True)
