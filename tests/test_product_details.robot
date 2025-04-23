*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Product details display
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //div[contains(text(),'Fortnite')]
    Wait Until Page Contains Element    //div[contains(text(),'Price')]
    Wait Until Page Contains Element    //div[contains(text(),'Description')]
    Close Browser