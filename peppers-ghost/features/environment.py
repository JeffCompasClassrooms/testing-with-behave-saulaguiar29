# features/environment.py for:
# - isitchristmas
# - peppers-ghost
# - basic-calculator

import behave_webdriver
from behave_webdriver.steps import *

def before_all(context):
    # Chrome options for GitHub Actions (headless, safe flags)
    chrome_options = {
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

    # behave_webdriver uses Selenium 3 under the hood (we pin it in CI)
    context.behave_driver = behave_webdriver.Chrome(options=chrome_options)

def after_all(context):
    # Be defensive in case driver failed to start
    if hasattr(context, "behave_driver") and context.behave_driver:
        context.behave_driver.quit()
