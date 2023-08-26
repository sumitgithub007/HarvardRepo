*** Settings ***
#Library    SeleniumLibrary
Resource   ../Resources/res_harvard_key.robot
Resource   ../Resources/res_whats_faads.robot
Resource   ../Resources/res_acceptance_consent.robot
Resource   ../Resources/res_activity_report.robot
Resource   ../Resources/res_demographic_information.robot
Resource   ../Resources/res_academic_interests.robot
Resource   ../Resources/res_extracurricular_activity.robot
Resource   ../Resources/res_work_and_summer_plans.robot
Resource   ../Resources/res_future_plans.robot
Resource   ../Resources/res_additional_info.robot
Resource   ../Resources/res_final_review.robot

*** Test Cases ***
Admin Login - Start To Submission
    [Tags]    QATA-449
    Login to FAADS
    FAADS Initial Page Validation
    Navigate To Acceptance/Consent And Upadte Required Information
    Navigate To Activity Report And Upadte Required Information
    Navigate To Demographic Information And Upadte Required Information
    Navigate To Academic Interests And Upadte Required Information
    Navigate To Extracurricular Activities And Upadte Required Information
    Navigate To Work and Summer Plans And Upadte Required Information
    Navigate To Future Plans And Upadte Required Information
    Navigate To Additional Information And Upadte Required Information
    Navigate To Final Review, Verify Details And Submit Form
    close browser

Admin login - Submission interrupted
    [Tags]    QATA-451
    Login to FAADS
    FAADS Initial Page Validation
    Navigate To Acceptance/Consent And Upadte Required Information
    Navigate To Activity Report And Upadte Required Information
    Navigate To Demographic Information And Upadte Required Information
    close browser

    Login to FAADS
    Navigate To Academic Interests And Upadte Required Information
    Navigate To Extracurricular Activities And Upadte Required Information
    Navigate To Work and Summer Plans And Upadte Required Information
    Navigate To Future Plans And Upadte Required Information
    Navigate To Additional Information And Upadte Required Information
    Navigate To Final Review, Verify Details And Submit Form
    close browser