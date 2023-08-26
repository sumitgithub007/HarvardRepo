lbl_whatisfaads = "xpath://h1[text()='What is the FAADS?']"
lbl_active_whatisfaads = "xpath://li[@class='active']/a[contains(text(),'What is the ')]"
btn_submit_whatisfaads = "id:whatIsFaadsSubmit"

# acceptance/consent
lbl_consent = "xpath://li[@class='active']/a[contains(text(),'Acceptance / Consent')]"
chk_accept_stmt= "id:readAcceptanceStatement"
chk_std_consent = "id:readStudentConsent"
chk_form_req = "id:understandFormRequirement"
btn_consent = "id:acceptanceConsentSubmit"

# activity report
lbl_activity_report = "xpath://li[@class='active']/a[contains(text(),'Activity ')]"
btn_submit_act_report = "id:activityReportSubmit"

# Demographic Information
lbl_demogrp_info = "xpath://li[@class='active']/a[contains(text(),'Demographic Information')]"
rdo_firstgengrad = "id:firstGenGradYes"
txa_sec_sch_que1 = "id:secondarySchoolHonorsQuestion"
txa_sec_sch_que2 = "id:secondarySchoolActivitiesQuestion"
txa_sec_sch_que3 = "id:freshmenActivitiesQuestion"
ddl_country = "id:backgroundReports.birthCountry"
ddl_state = "id:backgroundReports.birthState"
txt_city = "id:backgroundReports.birthCity"
btn_continue = "id:continue"

# Academic interests
lbl_acad_interest = "xpath://li[@class='active']/a[contains(text(),'Academic Interests')]"
chk_acad_interest = "id:acadInterestsIds-0"
txa_acad_interest_que = "id:acadInterestsTxtQuestion"

# Extracurricular Activities
lbl_extra_activity= "xpath://li[@class='active']/a[contains(text(),'Extracurricular Activities')]"
chk_extra_act1= "id:extCurActivityIds-0"
txa_extra_act_que1 = "id:extCurrActivityTxtQuestion"

# Work and Summer Plans
lbl_work_and_summer = "xpath://li[@class='active']/a[contains(text(),'Work and Summer Plans')]"
txa_work_plans = "id:workSummerPlansQuestion"
txa_work_exp = "id:workSummerExperienceQuestion"
btn_continuebtn = "id:continueButton"

# future plans
lbl_future_plans = "xpath://li[@class='active']/a[contains(text(),'Future ')]"
chk_goal = "id:careerGoalIds-16"
txa_plan_que1 = "id:futurePlansTxtQuestion"

# Additional Information
lbl_additional_info = "xpath://li[@class='active']/a[contains(text(),'Additional Information')]"
txa_comments = "id:furtherCommentsQuestion"
txa_reason = "id:reasonChoseHarvardQuestion"

# Final review
lbl_final_review = "xpath://li[@class='active']/a[contains(text(),'Final ')]"

#logout
lnk_logout = "xpath:(//a[text()='Logout'])[2]"
lbl_logout = "xpath://h2[text()='Logout successful']"
