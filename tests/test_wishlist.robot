*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/wishlist_keywords.robot

*** Test Cases ***
Verify Game Details Display in Wishlist
    [Documentation]    Verify that each game in the wishlist displays the game title, thumbnail image, current price, discount (if applicable), and release date (if available).
    Open Browser    ${URL}    ${BROWSER}
    Login To Application    ${USERNAME}    ${PASSWORD}
    Go To Wishlist Page
    Verify Game Details In Wishlist    ${GAME_TITLE}    ${THUMBNAIL_IMAGE}    ${CURRENT_PRICE}    ${DISCOUNT}    ${RELEASE_DATE}
    [Teardown]    Close Browser