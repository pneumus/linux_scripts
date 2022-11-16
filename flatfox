import os
import time

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

import logging
logging.basicConfig(level=logging.INFO)


class FlatFoxControl:

    def __init__(self):
        """ Opening Google Chrome """
        # Path to chromedriver
        chrome_driver_path = "chromedriver.exe"
        self.ser = Service(chrome_driver_path)
        self.op = webdriver.ChromeOptions()
        self._options()
        # self.op.add_experimental_option("detach", True)
        self.driver = webdriver.Chrome(service=self.ser, options=self.op)
        #
        self.timeout = 10
        #
        self.elapsed_time = 0
        try:
            pass
        except Exception as e:
            logging.error('The following exception occurred while trying to open Google Chrome:\n' + str(e))
        finally:
            logging.info('Google Chrome successfully opened')

    def _options(self):
        self.op.add_argument('--ignore-certificate-errors')
        # self.op.add_argument("--test-type")
        # self.op.add_argument("--headless")
        self.op.add_argument("--incognito")
        self.op.add_argument('--disable-gpu') if os.name == 'nt' else None  # Windows workaround
        self.op.add_argument("--verbose")

    def load_page(self):
        """ Loading Page """
        page_loading_attempts = 5
        page_url = 'https://flatfox.ch/en/'
        logging.info("Loading the following page: " + str(page_url))
        for i in range(page_loading_attempts, 0, -1):
            try:
                logging.info("Attempt #" + str(page_loading_attempts - i + 1))
                self.driver.get(page_url)
                WebDriverWait(self.driver, self.timeout).until(
                    # Check if page has been loaded successfully
                    EC.presence_of_element_located((By.ID, "flatfox-navbar")))
            except Exception as e:
                if page_loading_attempts == 0:
                    error_message = 'The following exception occurred while loading RMP on Chrome:\n' + str(e)
                    raise AssertionError(error_message)
                else:
                    continue
            logging.info('Page successfully loaded on Chrome')
            break

    def close_parent_browser_tab(self):
        logging.info('Switching to parent browser tab and closing it ...')
        for i in range(10):
            try:
                logging.info("Attempt #" + str(i+1))
                time.sleep(3)
                parent = self.driver.window_handles[0]
                child = self.driver.window_handles[1]
                self.driver.switch_to.window(parent)
                self.driver.close()
                self.driver.switch_to.window(child)
                print("Parent tab closed.")
            except Exception as e:
                if i == 5:
                    raise AssertionError("Could not close parent tab!\nException: " + str(e))
                else:
                    continue
            break

    def select_listing_type(self):
        # Open Listing Type Drop-Down Menu
        listing_type_xpath = "/html/body/span/div/div[1]/div/div/button[1]/div/span"
        listing_type_button = self.driver.find_element(By.XPATH, listing_type_xpath)
        listing_type_button.click()
        #
        # Select "For rent" from Drop-Down Menu
        logging.info("Selecting listing type 'For rent'")
        listing_type_for_rent_xpath = "/html/body/div[2]/span/span/div/button[1]"
        listing_type_for_rent_button = self.driver.find_element(By.XPATH, listing_type_for_rent_xpath)
        listing_type_for_rent_button.click()
        #
        # Select "For sale" from Drop-Down Menu
        # logging.info("Selecting listing type 'For sale'")
        # listing_type_for_sale_xpath = "/html/body/div[2]/span/span/div/button[2]"
        # listing_type_for_sale_button = self.driver.find_element(By.XPATH, listing_type_for_sale_xpath)
        # listing_type_for_sale_button.click()
        #
        # Select "Apartment" from Drop-Down Menu
        logging.info("Selecting listing type 'Apartment'")
        listing_type_apartment_xpath = "/html/body/div[2]/span/span/div/button[3]"
        listing_type_apartment_button = self.driver.find_element(By.XPATH, listing_type_apartment_xpath)
        listing_type_apartment_button.click()

    def set_min_and_max_prize(self, min_prize, max_prize):
        price_button_xpath = "/html/body/span/div/div[1]/div/div/button[3]/div/div/div/span/i"
        price_button = self.driver.find_element(By.XPATH, price_button_xpath)
        price_button.click()
        time.sleep(.5)
        price_button.click()
        #
        # Set Minimum Price
        logging.info("Set minimum price to " + str(min_prize))
        min_text_entry_xpath = "/html/body/div[2]/span/span/div/div[1]/input[1]"
        min_text_entry = self.driver.find_element(By.XPATH, min_text_entry_xpath)
        min_text_entry.send_keys(str(min_prize))
        #
        # Set Maximum Price
        logging.info("Setting maximum price to " + str(max_prize))
        max_text_entry_xpath = "/html/body/div[2]/span/span/div/div[1]/input[2]"
        max_text_entry = self.driver.find_element(By.XPATH, max_text_entry_xpath)
        max_text_entry.send_keys(str(max_prize))
        max_text_entry.send_keys(Keys.ENTER)

    def sort_by_newest(self):
        logging.info("Setting Sort by: Newest")
        sort_xpath = "/html/body/span/div/div[1]/div/div/button[5]/div/span"
        sort_button = self.driver.find_element(By.XPATH, sort_xpath)
        sort_button.click()
        # time.sleep(.5)
        # sort_button.click()
        #
        sort_newest_xpath = "/html/body/div[2]/span/span/div/button[1]"
        sort_newest_button = WebDriverWait(self.driver, self.timeout).until(
            EC.presence_of_element_located((By.XPATH, sort_newest_xpath)))
        sort_newest_button.click()

    def refresh_page(self):
        self.driver.refresh()

    def search(self, phrase):
        logging.info("Searching for '" + str(phrase) + "' ...")
        search_field_class_name = "mapboxgl-ctrl-geocoder--input"
        search_field = self.driver.find_element(By.CLASS_NAME, search_field_class_name)
        search_field.send_keys(str(phrase))
        #
        search_button_xpath = "/html/body/div[2]/div[2]/div/div/div/form/button"
        search_button = self.driver.find_element(By.XPATH, search_button_xpath)
        search_button.click()

    def search_region(self, phrase):
        logging.info("Searching for region '" + str(phrase) + "' ...")
        region_search_field_xpath = '/html/body/span/div/div[1]/div/div/div[1]/div/input'
        region_search_field = self.driver.find_element(By.XPATH, region_search_field_xpath)
        region_search_field.send_keys(str(phrase))
        time.sleep(1)
        region_search_field.send_keys(Keys.ENTER)

    def close(self):
        try:
            logging.info('Closing Browser...')
            self.driver.quit()
        except Exception as e:
            logging.error('The following exception occurred when trying to close the browser: ' + str(e))
            raise AssertionError("Could not close browser!")
        finally:
            logging.info('Browser has been successfully closed')


timeout = 0

flat_fox = FlatFoxControl()
time.sleep(timeout)

flat_fox.load_page()
time.sleep(timeout)

flat_fox.search("Zurich")
time.sleep(timeout)

flat_fox.search_region("8003")
time.sleep(timeout)

flat_fox.select_listing_type()
time.sleep(timeout)

flat_fox.set_min_and_max_prize(1400, 1800)
time.sleep(timeout)

flat_fox.sort_by_newest()
time.sleep(timeout)

time.sleep(5)
flat_fox.close()
