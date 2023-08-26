*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Keywords ***
Navigate To Activity Report And Upadte Required Information
    element should be visible    ${lbl_activity_report}    20s
    capture page screenshot
    scroll element into view    ${btn_submit_act_report}
    click element    ${btn_submit_act_report}
    wait until element is visible    ${lbl_demogrp_info}    20s