*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Checkout process
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //span[text()='Cart']
    Click Element    //button[text()='Checkout']
    Input Text    //input[@name='cardNumber']    4111111111111111
    Input Text    //input[@name='expiryDate']    12/23
    Input Text    //input[@name='cvv']    123
    Click Element    //button[text()='Place Order']
    Wait Until Page Contains Element    //div[text()='Order placed successfully']
    Close Browser