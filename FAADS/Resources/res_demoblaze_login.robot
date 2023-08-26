*** Settings ***
Documentation    Common settings and keywords for Login To Demoblaze test
Library          SeleniumLibrary
Library          OperatingSystem
Variables   ../Libraries/lib_harvard_key.py

*** Variables ***
${BROWSER}    Chrome
${URL}        ${DEMO_BLAZE_URL}



*** Keywords ***
Navigate To Demoblaze
    Open Browser    ${URL}    chrome
    set selenium implicit wait    10
Click On SignUp Button
    Click Element    ${lnk_Login}
    Capture Screenshot

Enter Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${lnk_user_name}    ${username}
    Input Text    ${lnk_user_pass}    ${password}
    Capture Screenshot

Click On SignUp
    Click Element    ${lnk_Login_button}
    Capture Screenshot

Validate Username
    [Arguments]    ${expected_username}
    Wait Until Page Contains    Welcome ${expected_username}    15
    Capture Screenshot

Capture Screenshot
    Capture Page Screenshot
