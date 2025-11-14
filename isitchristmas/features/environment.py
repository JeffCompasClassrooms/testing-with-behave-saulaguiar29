import behave_webdriver
from behave_webdriver.steps import *

def before_all(context):
    desired_capabilities = {
        "browserName": "chrome",
        "chromeOptions": {
            "args": [
                "--headless",
                "--no-sandbox",
                "--disable-dev-shm-usage",
                "--disable-gpu",
                "--disable-extensions",
                "--window-size=1920,1080",
            ]
        }
    }

    context.behave_driver = behave_webdriver.Chrome(
        desired_capabilities=desired_capabilities
    )

def after_all(context):
    if hasattr(context, "behave_driver") and context.behave_driver:
        context.behave_driver.quit()
