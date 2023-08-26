*** Settings ***
Library     SeleniumLibrary
Library     ../Libraries/lib_env.py
Library           RPA.Browser.Selenium
Variables   ../Libraries/lib_harvard_key.py
Variables   ../Libraries/CustomKeywords.py

Library     OperatingSystem

*** Variables ***
${browser_name}    chrome
${APP_URL}      ${STAGE_URL}
${env}      stage

*** Keywords ***

Select URL based on environment
    set selenium implicit wait    30
    [Arguments]    ${app_name}
    ${url}    get app url    ${env}    ${app_name}
    log to console    ${app_name}
    set global variable    ${APP_URL}   ${url}
    log to console    ${APP_URL}


Login to DEMOBLAZE
    set selenium implicit wait    30
    Fetch OS Name and Set Browser
    open browser    ${APP_URL}    ${browser_name}    options=add_argument("--no-sandbox")    options=add_experimental_option("detach", True)
    delete all cookies
#    set window size    1200     800
    maximize browser window








Login to FAADS
    set selenium implicit wait    30
    Fetch OS Name and Set Browser
    open browser    ${APP_URL}    ${browser_name}    options=add_argument("--no-sandbox")    options=add_experimental_option("detach", True)
    delete all cookies
#    set window size    1200     800
    maximize browser window
    wait until element is visible    ${lnk_begin}    30s
    click link    ${lnk_begin}
    wait until element is visible    ${txt_userId}    30s
    input text    ${txt_userId}     ${test_id}
    input text    ${txt_user_pwd}   ${test_pwd}
    click button    ${lnk_sign_in}
    click button    ${lnk_other_options}
    wait until keyword succeeds    20x  500ms       click element    ${lnk_bypass_code}
    input text      ${txt_bypass_code}        ${test_bypass_code}
    click button    ${lnk_verify_bypasscode}
    click button    ${lnk_do_not_trust_browser}

Set URLs Per Environment
    ${url}    get_app_url    ${env}
    set global variable    ${APP_URL}   ${url}

Fetch OS Name and Set Browser
    [Documentation]    This keyword detects the OS and select driver.

    ${system}   Evaluate    platform.system()    platform
    set global variable    ${OS}    ${system}
    log to console    \nOperating System - ${OS}

    IF    '${OS}'=='Linux'
        set global variable    ${BROWSER}    headlesschrome
        log to console    \nSelecting Headless Chrome
        log    \nSelecting Headless Chrome
    ELSE
        set global variable    ${BROWSER}    chrome
    END
