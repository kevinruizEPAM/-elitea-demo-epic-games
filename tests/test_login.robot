*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login functionality
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //span[text()='Sign In']
    Input Text    //input[@name='email']    test@example.com
    Input Text    //input[@name='password']    invalidpassword
    Click Element    //button[@type='submit']
    Wait Until Page Contains Element    //div[contains(text(),'Invalid login credentials')]
    Close Browser