from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options


def before_all(context):
    """Set up the browser before all tests"""
    chrome_options = Options()
    chrome_options.add_argument('--headless')
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--disable-dev-shm-usage')
    chrome_options.add_argument('--disable-gpu')
    chrome_options.add_argument('--window-size=1920,1080')
    chrome_options.add_argument('--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36')
    
    
    context.driver = webdriver.Chrome(options=chrome_options)
    context.driver.implicitly_wait(10)


def after_all(context):
    """Clean up after all tests"""
    if hasattr(context, 'driver'):
        context.driver.quit()