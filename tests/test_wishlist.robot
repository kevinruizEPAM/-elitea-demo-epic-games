*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Wishlist functionality
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //div[contains(text(),'Fortnite')]
    Click Element    //button[text()='Add to Wishlist']
    Wait Until Page Contains Element    //div[text()='Item added to wishlist']
    Close Browser