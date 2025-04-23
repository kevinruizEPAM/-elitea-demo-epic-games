*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Search functionality
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Input Text    //input[@placeholder='Search']    Fortnite
    Press Key    //input[@placeholder='Search']    ENTER
    Wait Until Page Contains Element    //div[contains(text(),'Fortnite')]
    Close Browser