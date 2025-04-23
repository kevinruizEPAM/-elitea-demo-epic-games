*** Variables ***
${GAME_TITLE}    xpath=//div[@class='game-title']
${THUMBNAIL_IMAGE}    xpath=//img[@class='thumbnail']
${CURRENT_PRICE}    xpath=//span[@class='current-price']
${DISCOUNT}    xpath=//span[@class='discount']
${RELEASE_DATE}    xpath=//span[@class='release-date']

*** Keywords ***
Game Title Should Be Visible
    Element Should Be Visible    ${GAME_TITLE}

Thumbnail Image Should Be Visible
    Element Should Be Visible    ${THUMBNAIL_IMAGE}

Current Price Should Be Visible
    Element Should Be Visible    ${CURRENT_PRICE}

Discount Should Be Visible
    Element Should Be Visible    ${DISCOUNT}

Release Date Should Be Visible
    Element Should Be Visible    ${RELEASE_DATE}