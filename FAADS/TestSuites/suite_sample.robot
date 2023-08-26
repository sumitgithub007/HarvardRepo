*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${test}

*** Test Cases ***
Test1
    ${test}=    Evaluate    9
    Set Global Variable      ${test}

Test2
    LOG    ${test}
    log to console    ${test}