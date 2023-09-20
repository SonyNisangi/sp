*** Settings ***
Library  Selenium

*** Test Cases ***
Open Browser    https://chrome.google.com/webstore/detail/robotcorder/ifiilbfgcemdapeibjfohnfpfmfblmpd/related    ${BROWSER}
Click Element    xpath=(//img[@class="_ay4mkz"])[2]
Click Link    //a[@href="https://www.trustedshops.de/bewertung/info_X8E538538D026856E635C64AFC34FABE2.html?utm_source=shop&utm_medium=link&utm_content=menu_check_certificate__full&utm_campaign=trustbadge_minimised"]
