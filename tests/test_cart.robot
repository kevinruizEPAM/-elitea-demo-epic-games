*** Settings ***
Resource    ../resources/common.robot
Test Setup    Open Browser To Epic Games Store
Test Teardown    Close Browser

*** Test Cases ***
Verify Add to Cart Functionality
    [Documentation]    Test adding an item to the cart
    Search and Select Free Game
    Click Add to Cart
    Verify Item Added to Cart

*** Keywords ***
Search and Select Free Game
    Input Text    ${SEARCH_INPUT}    free
    Press Keys    ${SEARCH_INPUT}    RETURN
    Wait Until Page Contains Element    css=.css-1h2ruwl    # Search results container
    Click Element    css=.css-1h2ruwl a    # Click first search result

Click Add to Cart
    Wait Until Page Contains Element    css=button[data-testid="add-to-cart-cta"]
    Click Element    css=button[data-testid="add-to-cart-cta"]

Verify Item Added to Cart
    Wait Until Page Contains Element    ${CART_BUTTON}
    Click Element    ${CART_BUTTON}
    Page Should Contain Element    css=.css-1pj1mbk    # Cart item container