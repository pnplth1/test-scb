*** Settings ***
Library           AppiumLibrary
Library           JSONLibrary
Library           Collections
Library           String
Library           RequestsLibrary
Library           Process
Resource          ../../Resource/PageRepository/TransferMenuRepository.robot
Resource          ../../Resource/PageVariables/TransferMenuVariables.robot
Resource          ../../Resource/PageKeywords/MyCommon.robot
Resource          ../../Resource/PageVariables/BankName.robot

*** Keywords ***
Open App Android
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    

Click pay tab
    Check Error Timeout
    Wait Until Keyword Succeeds    30s    2s    Wait Until Element Is Visible    ${iconPay}
    Click Element    ${iconPay}
    Click Element    ${transferMenu}
    Check Input PIN  

Check Input PIN    
   ${status_inputpin}    Run Keyword And Return Status    Wait Until Keyword Succeeds    30s    2s    Wait Until Page Contains Element    ${InputPin} 
    Run Keyword If    '${status_inputpin}' == 'True'     Click PIN 
    
Close pop up
    ${status_popup}    Run Keyword And Return Status    Wait Until Keyword Succeeds    30s    2s    Wait Until Page Contains Element    ${popupAds} 
    Run Keyword If    '${status_popup}' == 'True'    Close pop up all
    
Close pop up all
    Click Element    ${chkclose}
    Click Element    ${popupClose}

Substring pin get json
    ${pin_value}=    Get Value From Json    ${json_obj}    $.pin
    Log To Console    ${pin_value[0]}
    ${pin_sub_1}    Get Substring    ${pin_value[0]}    0    1
    ${pin_sub_2}    Get Substring    ${pin_value[0]}    1    2
    ${pin_sub_3}    Get Substring    ${pin_value[0]}    2    3
    ${pin_sub_4}    Get Substring    ${pin_value[0]}    3    4
    ${pin_sub_5}    Get Substring    ${pin_value[0]}    4    5
    ${pin_sub_6}    Get Substring    ${pin_value[0]}    5    6
    Set Global Variable    ${pin_sub_1}
    Set Global Variable    ${pin_sub_2}
    Set Global Variable    ${pin_sub_3}
    Set Global Variable    ${pin_sub_4}
    Set Global Variable    ${pin_sub_5}
    Set Global Variable    ${pin_sub_6}

