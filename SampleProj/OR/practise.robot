*** Settings ***
Library   String
Library   OperatingSystem
Library    Selenium2Library    
| Library | ../Library/cus.py

*** Variables ***
${username}    //input[@name='userName']
${psername}    //input[@name='password']
${login}    //input[@name='login']
${flag}    True


${DD}    //select[@name='passCount']
*** Keywords ***

passs
    Log To Console    passssssssssssss
   
faill
    Log To Console    faillllllllllll      
    
nuetral
    Log To Console    neutralllllllllllll   

tp
    Log To Console    tppppppppppppp   
    
tp1
    Log To Console    tpppppppp1111111 

login
    
       
    Open Browser    http://demo.guru99.com/test/upload/    chrome  
    #Input Text    ${username}    batman
    #Input Text    ${psername}    batman
    #Click Element    ${login}    
    #Select From List By Index    ${DD}    2
   # Input Text    //input[@class='gLFyf gsfi']    abc
    #Press Keys    //input[@class='gLFyf gsfi']    ENTER
       # sleep    5  
    #Select Frame    locator
    #Click Element    //span[text()='Next']    
   #Choose File    //*[@id="uploadfile_0"]    C://Users/ Pictures/Chrysanthemum.JPG
   ${res}    Get Element Attribute    //*[@id="uploadfile_0"]    class
   Log To Console    reslt is ${res}    
   Run Keyword If    '${res}'=='upload_txt'   Log To Console    hiii    
   Run Keyword If    '${flag}'== 'Terue'    Run Keywords    passs 
   #...    tp
   ...    ELSE    nuetral
   tp1
*** Test Cases ***
Test case 1
    login
    
