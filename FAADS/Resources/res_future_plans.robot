*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Variables ***
${future_plan}    higherstudies

*** Keywords ***

Navigate To Future Plans And Upadte Required Information
    element should be visible    ${lbl_future_plans}
    scroll element into view    ${chk_goal}
    select checkbox    ${chk_goal}
    input text    ${txa_plan_que1}    ${future_plan}
    capture page screenshot
    click button    ${btn_continue}
    wait until element is visible    ${lbl_additional_info}    20s