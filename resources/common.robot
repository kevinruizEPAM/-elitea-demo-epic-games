*** Settings ***
Library    SeleniumLibrary
Resource    locators.robot
Resource    variables.robot

*** Keywords ***
Open Browser To Epic Games Store
    Open Browser    ${EPIC_GAMES_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}

Close Browser
    Close All Browsers