*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py

*** Variables ***
${additional_comments}    nothing
${reason_for_joining}    graduation


*** Keywords ***
Navigate To Additional Information And Upadte Required Information
    element should be visible    ${lbl_additional_info}
    input text    ${txa_comments}     ${additional_comments}
    input text    ${txa_reason}     ${reason_for_joining}
    capture page screenshot
    click button    ${btn_continue}
    wait until element is visible    ${lbl_final_review}    20s