from flask import Flask, render_template
from re_admin import main_app
from re_admin.paths import logconf
import logging.config

app = main_app()
logger = logging.getLogger('readmin')


def init_log():
    logging.config.fileConfig(logconf)
    logging._srcfile = None
    logging.logThreads = 0
    logging.logProcesses = 0


if __name__ == '__main__':
    init_log()
    app.run(debug=True)
