*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Keywords ***

Navigate To Acceptance/Consent And Upadte Required Information
    element should be visible    ${lbl_consent}
    capture page screenshot
    scroll element into view    ${chk_accept_stmt}
    select checkbox    ${chk_accept_stmt}
    capture page screenshot
    scroll element into view    ${btn_consent}
    select checkbox    ${chk_std_consent}
    select checkbox    ${chk_form_req}
    capture page screenshot
    click button     ${btn_consent}
    wait until element is visible    ${lbl_activity_report}    20s