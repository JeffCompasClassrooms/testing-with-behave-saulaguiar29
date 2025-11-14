# features/environment.py for advanced-humblebundle

from selenium import webdriver
from selenium.webdriver.chrome.options import Options

def before_all(context):
    """Set up Chrome WebDriver for advanced Humble Bundle tests."""
    chrome_options = Options()
    chrome_options.add_argument("--headless=new")
    chrome_options.add_argument("--no-sandbox")
    chrome_options.add_argument("--disable-dev-shm-usage")
    chrome_options.add_argument("--disable-gpu")
    chrome_options.add_argument("--window-size=1920,1080")

    # Selenium 4 will use Selenium Manager to find/download chromedriver
    context.driver = webdriver.Chrome(options=chrome_options)

def after_all(context):
    """Tear down the browser after all tests."""
    if hasattr(context, "driver") and context.driver:
        context.driver.quit()
