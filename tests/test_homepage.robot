*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Homepage load verification
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Wait Until Page Contains Element    //div[@class='css-1pfq5u']
    Close Browser