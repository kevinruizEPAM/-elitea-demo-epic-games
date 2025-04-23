*** Settings ***
Library           SeleniumLibrary
Library           custom_keywords.py
Resource          ../resources/locators.robot
Resource          ../resources/variables.robot

*** Variables ***
${ANALYTICS_URL}  ${ENVIRONMENT_URL}/analytics

*** Test Cases ***
Verify analytics for wishlist activity trends
    [Documentation]  Verify analytics for wishlist activity trends
    [Tags]  Analytics  Wishlist
    Open Browser  ${ANALYTICS_URL}  ${BROWSER}
    Login To Epic Games Store
    Access Analytics Page
    Verify Wishlist Activity Trends
    [Teardown]  Close Browser

*** Keywords ***
Login To Epic Games Store
    [Arguments]  ${username}  ${password}
    Input Text  ${LOCATOR_USERNAME}  ${username}
    Input Text  ${LOCATOR_PASSWORD}  ${password}
    Click Button  ${LOCATOR_LOGIN_BUTTON}

Access Analytics Page
    Click Link  ${LOCATOR_ANALYTICS_LINK}

Verify Wishlist Activity Trends
    Element Should Be Visible  ${LOCATOR_WISHLIST_ACTIVITY_TRENDS}
    ${wishlist_trends}  Get Text  ${LOCATOR_WISHLIST_ACTIVITY_TRENDS}
    Should Contain  ${wishlist_trends}  "Additions"
    Should Contain  ${wishlist_trends}  "Removals"