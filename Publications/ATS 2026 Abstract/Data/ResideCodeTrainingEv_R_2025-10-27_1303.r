#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('ResideCodeTrainingEv_DATA_2025-10-27_1303.csv')
#Setting Labels

label(data$record_id) = "Record ID"
label(data$redcap_survey_identifier) = "Survey Identifier"
label(data$intro_2_timestamp) = "Survey Timestamp"
label(data$identifier_v2) = "Enter the first letter of your last name and the last 4 of your cell number. We will only use this to link your pre and post surveys."
label(data$intro_variable_v2) = "Please select the appropriate survey to complete:"
label(data$intro_2_complete) = "Complete?"
label(data$presurvey_2_timestamp) = "Survey Timestamp"
label(data$pre_con_code_v2) = "Rate your confidence that you can reliably facilitate delivery standard of care resuscitation for an in-hospital cardiac arrest? (meaning, almost every time you lead a code, patients receive the standard of care)   1. Almost never, 5. sometimes, 10. almost always."
label(data$pre_con_rapid_v2) = "Rate your confidence that you can reliably facilitate delivery standard of care resuscitation for rapid response/MET? (meaning, almost every time you lead a rapid response/MET, patients receive the standard of care)   1. Almost never, 5. sometimes, 10. almost always."
label(data$pre_con_shock) = "Rate your confidence that you can interpret a rhythm strip and making a decision to provide appropriate standard of care? (monitoring, pacing, cardioversion, defibrillation, etc)   1. Almost never, 5. sometimes, 10. almost always."
label(data$pre_nerves_code_v2) = "How often do you think youll have problems with team dynamics on Code Blue / Rapid Response teams?   1. Almost never, 5. sometimes, 10. almost always."
label(data$pre_call_v2) = "How likely are you to call for an attending to join you for a rapid response if one isnt already there?   1. Almost never, 5. sometimes, 10. almost always."
label(data$pre_number_codes_v2) = "Roughly, how many code blues have you been to as an intern (best guess)?"
label(data$pre_number_rapids_v2) = "Roughly, how many rapid responses/METs have you been to as an intern (best guess)? "
label(data$pre_leading_v2) = "Have you led either a rapid response or a code blue as an intern? How many? "
label(data$pre_sims_v2) = "How many times have you led a simulated/scenario code blue or rapid response in training? "
label(data$pre_interpret_v2) = "Have you been involved in the decision to urgently/emergently cardiovert a patient?"
label(data$pre_rhythm_v2) = "2 minute pulse check shows the above image. What is the next step?"
label(data$pre_resources_v2) = "A patient on the floor experiences flash pulmonary edema. Oxygen needs go from 3L nasal cannula to 15L nonrebreather. What is the best next immediate step?"
label(data$pre_ptsd_v2___1) = "Bringing family in to observe an attempt at resuscitation has been shown to: [select all that apply] (choice=increase ROSC rate)"
label(data$pre_ptsd_v2___2) = "Bringing family in to observe an attempt at resuscitation has been shown to: [select all that apply] (choice=decrease ROSC rate)"
label(data$pre_ptsd_v2___3) = "Bringing family in to observe an attempt at resuscitation has been shown to: [select all that apply] (choice=increase PTSD in the family)"
label(data$pre_ptsd_v2___4) = "Bringing family in to observe an attempt at resuscitation has been shown to: [select all that apply] (choice=decrease PTSD in the family)"
label(data$presurvey_2_complete) = "Complete?"
label(data$postsurvey_2_timestamp) = "Survey Timestamp"
label(data$con_code_post_v2_1ae769) = "Rate your confidence that you can reliably facilitate delivery standard of care resuscitation for an in-hospital cardiac arrest? (meaning, almost every time you lead a code, patients receive the standard of care)  1. Almost never, 5. sometimes, 10. almost always."
label(data$con_rapid_post_v2_2b1eb4) = "Rate your confidence that you can reliably facilitate delivery standard of care resuscitation for rapid response/MET? (meaning, almost every time you lead a rapid response/MET, patients receive the standard of care)  1. Almost never, 5. sometimes, 10. almost always."
label(data$post_con_shock_2) = "Rate your confidence that you can interpret a rhythm strip and making a decision to provide appropriate standard of care? (monitoring, pacing, cardioversion, defibrillation, etc)  1. Almost never, 5. sometimes, 10. almost always."
label(data$nerves_code_post_v2_38c320) = "How often do you think youll have problems with team dynamics on Code Blue / Rapid Response teams?    1. Almost never, 5. sometimes, 10. almost always."
label(data$post_call_2) = "How likely are you to call for an attending to join you for a rapid response if one isnt already there?  1. Almost never, 5. sometimes, 10. almost always."
label(data$post_cases_soft) = "On a scale of 1-10, how helpful were the modules in reinforcing clinical concepts related to leadership and management of rapids and codes?   1. Almost never, 5. sometimes always, 10. almost always"
label(data$post_cases_rhythm) = "On a scale of 1-10, how helpful were the cases in reinforcing clinical concepts related to leadership and management of rapids and codes?  1. Almost never, 5. sometimes, 10. almost always."
label(data$post_cases_discuss) = "On a scale of 1-10, how helpful was the informal discussion in reinforcing clinical concepts related to leadership and management of rapids and codes?  1. Almost never, 5. sometimes, 10. almost always."
label(data$reminders_post_v2_b080b4___1) = "Would you be interested in receiving additional learning resources and/or periodic reminders related to running code blues / RRTs? If so, which is most appealing:  (choice=Not interested)"
label(data$reminders_post_v2_b080b4___2) = "Would you be interested in receiving additional learning resources and/or periodic reminders related to running code blues / RRTs? If so, which is most appealing:  (choice=Anki flashcard deck with high yield facts)"
label(data$reminders_post_v2_b080b4___3) = "Would you be interested in receiving additional learning resources and/or periodic reminders related to running code blues / RRTs? If so, which is most appealing:  (choice=Newsletter style reminders delivered by email)"
label(data$reminders_post_v2_b080b4___4) = "Would you be interested in receiving additional learning resources and/or periodic reminders related to running code blues / RRTs? If so, which is most appealing:  (choice=Text-delivered snippets at start of ward rotations.)"
label(data$reminders_free_post_v2_709a86) = "If you have ideas for ongoing reminders or additional resources not listed above, list them here:"
label(data$postsurvey_2_complete) = "Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
mapping_intro_variable_v2 = c(
	"1" = "Pre-Survey",
	"2" = "Post-Survey"
)
data$intro_variable_v2.factor = factor(data$intro_variable_v2, levels = names(mapping_intro_variable_v2), labels = mapping_intro_variable_v2)

