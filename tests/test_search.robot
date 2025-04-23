*** Settings ***
Resource    ../resources/common.robot
Test Setup    Open Browser To Epic Games Store
Test Teardown    Close Browser

*** Test Cases ***
Verify Search Functionality
    [Documentation]    Test the search functionality of the Epic Games Store
    ${search_term}    Set Variable    Fortnite
    Input Text    ${SEARCH_INPUT}    ${search_term}
    Press Keys    ${SEARCH_INPUT}    RETURN
    Wait Until Page Contains    ${search_term}
    Page Should Contain Element    css=.css-1h2ruwl    # Search results container