*** Settings ***
Library    SeleniumLibrary
Variables    ../Libraries/lib_form_elements.py
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

*** Keywords ***

Navigate To Final Review, Verify Details And Submit Form
    element should be visible    ${lbl_final_review}
    capture page screenshot

    ${contents}    get text    xpath://*[contains(text(), 'Final Review and Submission')]/..
    log    ${contents}


    should contain    ${contents}    City\n${city}
    should contain    ${contents}    State/Province\n${state}
    should contain    ${contents}    Country\n${country}
    should contain    ${contents}    Secondary School Honors:\n${sec_sch_ans1}
    should contain    ${contents}    Secondary School Activities:\n${sec_sch_ans2}
    should contain    ${contents}    Planned Harvard College Extracurricular Activities:\n${sec_sch_ans3}

#    should contain    ${contents}    First Generation College Graduate?\nYes

    should contain    ${contents}    Primary academic interest:\nAfrican and African American Studies
    should contain    ${contents}    Academic interests additional details:\n${academic_interest}

    should contain    ${contents}    Extracurricular interests additional details:\n${extra_activity}

    should contain    ${contents}    Summer Plans:\n${work_plans}
    should contain    ${contents}    Work and Travel Experiences:\n${work_experence}

    should contain    ${contents}    Long-term career goals:\n${future_plan}

    should contain    ${contents}    Additional Comments:\n${additional_comments}
    should contain    ${contents}    How Harvard is Special:\n${reason_for_joining}


    click button    ${btn_continue}
    wait until element is visible    xpath://*[@id="faadsWelcome"]//span[text()='Congratulations! ']
    capture page screenshot

Logout Of The Application
    wait until element is visible    ${lnk_logout}
    click link    ${lnk_logout}
    wait until element is visible    ${lbl_logout}    20s