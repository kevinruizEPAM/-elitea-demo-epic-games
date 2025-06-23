*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/pages/WishlistPage.robot
Resource    ../resources/keywords/WishlistKeywords.robot

*** Test Cases ***
Verify Sorting Wishlist by Alphabetical Order
    Open Wishlist Page
    Select Sorting Option    Alphabetical Order
    Verify Wishlist Sorted Alphabetically