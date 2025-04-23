from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

@keyword
def verify_element_text(locator, expected_text):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    actual_text = seleniumlib.get_text(locator)
    BuiltIn().should_be_equal(actual_text, expected_text

def verify_wishlist_activity_trends():
    trends_element = driver.find_element_by_xpath("//div[@id='wishlist-activity-trends']")
    trends_text = trends_element.text
    assert "Additions" in trends_text, "Additions not found in wishlist activity trends"
    assert "Removals" in trends_text, "Removals not found in wishlist activity trends")