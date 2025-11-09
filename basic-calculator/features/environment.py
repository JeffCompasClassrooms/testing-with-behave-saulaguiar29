from selenium import webdriver
from selenium.webdriver.chrome.options import Options


def before_all(context):
    """Set up the browser before all tests"""
    chrome_options = Options()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--disable-dev-shm-usage')
    chrome_options.add_argument('--disable-gpu')
    chrome_options.add_argument('--window-size=1920,1080')
    
    # Create Chrome driver - assumes chromedriver is in PATH
    context.behave_driver = webdriver.Chrome(options=chrome_options)
    context.behave_driver.implicitly_wait(10)


def after_all(context):
    """Clean up after all tests"""
    if hasattr(context, 'behave_driver'):
        context.behave_driver.quit()