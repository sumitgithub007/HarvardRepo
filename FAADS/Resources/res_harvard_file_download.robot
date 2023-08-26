*** Settings ***
Library     ../Libraries/lib_env.py
Library           RPA.Browser.Selenium
Library    DateTime
Variables   ../Libraries/lib_harvard_key.py
Variables   ../Libraries/CustomKeywords.py

Library     OperatingSystem

*** Variables ***
${browser_name}    chrome
${APP_URL}      ${STAGE_URL}
${JSON_URL_link}    ${JSON_URL}
${FILENAME}       dwsample1-json.json
${DOWNLOAD_DIR}   D://FAS_Admin_Automation//JSON_FILE_FOLDER//
${env}      stage

*** Keywords ***

Select URL based on environment
    set selenium implicit wait    30
    [Arguments]    ${app_name}
    ${url}    get app url    ${env}    ${app_name}
    log to console    ${app_name}
    set global variable    ${APP_URL}   ${url}
    log to console    ${APP_URL}

Navigate to DWSAMPLEFILE Website
    set selenium implicit wait    10
    Fetch OS Name and Set Browser
    empty directory    ${DOWNLOAD_DIR}
    Set Download Directory    ${DOWNLOAD_DIR}
    open available browser       https://www.dwsamplefiles.com/download-json-sample-files/


AFTER NAVIGATION DOWNLOAD THE FILE
    click element    ${lnk_jsonFile1}


Wait for Download To Complete
     Wait Until Keyword Succeeds
    ...    10 sec
    ...    1 sec
    ...    File Should Exist
    ...    ${DOWNLOAD_DIR}${FILENAME}

Close the Browser
     close browser

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
