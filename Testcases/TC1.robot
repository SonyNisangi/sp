*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${website}  https://www.spicelands.de
${element}  xpath://*[@id="BorlabsCookieBox"]/div/div
${click_element}    xpath://*[@id="BorlabsCookieBox"]/div/div/div/div[1]/div/div/div/p[2]/a
${super_website}    https://www.google.com
${google_search_bar}    //textarea[@jsname="yZiJbe"]
${value}    Michaelkors
${google_cookies_accept_all} =  //button[@id="L2AGLb"]

*** Test Cases ***
TestLogin
     Open Browser   ${website}   ${browser}
     Accept Cookies for spicelands
     Wait Until Page Contains Element  xpath://*[@id="trustbadge-iframe"]   15s
     click element  xpath://*[@id="trustbadge-minimized-menu-button-98e3dadd90eb493088abdc5597a70810"]
     close browser

Visit Google Web Page
    Open Browser   ${super_website}  Chrome

Accepting Cookies
    Wait Until Element Is Visible    ${google_cookies_accept_all}   30s
    Click Button    ${google_cookies_accept_all}


Filling The Search Bar With The Value ${value}
    Wait Until Element Is Visible    ${google_search_bar}   30s
    Input Text    ${google_search_bar}    Michaelkors
    Press Keys    ${google_search_bar}     ENTER

***Keywords ***
Accept Cookies for spicelands
    wait until element is visible   ${element}
    click element   ${click_element}
    Sleep   5s




