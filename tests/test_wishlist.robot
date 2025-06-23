*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/locators.robot
Resource   ../resources/variables.robot
Resource   ../keywords/custom_keywords.py

*** Test Cases ***
Verify Sorting Wishlist Alphabetically
    [Documentation]    Verify that the wishlist is sorted alphabetically when the user selects the alphabetical order option.
    [Tags]    wishlist    sorting
    Open Browser    ${BASE_URL}    ${BROWSER}
    Login To Application    ${USERNAME}    ${PASSWORD}
    Go To Wishlist Page
    Sort Wishlist Alphabetically
    Verify Wishlist Sorted Alphabetically
    Close Browser