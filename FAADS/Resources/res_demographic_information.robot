*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Variables ***

${sec_sch_ans1}     biology
${sec_sch_ans2}     mathletes
${sec_sch_ans3}     debate
${country}    United States
${state}     Massachusetts
${city}    Cambridge


*** Keywords ***
Navigate To Demographic Information And Upadte Required Information
    element should be visible    ${lbl_demogrp_info}    20s

    capture page screenshot
    click element    ${rdo_firstgengrad}
    input text    ${txa_sec_sch_que1}    ${sec_sch_ans1}
    input text    ${txa_sec_sch_que2}    ${sec_sch_ans2}
    input text    ${txa_sec_sch_que3}    ${sec_sch_ans3}
    select from list by label    ${ddl_country}     ${country}
    select from list by label    ${ddl_state}     ${state}
    input text    ${txt_city}     ${city}
    capture page screenshot
    scroll element into view    ${btn_continue}
    click button    ${btn_continue}
    wait until element is visible    ${lbl_acad_interest}    20s