*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Add to cart
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //div[contains(text(),'Fortnite')]
    Click Element    //button[text()='Add to Cart']
    Wait Until Page Contains Element    //div[text()='Item added to cart']
    Close Browser