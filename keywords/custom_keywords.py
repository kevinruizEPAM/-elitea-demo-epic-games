from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

@keyword
def sort_wishlist_alphabetically():
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    seleniumlib.click_button('xpath=//button[@id="sort-alphabetical"]')

@keyword
def verify_wishlist_sorted_alphabetically():
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    items = seleniumlib.get_webelements('xpath=//div[@class="wishlist-item"]')
    item_names = [item.text for item in items]
    assert item_names == sorted(item_names), "Wishlist is not sorted alphabetically"

@keyword
def verify_element_text(locator, expected_text):
    seleniumlib = BuiltIn().get_library_instance('SeleniumLibrary')
    actual_text = seleniumlib.get_text(locator)
    BuiltIn().should_be_equal(actual_text, expected_text)