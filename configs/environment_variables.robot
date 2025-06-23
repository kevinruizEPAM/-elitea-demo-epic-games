*** Variables ***
${TEST_USERNAME}    %{EPIC_GAMES_USERNAME}
${TEST_PASSWORD}    %{EPIC_GAMES_PASSWORD}
${BASE_URL}    https://example.com
${WISHLIST_PAGE_URL}    ${BASE_URL}/wishlist

*** Keywords ***
Set Environment Variables
    Set Environment Variable    EPIC_GAMES_USERNAME    your_username
    Set Environment Variable    EPIC_GAMES_PASSWORD    your_password