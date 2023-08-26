# download_script.py
from selenium import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument("--disable-popup-blocking")
chrome_options.add_experimental_option("prefs", {"download.default_directory": "D:\\"})

chromedriver_path = "path/to/chromedriver.exe"  # Replace with actual path
driver = webdriver.Chrome(executable_path=chromedriver_path, options=chrome_options)

driver.get("https://www.example.com")  # Replace with the URL triggering the download

# Perform actions that trigger the download

driver.quit()