Click PIN
    Substring pin get json
    #pin1
    Run Keyword If    '1' == '${pin_sub_1}'    Click Element    ${pin_1}
    ...    ELSE IF    '2' == '${pin_sub_1}'    Click Element    ${pin_2}
    ...    ELSE IF    '3' == '${pin_sub_1}'    Click Element    ${pin_3}
    ...    ELSE IF    '4' == '${pin_sub_1}'    Click Element    ${pin_4}
    ...    ELSE IF    '5' == '${pin_sub_1}'    Click Element    ${pin_5}
    ...    ELSE IF    '6' == '${pin_sub_1}'    Click Element    ${pin_6}
    ...    ELSE IF    '7' == '${pin_sub_1}'    Click Element    ${pin_7}
    ...    ELSE IF    '8' == '${pin_sub_1}'    Click Element    ${pin_8}
    ...    ELSE IF    '9' == '${pin_sub_1}'    Click Element    ${pin_9}
    ...    ELSE IF    '0' == '${pin_sub_1}'    Click Element    ${pin_0}

    #pin2
    Run Keyword If    '1' == '${pin_sub_2}'    Click Element    ${pin_1}
    ...    ELSE IF    '2' == '${pin_sub_2}'    Click Element    ${pin_2}
    ...    ELSE IF    '3' == '${pin_sub_2}'    Click Element    ${pin_3}
    ...    ELSE IF    '4' == '${pin_sub_2}'    Click Element    ${pin_4}
    ...    ELSE IF    '5' == '${pin_sub_2}'    Click Element    ${pin_5}
    ...    ELSE IF    '6' == '${pin_sub_2}'    Click Element    ${pin_6}
    ...    ELSE IF    '7' == '${pin_sub_2}'    Click Element    ${pin_7}
    ...    ELSE IF    '8' == '${pin_sub_2}'    Click Element    ${pin_8}
    ...    ELSE IF    '9' == '${pin_sub_2}'    Click Element    ${pin_9}
    ...    ELSE IF    '0' == '${pin_sub_2}'    Click Element    ${pin_0}

    #pin3
    Run Keyword If    '1' == '${pin_sub_3}'    Click Element    ${pin_1}
    ...    ELSE IF    '2' == '${pin_sub_3}'    Click Element    ${pin_2}
    ...    ELSE IF    '3' == '${pin_sub_3}'    Click Element    ${pin_3}
    ...    ELSE IF    '4' == '${pin_sub_3}'    Click Element    ${pin_4}
    ...    ELSE IF    '5' == '${pin_sub_3}'    Click Element    ${pin_5}
    ...    ELSE IF    '6' == '${pin_sub_3}'    Click Element    ${pin_6}
    ...    ELSE IF    '7' == '${pin_sub_3}'    Click Element    ${pin_7}
    ...    ELSE IF    '8' == '${pin_sub_3}'    Click Element    ${pin_8}
    ...    ELSE IF    '9' == '${pin_sub_3}'    Click Element    ${pin_9}
    ...    ELSE IF    '0' == '${pin_sub_3}'    Click Element    ${pin_0}

    #pin4
    Run Keyword If    '1' == '${pin_sub_4}'    Click Element    ${pin_1}
    ...    ELSE IF    '2' == '${pin_sub_4}'    Click Element    ${pin_2}
    ...    ELSE IF    '3' == '${pin_sub_4}'    Click Element    ${pin_3}
    ...    ELSE IF    '4' == '${pin_sub_4}'    Click Element    ${pin_4}
    ...    ELSE IF    '5' == '${pin_sub_4}'    Click Element    ${pin_5}
    ...    ELSE IF    '6' == '${pin_sub_4}'    Click Element    ${pin_6}
    ...    ELSE IF    '7' == '${pin_sub_4}'    Click Element    ${pin_7}
    ...    ELSE IF    '8' == '${pin_sub_4}'    Click Element    ${pin_8}
    ...    ELSE IF    '9' == '${pin_sub_4}'    Click Element    ${pin_9}
    ...    ELSE IF    '0' == '${pin_sub_4}'    Click Element    ${pin_0}

    #pin5
    Run Keyword If    '1' == '${pin_sub_5}'    Click Element    ${pin_1}
    ...    ELSE IF    '2' == '${pin_sub_5}'    Click Element    ${pin_2}
    ...    ELSE IF    '3' == '${pin_sub_5}'    Click Element    ${pin_3}
    ...    ELSE IF    '4' == '${pin_sub_5}'    Click Element    ${pin_4}
    ...    ELSE IF    '5' == '${pin_sub_5}'    Click Element    ${pin_5}
    ...    ELSE IF    '6' == '${pin_sub_5}'    Click Element    ${pin_6}
    ...    ELSE IF    '7' == '${pin_sub_5}'    Click Element    ${pin_7}
    ...    ELSE IF    '8' == '${pin_sub_5}'    Click Element    ${pin_8}
    ...    ELSE IF    '9' == '${pin_sub_5}'    Click Element    ${pin_9}
    ...    ELSE IF    '0' == '${pin_sub_5}'    Click Element    ${pin_0}

    #pin6
    Run Keyword If    '1' == '${pin_sub_6}'    Click Element    ${pin_1}
    ...    ELSE IF    '2' == '${pin_sub_6}'    Click Element    ${pin_2}
    ...    ELSE IF    '3' == '${pin_sub_6}'    Click Element    ${pin_3}
    ...    ELSE IF    '4' == '${pin_sub_6}'    Click Element    ${pin_4}
    ...    ELSE IF    '5' == '${pin_sub_6}'    Click Element    ${pin_5}
    ...    ELSE IF    '6' == '${pin_sub_6}'    Click Element    ${pin_6}
    ...    ELSE IF    '7' == '${pin_sub_6}'    Click Element    ${pin_7}
    ...    ELSE IF    '8' == '${pin_sub_6}'    Click Element    ${pin_8}
    ...    ELSE IF    '9' == '${pin_sub_6}'    Click Element    ${pin_9}
    ...    ELSE IF    '0' == '${pin_sub_6}'    Click Element    ${pin_0}