mapping_intro_2_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$intro_2_complete.factor = factor(data$intro_2_complete, levels = names(mapping_intro_2_complete), labels = mapping_intro_2_complete)

mapping_pre_con_code_v2 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$pre_con_code_v2.factor = factor(data$pre_con_code_v2, levels = names(mapping_pre_con_code_v2), labels = mapping_pre_con_code_v2)

mapping_pre_con_rapid_v2 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$pre_con_rapid_v2.factor = factor(data$pre_con_rapid_v2, levels = names(mapping_pre_con_rapid_v2), labels = mapping_pre_con_rapid_v2)

mapping_pre_con_shock = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$pre_con_shock.factor = factor(data$pre_con_shock, levels = names(mapping_pre_con_shock), labels = mapping_pre_con_shock)

mapping_pre_nerves_code_v2 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$pre_nerves_code_v2.factor = factor(data$pre_nerves_code_v2, levels = names(mapping_pre_nerves_code_v2), labels = mapping_pre_nerves_code_v2)

mapping_pre_call_v2 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$pre_call_v2.factor = factor(data$pre_call_v2, levels = names(mapping_pre_call_v2), labels = mapping_pre_call_v2)

mapping_pre_interpret_v2 = c(
	"1" = "Yes",
	"0" = "No"
)
data$pre_interpret_v2.factor = factor(data$pre_interpret_v2, levels = names(mapping_pre_interpret_v2), labels = mapping_pre_interpret_v2)

mapping_pre_rhythm_v2 = c(
	"1" = "Cardiovert",
	"2" = "Defibrillate",
	"3" = "Transcutaneously pace",
	"4" = "Resume compressions"
)
data$pre_rhythm_v2.factor = factor(data$pre_rhythm_v2, levels = names(mapping_pre_rhythm_v2), labels = mapping_pre_rhythm_v2)

mapping_pre_resources_v2 = c(
	"1" = "call the ICU team",
	"2" = "call a code blue",
	"3" = "start patient on bipap",
	"4" = "move immediately to the unit"
)
data$pre_resources_v2.factor = factor(data$pre_resources_v2, levels = names(mapping_pre_resources_v2), labels = mapping_pre_resources_v2)

