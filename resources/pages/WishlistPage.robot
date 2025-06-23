*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${WISHLIST_PAGE_URL}    ${BASE_URL}/wishlist

*** Keywords ***
Open Wishlist Page
    [Arguments]    ${url}=${WISHLIST_PAGE_URL}
    Go To    ${url}

Select Sorting Option
    [Arguments]    ${option}
    Click Element    xpath=//select[@id='sorting-options']
    Click Element    xpath=//option[text()='${option}']

Verify Wishlist Sorted Alphabetically
    ${wishlist_items}=    Get WebElements    xpath=//div[@class='wishlist-item']
    ${sorted_items}=    Sort List    ${wishlist_items}
    Should Be Equal As Strings    ${wishlist_items}    ${sorted_items}