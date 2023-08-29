*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Variables ***
${academic_interest}    interests


*** Keywords ***
Navigate To Academic Interests And Upadte Required Information
    element should be visible    ${lbl_acad_interest}
    capture page screenshot
    select checkbox    ${chk_acad_interest}
#    total of 50 checkboxes
    scroll element into view    ${txa_acad_interest_que}
    input text    ${txa_acad_interest_que}    ${academic_interest}
    capture page screenshot
    click button    ${btn_continue}
    wait until element is visible    ${lbl_extra_activity}    20s