*** Settings ***
Resource    ../resources/common.robot
Test Setup    Open Browser To Epic Games Store
Test Teardown    Close Browser

*** Test Cases ***
Verify Homepage Loads Successfully
    Wait Until Page Contains Element    ${HOMEPAGE_LOGO}
    Page Should Contain Element    ${FEATURED_GAMES_SECTION}
    Page Should Contain Element    ${NAVIGATION_MENU}