Scroll other bank
    Wait Until Page Contains Element    xpath=//android.support.v4.view.ViewPager[contains(@resource-id,'secondary_view_pager')]    #id=com.scb.phone:id/secondary_view_pager
    Scroll    ${BAY}    ${toolbar}
    sleep   1

Input account number
    ${bankNumber_value}=    Get Value From Json    ${json_obj}    $.pin
    Log To Console    ${bankNumber_value[0]}
    Wait Until Keyword Succeeds    30s    2s      Wait Until Page Contains Element    ${AccountNumberTransfer}    
    Input Text    ${AccountNumberTransfer}    ${bankNumber_value[0]}

Input amount transfer
    ${amount_value}=    Get Value From Json    ${json_obj}    $.pin
    Log To Console    ${amount_value[0]}
    Input Text    ${AmountTransfer}    ${amount_value[0]}

Click button submit transfer
    Click Element    ${btnSubmitTransfer}

Click button confirm
    Click Element    ${btnSubmitTransfer}

Verify transfer succeed
    Wait Until Keyword Succeeds    30s    2s      Wait Until Page Contains Element    ${iconSuccess}
    Wait Until Page Contains Element    ${titleTransferSuccess}
    ${gettitleTransferSuccess}    Get Text    ${titleTransferSuccess}
    Log    ${gettitleTransferSuccess}
    Wait Until Page Contains Element    ${titleTimeSuccess}
    ${gettitleTimeSuccess}    Get Text    ${titleTimeSuccess}
    Log    ${gettitleTimeSuccess}
    Wait Until Page Contains Element    ${titleReferenceIdSuccess}
    ${gettitleReferenceIdSuccess}    Get Text    ${titleReferenceIdSuccess} 
    Log    ${gettitleReferenceIdSuccess}

Input data to Transfer of Money 
    ${bankNumber_value}=    Get Value From Json    ${json_obj}    $.bank_number
    Input Text     ${AccountNumberTransfer}     ${bankNumber_value[0]} 
    Log To Console    ${bankNumber_value[0]}
    ${amount_value}=    Get Value From Json    ${json_obj}    $.amount
    Log To Console    ${amount_value[0]}
    Input Text     ${AmountTransfer}     ${amount_value[0]} 
    Click Element    ${btnSubmitTransfer}

Verify Silp Money   
    Mobile element text should be     ${Successfulmoneytransfer}    ${txtSuccessfulmoneytransfer}

Click button back to Account Page
    Click Element    ${backtoAccount} 

Choose Bank
    #Scroll other bank
    Swipe Up Bank
    ${bankName_value}=    Get Value From Json    ${json_obj}    $.bank_name
    Log To Console    ${bankName_value[0]}
    Run Keyword If    'OWN SCB' == '${bankName_value[0]}'    Click Element    ${MySCB}          
    ...    ELSE IF    'OTHER SCB' == '${bankName_value[0]}'    Click Element    ${OtherSCB}
    ...    ELSE IF    'BAAC' == '${bankName_value[0]}'    Click Element    ${BAAC}
    ...    ELSE IF    'BAY' == '${bankName_value[0]}'    Click Element    ${BAY}  
    ...    ELSE IF    'BBL' == '${bankName_value[0]}'    Click Element    ${BBL}
    ...    ELSE IF    'CIMB' == '${bankName_value[0]}'    Click Element    ${CIMB}
    ...    ELSE IF    'CITI' == '${bankName_value[0]}'    Click Element    ${CITI}
    ...    ELSE IF    'DB' == '${bankName_value[0]}'    Click Element    ${DB}
    ...    ELSE IF    'GHB' == '${bankName_value[0]}'    Click Element    ${GHB}
    ...    ELSE IF    'GSB' == '${bankName_value[0]}'    Click Element    ${GSB}
    ...    ELSE IF    'HSBC' == '${bankName_value[0]}'    Click Element    ${HSBC}
    ...    ELSE IF    'ICBC' == '${bankName_value[0]}'    Click Element    ${ICBC}
    ...    ELSE IF    'ISBT' == '${bankName_value[0]}'    Click Element    ${ISBT}   
    ...    ELSE IF    'KBANK' == '${bankName_value[0]}'    Click Element    ${KBANK}
    ...    ELSE IF    'KK' == '${bankName_value[0]}'    Click Element    ${KKP}
    ...    ELSE IF    'KTB' == '${bankName_value[0]}'    Click Element    ${KTB} 
    ...    ELSE IF    'MHCB' == '${bankName_value[0]}'    Click Element    ${Mizuho}
    ...    ELSE IF    'SCBT' == '${bankName_value[0]}'    Click Element    ${Standard}
    ...    ELSE IF    'SMBC' == '${bankName_value[0]}'    Click Element    ${SEC}
    ...    ELSE IF    'TBANK' == '${bankName_value[0]}'    Click Element    ${TBANK}
    ...    ELSE IF    'TCRB' == '${bankName_value[0]}'    Click Element    ${TCD}
    ...    ELSE IF    'TMB' == '${bankName_value[0]}'    Click Element    ${TMB} 
    ...    ELSE IF    'TSCO' == '${bankName_value[0]}'    Click Element    ${TISCO}
    ...    ELSE IF    'UOB' == '${bankName_value[0]}'    Click Element    ${UOB}

