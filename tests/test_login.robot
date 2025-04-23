*** Settings ***
Resource    ../resources/common.robot
Resource    ../configs/environment_variables.robot
Test Setup    Open Browser To Epic Games Store
Test Teardown    Close Browser

*** Test Cases ***
Verify Login Functionality
    [Documentation]    Test the login functionality of the Epic Games Store
    Click Element    ${LOGIN_BUTTON}
    Wait Until Page Contains Element    css=input[name="email"]
    Input Text    css=input[name="email"]    ${TEST_USERNAME}
    Input Password    css=input[name="password"]    ${TEST_PASSWORD}
    Click Element    css=button[type="submit"]
    Wait Until Page Contains Element    css=.css-1a8kz8p    # User account menu
    Page Should Contain Element    css=.css-1a8kz8p