*** Variables ***
${TEST_USERNAME}    %{EPIC_GAMES_USERNAME}
${TEST_PASSWORD}    %{EPIC_GAMES_PASSWORD}

*** Keywords ***
Set Environment Variables
    Set Environment Variable    EPIC_GAMES_USERNAME    your_username
    Set Environment Variable    EPIC_GAMES_PASSWORD    your_password