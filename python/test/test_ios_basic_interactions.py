import pytest
import os

from appium import webdriver
from helpers import take_screenhot_and_syslog, IOS_APP_PATH, EXECUTOR


class TestIOSBasicInteractions():

    @pytest.fixture(scope='function')
    def driver(self, request, device_logger):
        calling_request = request._pyfuncitem.name
        driver = webdriver.Remote(
            command_executor=EXECUTOR,
            desired_capabilities={
                'app': IOS_APP_PATH,
                'platformName': 'iOS',
                'automationName': 'XCUITest',
                'platformVersion': os.getenv('IOS_PLATFORM_VERSION') or '12.1',
                'deviceName': os.getenv('IOS_DEVICE_NAME') or 'iPhone 8',
            }
        )

        def fin():
            # take_screenhot_and_syslog(driver, device_logger, calling_request)
            driver.quit()

        request.addfinalizer(fin)

        driver.implicitly_wait(10)
        return driver

    def test_basic_example(self, driver):
        textButton = driver.find_element_by_accessibility_id('Find Your Library')
        assert textButton.text == 'Find Your Library'

        textButton.click()

        textButton2 = driver.find_element_by_accessibility_id('Brooklyn Public Library')
        assert textButton2.text == 'Brooklyn Public Library'
