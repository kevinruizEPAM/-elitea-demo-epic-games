*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Filter and sort
    [Tags]    Smoke
    Open Browser    https://store.epicgames.com/en-US/    Chrome
    Click Element    //button[text()='Filter']
    Click Element    //span[text()='Price: Low to High']
    Wait Until Page Contains Element    //div[contains(text(),'Sorted by price: low to high')]
    Close Browser