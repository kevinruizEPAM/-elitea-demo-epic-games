*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Remove from cart
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //span[text()='Cart']
    Click Element    //button[text()='Remove']
    Wait Until Page Contains Element    //div[text()='Item removed from cart']
    Close Browser