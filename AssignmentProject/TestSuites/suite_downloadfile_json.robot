*** Settings ***
Documentation    Navigate to DWSAMPLEFILE Website and Download File


Resource   ../Resources/res_harvard_file_download.robot


*** Test Cases ***
Download JSON FILE
    [Tags]    QATA-440
    NAVIGATE TO DWSAMPLEFILE WEBSITE
    AFTER NAVIGATION DOWNLOAD THE FILE
    Wait for Download To Complete
    close the browser