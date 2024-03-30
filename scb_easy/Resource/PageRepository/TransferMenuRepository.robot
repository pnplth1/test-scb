*** Setting ***
Resource          ../../Resource/PageRepository/TransferMenuRepository.robot
Resource          ../../Resource/PageVariables/BankName.robot

*** Variables ***
#xpath popup
${popupAds}    id=com.scb.phone:id/iv_ads
${popupClose}    android=UiSelector().className("android.widget.ImageView").enabled(true)   #id=com.scb.phone:id/iv_close_ads
${chkclose}    android=UiSelector().checked(false)   #id=com.scb.phone:id/dark_checkbox
#xpath Home
${iconPay}    xpath=//android.widget.LinearLayout[contains(@resource-id,'request_to_pay_tab')]    #id=com.scb.phone:id/request_to_pay_tab
${transferMenu}    android=UiSelector().index(4)
#xpath number pin
${pin_1}    xpath=//android.widget.Button[contains(@resource-id,'button_1')]    #id=com.scb.phone:id/button_1
${pin_2}    xpath=//android.widget.Button[contains(@resource-id,'button_2')]    #id=com.scb.phone:id/button_2
${pin_3}    xpath=//android.widget.Button[contains(@resource-id,'button_3')]    #id=com.scb.phone:id/button_3
${pin_4}    xpath=//android.widget.Button[contains(@resource-id,'button_4')]    #id=com.scb.phone:id/button_4
${pin_5}    xpath=//android.widget.Button[contains(@resource-id,'button_5')]    #id=com.scb.phone:id/button_5
${pin_6}    xpath=//android.widget.Button[contains(@resource-id,'button_6')]    #id=com.scb.phone:id/button_6
${pin_7}    xpath=//android.widget.Button[contains(@resource-id,'button_7')]    #id=com.scb.phone:id/button_7
${pin_8}    xpath=//android.widget.Button[contains(@resource-id,'button_8')]    #id=com.scb.phone:id/button_8
${pin_9}    xpath=//android.widget.Button[contains(@resource-id,'button_9')]    #id=com.scb.phone:id/button_9
${pin_0}    xpath=//android.widget.Button[contains(@resource-id,'button_0')]    #id=com.scb.phone:id/button_0
${pin_delete}     id=com.scb.phone:id/button_delete
#xpath tranfer
${toolbar}         xpath=//android.view.ViewGroup[contains(@resource-id,'toolbar')]   #id=com.scb.phone:id/toolbar
#xpath swicp
${ELEMENT_IDิิิิbank}     xpath=//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.ScrollView
#xpath=android.widget.ScrollView[contains(@resource-id,'fragment_transfer_tab')]
${ELEMENT_IDslip}   xpath=//android.widget.RelativeLayout[contains(@resource-id,'root_view_successfu')]
#//android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ScrollView
#xpath Bank name TH
${OWN_SCB}    android=UiSelector().text("${txtOWN_SCB}")
${OTHER_SCB}    android=UiSelector().text("${txtOTHER_SCB}")
${BAAC}    android=UiSelector().text("${txtBAAC}")
${BAY}    android=UiSelector().text("${txtBAY}")
${BBL}    android=UiSelector().text("${txtBBL}")
${CIMB}    android=UiSelector().text("${txtCIMB}")
${CITI}    android=UiSelector().text("${txtCITI}")
${CIMB}    android=UiSelector().text("${txtDB}")
${GHB}    android=UiSelector().text("${txtGHB}")
${GSB}    android=UiSelector().text("${txtGSB}")
${HSBC}    android=UiSelector().text("${txtHSBC}")
${ICBC}    android=UiSelector().text("${txtICBC}")
${ISBT}    android=UiSelector().text("${txtISBT}")
${KBANK}    android=UiSelector().text("${txtKBANK}")    #android=UiSelector().index(12)
${KK}    android=UiSelector().text("${txtKK}")
${KTB}    android=UiSelector().text("${txtKTB}")
${LHBANK}    android=UiSelector().text("${txtLHBANK}")
${MHCB}    	android=UiSelector().text("${txtMHCB}")
${SCBT}    android=UiSelector().text("${txtSCBT}")
${SMBC}    android=UiSelector().text("${txtSMBC}")
${TBANK}    android=UiSelector().text("${txtTBANK}")
${TCRB}    	android=UiSelector().text("${txtTCRB}")
${TMB}    	android=UiSelector().text("${txtTMB}")
${TSCO}    android=UiSelector().text("${txtTSCO}")
${UOB}    	android=UiSelector().text("${txtUOB}")
#xpath transfer
${iconBackMenubarTransfer}    accessibility_id=นำทางขึ้น
${titleTransferMenubarTransfer}    id=com.scb.phone:id/title_text_view
${iconBankTransfer}    id=com.scb.phone:id/imsge_icon
${bankNameTransfer}    id=com.scb.phone:id/text_title
${iconXTransfer}    accessibility_id=ยกเลิก
${titleAccountNumberTransfer}    android=UiSelector().text("เลขที่บัญชี")
${AccountNumberTransfer}    id=com.scb.phone:id/edit_account_number    #xpath=//android.widget.EditText[contains(@resource-id,'edit_account_number')]    #id=com.scb.phone:id/edit_account_number
${titleAmountTransfer}    android=UiSelector().text("จำนวนเงิน")
${AmountTransfer}    id=com.scb.phone:id/edit_amount    #xpath=//android.widget.EditText[contains(@resource-id,'edit_amount')]     #id=com.scb.phone:id/edit_amount
${titleNoteTransfer}    id=com.scb.phone:id/title_text
${NoteTransfer}    id=com.scb.phone:id/note
${btnSubmitTransfer}    xpath=//android.widget.TextView[contains(@resource-id,'default_button_text_view')]    #id=com.scb.phone:id/default_button_text_view
${backtoAccount}    xpath=//android.widget.TextView[contains(@resource-id,'return_button')]  #com.scb.phone:id/return_button
${InputPin}    xpath=//android.widget.TextView[contains(@resource-id,'text_subtitle')]
${ErrorTimeout}      xpath=//android.widget.TextView[contains(@resource-id,'dialog_title')]
${buttonPopupOK}      xpath=//android.widget.Button[contains(@resource-id,'dialog_positive_button')]
#xpath success
${iconSuccess}    xpath=//android.widget.ImageView[contains(@resource-id,'success_icon')]   #id=com.scb.phone:id/success_icon
${titleTransferSuccess}    xpath=//android.widget.TextView[contains(@resource-id,'text_title')]    #id=com.scb.phone:id/text_title
${titleTimeSuccess}    xpath=//android.widget.TextView[contains(@resource-id,'text_date_time')]   #id=com.scb.phone:id/text_date_time
${titleReferenceIdSuccess}    xpath=//android.widget.TextView[contains(@resource-id,'text_reference_id')]    #id=com.scb.phone:id/text_reference_id

${RecentsScreen}   //android.widget.FrameLayout[@content-desc="SCB EASY"]/android.view.View