### read json file ###
Read json file
    ${json_obj}=    Load JSON From File    C:/Users/MRG-PC/Downloads/robotframework/scb_easy/Resource/dataFile/dataTransfer.json    
    Set Global Variable    ${json_obj}

POST API Confrim
    ${status_UI}=    Run Keyword And Return Status    Wait Until Keyword Succeeds    30s    2s    Wait Until Page Contains Element    ${iconSuccess}
    Run Keyword If    '${status_UI}' == 'True'    Log    ${status_TRUE}
    ...    ELSE    Log    ${status_FAIL}
    ${URL_POST}=    Get Value From Json    ${json_obj}    $.url_confirm
    ${que_idvalue}=    Get Value From Json    ${json_obj}    $.que_id
    ${ref_idvalue}=    Get Value From Json    ${json_obj}    $.ref_id
    Log To Console    ${URL_POST[0]}
    Log To Console    ${que_idvalue[0]}  
    Log To Console    ${ref_idvalue[0]} 
    Create Session    ConfrimAPI    ${URL_POST[0]}
    &{body}=    Create Dictionary    que_id=${que_idvalue[0]}    ref_id=${ref_idvalue[0]}     status=${status_UI} 
   #FirstName=david1234    LastName=david1234     UserName=david1234    Password=david1234     Email=david1234@gmail.com
    &{headers}=     Create Dictionary    Content-Type=application/json
    ${resp}=    POST Request    ConfrimAPI    /register    data=${body}   headers=${headers}
    Log To Console     ${resp.status_code}
    Log To Console     ${resp.content}
    
    #Validation
    ${status_code}=     convert to string    ${resp.status_code}
    Should be equal     ${status_code}     200
    
    # ${res_body}=    convert to string    ${resp.content}
    # Should Contain    ${res_body}     User already exists
    # Should Contain    ${res_body}     FAULT_USER_ALREADY_EXISTS
    
Click Back To Account
    Swipe Up Slip
    Click Element    ${backtoAccount} 
    
Check Error Timeout
    ${status_popup}    Run Keyword And Return Status    Wait Until Keyword Succeeds    30s    2s    Wait Until Page Contains Element    ${ErrorTimeout} 
    Run Keyword If    '${status_popup}' == 'True'    Click Element    ${buttonPopupOK} 

# Get Working Path
#   Run Process         pwd     shell=True    alias=proc1
#   ${WORKING_PATH}=    Get Process Result    proc1    stdout=true
#   Set Suite Variable     ${WORKING_PATH}

# Spawn Appium Server
#   Get Working Path
#   Start Process    appium    -p   ${APPIUM_PORT}    -bp    ${BOOTSTRAP_PORT}    stdout=${WORKING_PATH}/appium-log-${PLATFORM_NAME}.txt    shell=true
#   Sleep   5

Close Appium Server
  Terminate All Processes     kill=True
  Sleep   5 