*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Responsiveness testing
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Set Window Size    1920    1080
    Wait Until Page Contains Element    //div[@class='css-1pfq5u']
    Set Window Size    1024    768
    Wait Until Page Contains Element    //div[@class='css-1pfq5u']
    Set Window Size    375    667
    Wait Until Page Contains Element    //div[@class='css-1pfq5u']
    Close Browser