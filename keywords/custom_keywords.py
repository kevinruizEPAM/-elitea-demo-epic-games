from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

@keyword
def verify_element_text(locator, expected_text):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    actual_text = seleniumlib.get_text(locator)
    BuiltIn().should_be_equal(actual_text, expected_text)