mapping_pre_ptsd_v2___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$pre_ptsd_v2___1.factor = factor(data$pre_ptsd_v2___1, levels = names(mapping_pre_ptsd_v2___1), labels = mapping_pre_ptsd_v2___1)

mapping_pre_ptsd_v2___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$pre_ptsd_v2___2.factor = factor(data$pre_ptsd_v2___2, levels = names(mapping_pre_ptsd_v2___2), labels = mapping_pre_ptsd_v2___2)

mapping_pre_ptsd_v2___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$pre_ptsd_v2___3.factor = factor(data$pre_ptsd_v2___3, levels = names(mapping_pre_ptsd_v2___3), labels = mapping_pre_ptsd_v2___3)

mapping_pre_ptsd_v2___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$pre_ptsd_v2___4.factor = factor(data$pre_ptsd_v2___4, levels = names(mapping_pre_ptsd_v2___4), labels = mapping_pre_ptsd_v2___4)

mapping_presurvey_2_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$presurvey_2_complete.factor = factor(data$presurvey_2_complete, levels = names(mapping_presurvey_2_complete), labels = mapping_presurvey_2_complete)

mapping_con_code_post_v2_1ae769 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$con_code_post_v2_1ae769.factor = factor(data$con_code_post_v2_1ae769, levels = names(mapping_con_code_post_v2_1ae769), labels = mapping_con_code_post_v2_1ae769)

mapping_con_rapid_post_v2_2b1eb4 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$con_rapid_post_v2_2b1eb4.factor = factor(data$con_rapid_post_v2_2b1eb4, levels = names(mapping_con_rapid_post_v2_2b1eb4), labels = mapping_con_rapid_post_v2_2b1eb4)

mapping_post_con_shock_2 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$post_con_shock_2.factor = factor(data$post_con_shock_2, levels = names(mapping_post_con_shock_2), labels = mapping_post_con_shock_2)

mapping_nerves_code_post_v2_38c320 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$nerves_code_post_v2_38c320.factor = factor(data$nerves_code_post_v2_38c320, levels = names(mapping_nerves_code_post_v2_38c320), labels = mapping_nerves_code_post_v2_38c320)

mapping_post_call_2 = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$post_call_2.factor = factor(data$post_call_2, levels = names(mapping_post_call_2), labels = mapping_post_call_2)

mapping_post_cases_soft = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$post_cases_soft.factor = factor(data$post_cases_soft, levels = names(mapping_post_cases_soft), labels = mapping_post_cases_soft)

mapping_post_cases_rhythm = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$post_cases_rhythm.factor = factor(data$post_cases_rhythm, levels = names(mapping_post_cases_rhythm), labels = mapping_post_cases_rhythm)

mapping_post_cases_discuss = c(
	"1" = "1",
	"2" = "2",
	"3" = "3",
	"4" = "4",
	"5" = "5",
	"6" = "6",
	"7" = "7",
	"8" = "8",
	"9" = "9",
	"10" = "10"
)
data$post_cases_discuss.factor = factor(data$post_cases_discuss, levels = names(mapping_post_cases_discuss), labels = mapping_post_cases_discuss)

mapping_reminders_post_v2_b080b4___1 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reminders_post_v2_b080b4___1.factor = factor(data$reminders_post_v2_b080b4___1, levels = names(mapping_reminders_post_v2_b080b4___1), labels = mapping_reminders_post_v2_b080b4___1)

mapping_reminders_post_v2_b080b4___2 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reminders_post_v2_b080b4___2.factor = factor(data$reminders_post_v2_b080b4___2, levels = names(mapping_reminders_post_v2_b080b4___2), labels = mapping_reminders_post_v2_b080b4___2)

mapping_reminders_post_v2_b080b4___3 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reminders_post_v2_b080b4___3.factor = factor(data$reminders_post_v2_b080b4___3, levels = names(mapping_reminders_post_v2_b080b4___3), labels = mapping_reminders_post_v2_b080b4___3)

mapping_reminders_post_v2_b080b4___4 = c(
	"0" = "Unchecked",
	"1" = "Checked"
)
data$reminders_post_v2_b080b4___4.factor = factor(data$reminders_post_v2_b080b4___4, levels = names(mapping_reminders_post_v2_b080b4___4), labels = mapping_reminders_post_v2_b080b4___4)

mapping_postsurvey_2_complete = c(
	"0" = "Incomplete",
	"1" = "Unverified",
	"2" = "Complete"
)
data$postsurvey_2_complete.factor = factor(data$postsurvey_2_complete, levels = names(mapping_postsurvey_2_complete), labels = mapping_postsurvey_2_complete)

