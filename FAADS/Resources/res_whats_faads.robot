*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Keywords ***

FAADS Initial Page Validation
    wait until element is visible    ${lbl_what_is_faads}     20
    element should be visible    ${lbl_active_what_is_faads}
    capture page screenshot
    scroll element into view    ${btn_submit_whatisfaads}
    capture page screenshot
    click button    ${btn_submit_whatisfaads}
    wait until element is visible    ${lbl_consent}    20s