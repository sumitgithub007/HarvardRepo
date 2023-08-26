*** Settings ***
Documentation    Login To Demoblaze Test
Resource   ../Resources/res_demoblaze_login.robot
Variables   ../Libraries/lib_harvard_key.py

*** Variables ***
${valid_username}    ${demo_blz_usr}
${valid_password}    ${demo_blz_pass}

*** Test Cases ***
Login To Demoblaze Test
    [Tags]    QATA-441
    Navigate To Demoblaze
    Click On SignUp Button
    Enter Credentials    ${valid_username}    ${valid_password}
    Click On SignUp
    Validate Username    ${valid_username}

