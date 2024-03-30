*** Settings ***
Library           AppiumLibrary
Resource          ../SCB_EASY/Resource/PageKeywords/TransferMenuKeyword.robot 
Suite Teardown        Close Appium Server

           
*** Test Cases ***
#อ่านไฟล์
Read JSON File
    Read json file
#เปิดเครื่อง
Open Applications
    Open App Android

Transfer Money app
    Close pop up  
    Click pay tab
    Choose Bank
    Input data to Transfer of Money 
    Click button Confirm
    Verify transfer succeed
  
#POST API Confrim test
    POST API Confrim
    [Teardown]   Click Back To Account

    


    
   
