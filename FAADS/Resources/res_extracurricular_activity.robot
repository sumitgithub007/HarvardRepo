*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Variables ***
${extra_activity}    dance


*** Keywords ***

Navigate To Extracurricular Activities And Upadte Required Information
    element should be visible    ${lbl_extra_activity}
    select checkbox    ${chk_extra_act1}
#    total 19 elements
    scroll element into view    ${txa_extra_act_que1}
    input text    ${txa_extra_act_que1}    ${extra_activity}
    capture page screenshot
    click button    ${btn_continue}
    wait until element is visible    ${lbl_work_and_summer}    20s