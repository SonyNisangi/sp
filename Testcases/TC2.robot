*** Settings ***
Library     SeleniumLibrary
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website}  https://www.spicelands.de
${element}  xpath://*[@id="BorlabsCookieBox"]/div/div
${click_element}    xpath://*[@id="BorlabsCookieBox"]/div/div/div/div[1]/div/div/div/p[2]/a

*** Test Cases ***

TestLogin
    Open Browser   ${website}   ${browser}
    Accept Cookies for spicelands
    Wait Until Page Contains Element    //div[@class="_1tcd14j"]
    Click Element    //div[@class="_1tcd14j"]
    Click Element    xpath=(//img[@class="_jsct2s"])[3]
    Click Link    //a[@id="link_showAllReviews-98e3dadd90eb493088abdc5597a70810"]
     #Click Element    xpath=(//img[@class="_ay4mkz"])[2]
     #Click Link    //a[@href="https://www.trustedshops.de/bewertung/info_X8E538538D026856E635C64AFC34FABE2.html?utm_source=shop&utm_medium=link&utm_content=menu_check_certificate__full&utm_campaign=trustbadge_minimised"]
    Sleep   150s

***Keywords ***
Accept Cookies for spicelands
    wait until element is visible   ${element}
    click element   ${click_element}







