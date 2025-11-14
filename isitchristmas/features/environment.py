import behave_webdriver
from behave_webdriver.steps import *

def before_all(context):
    chrome_opts = {
        "chromeOptions": {
            "args": [
                "--headless",            # required for GitHub Actions
                "--no-sandbox",
                "--disable-gpu",
                "--disable-dev-shm-usage",
                "--disable-extensions",
                "--window-size=1920,1080"
            ]
        }
    }

    context.behave_driver = behave_webdriver.Chrome(options=chrome_opts)

def after_all(context):
    if hasattr(context, "behave_driver"):
        context.behave_driver.quit()
