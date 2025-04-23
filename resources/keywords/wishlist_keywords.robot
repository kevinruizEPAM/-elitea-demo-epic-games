*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/wishlist_page.robot

*** Keywords ***
Verify Game Details In Wishlist
    [Arguments]    ${game_title}    ${thumbnail_image}    ${current_price}    ${discount}    ${release_date}
    Game Title Should Be Visible
    Thumbnail Image Should Be Visible
    Current Price Should Be Visible
    Discount Should Be Visible
    Release Date Should Be Visible