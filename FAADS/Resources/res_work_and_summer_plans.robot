*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Variables ***
${work_plans}    freelance
${work_experence}    coding


*** Keywords ***
Navigate To Work and Summer Plans And Upadte Required Information
    element should be visible    ${lbl_work_and_summer}
    input text    ${txa_work_plans}     ${work_plans}
    input text    ${txa_work_exp}    ${work_experence}
    capture page screenshot
    click button    ${btn_continuebtn}
    wait until element is visible    ${lbl_future_plans}    20s