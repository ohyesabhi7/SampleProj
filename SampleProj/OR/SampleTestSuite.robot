*** Settings ***
Library    OperatingSystem    
Library    Selenium2Library 
Library    String       

*** variables ***
${hoteslBuyyon}    Hot
${Sttr}    test12345-6667-75766.lb.merck.com

${flag}    0
${ip}    10.25.40.
*** Test Cases ***
First Test case
    #${lastip}    Set Variable    1
#    ${one}    1
    #${res}    Evaluate    ${lastip}+${random2dig} 
    #Log To Console    ${res}  
    Open Browser    http://zigzagadmin.com/    chrome
    
    @{Alllnk}    Get WebElements    //a[@href='#']
    ${firstElement}    Get Text    @{Alllnk}[0]
    Log To Console    links is${firstElement}    #zigzag airlines
    
    #${status}    ${result}=    Run keyword and ignore error    Page Should Contain Element    //a[contains(text(),'${firstElement}')]  
   # Log To Console    status is ${status}    #pass
    #Log To Console    result is ${result}    #none
    
    @{li}    Split String    ${firstElement}
    Log To Console    splited ${li}[0] 
    #Page Should Contain Element    //a[contains(text(),'${firstElement}')]    
    
    
    ${sstatus}    ${rresult}=    Run keyword and ignore error    Page Should Contain Element    //h2[contains(text(),'DIGITAL PRINTING')]  
    Log To Console    status is ${sstatus}    #pass
    Log To Console    result is ${rresult}    #none
    
    
    
    
    
    
    
    
    
    
    
    
    
        
    ${random2dig} =    Generate Random String    2    [NUMBERS]      
    ${ipadd}    Catenate    SEPARATOR=    ${ip}    ${random2dig}   
    Log To Console    ${ipadd}    
    ${random4dig} =    Generate Random String    4    [NUMBERS]
    Log To Console    ${random4dig}
    
    
    
  #     Page Should Contain Element  xpath://a[contains(text(),'Hotel')]
      
    
    
      #Open Browser    http://only-testing-blog.blogspot.com/2013/11/new-test.html    chrome
    #:FOR    ${i}    IN RANGE    999
    #\    Log To Console    ${i}
    #\    Exit For Loop If    ${i} == 9
*** keywords ***
        ${random2dig} =    Generate Random String    2    [NUMBERS]
     
     
        #Run Keyword And Return If    ${flag}==1
                                 
         #Click Element    partial link:SIGN-ON
         #${dfdg}    Run Keyword And Return Status    Element Should Be Enabled    /input[@name='lname']    
                 #Log To Console    message ${dfdg}  
                   
            