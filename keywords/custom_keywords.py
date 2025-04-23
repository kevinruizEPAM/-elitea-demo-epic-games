from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver

class CustomKeywords:

    def __init__(self):
        self.driver = webdriver.Chrome()

    def wait_for_element(self, locator, timeout=10):
        WebDriverWait(self.driver, timeout).until(EC.presence_of_element_located((By.XPATH, locator)))

    def input_text(self, locator, text):
        element = self.driver.find_element(By.XPATH, locator)
        element.clear()
        element.send_keys(text)

    def click_element(self, locator):
        element = self.driver.find_element(By.XPATH, locator)
        element.click()