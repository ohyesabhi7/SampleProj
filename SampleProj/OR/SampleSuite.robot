*** Settings ***
Library    OperatingSystem    
Library    Selenium2Library    
Library    Collections 
Library    String
*** variables ***
${LOWER}          qwertyuiopasdfghjklzxcvbnm
${UPPER}          QWERTYUIOPASDFGHJKLZXCVBNM
${LETTERS}        ${LOWER}${UPPER}
${test}    Test
${NUMBERS}    1234567890

*** Keywords***
String Lenght Should Be And It Should Consist Of
    [Arguments]    ${string}    ${length}    ${allowed chars}
    Length Should Be    ${string}    ${length}
    : FOR    ${i}    IN RANGE    0    ${length}
    \    Should Contain    ${allowed chars}    ${string[${i}]}    String '${string}' contains character '${string[${i}]}' which is not in allowed characters '${allowed chars}'.



Test Random String With
    [Arguments]    ${expected characters}    ${given characters}
    ${result} =    Generate Random String    100    ${given characters}
    String Lenght Should Be And It Should Consist Of    ${result}    100    ${expected characters}
       
*** Test Cases ***
First Test case1
    #Open Browser    http://newtours.demoaut.com    chrome
    
    #:FOR    ${i}    IN RANGE    999
    #\    Log To Console    ${i}
    #\    Exit For Loop If    ${i} == 9
        
    #Click Element    xpath://a[contains(text(),'Hot')]
    #Click Element    partial link:SIGN-ON   
    #Click Element    xpath://a[contains(text(),'Hotels')]
    #@{lis}=    Create List    abc    prq
    #Append To List    ${lis}    zks
    #${value}    Get From List    ${lis}    2
    #Log To Console    ${value} 
    #Log To Console    no is 
    #${numbers}=    Evaluate    random.sample(range(1, 9), 3)    random
   # ${numbers}=    Evaluate    random.sample([unicode(x) for x in range(1, 11)], 4)    random    
    
    #${result} =    Generate Random String
    #Log To Console    String is${result}
     
     
     #${NUMBERS}    1234567890 Declare in varaibale section
        
     ${resuflt} =    Generate Random String    2    [NUMBERS]
     ${TestString}    Catenate    SEPARATOR=-    ${Test}    ${resuflt}
     
        Log To Console     lisrener is ${TestString}
 *** comments ***
        
    ${TestString}    Catenate    SEPARATOR=-    ${Test}    ${result}
        Log To Console    catString is${TestString}
        
        Log To Console    ************
         ${result}    Test Random String With    ${NUMBERS}    [NUMBERS]
        #String Lenght Should Be And It Should Consist Of    ${result}    8    ${NUMBERS}  
        Log To Console    ${result}    
        
    
    
    
        
    
    
    
    
    
    
    
    ${result} =    Generate Random String
    Log To Console    String is${result}
    
    ${TestString}    Catenate    SEPARATOR=-    ${Test}    ${result}
        Log To Console    catString is${TestString}
        
        
        
       
        
            :FOR    ${i}    IN RANGE    10
            \    Log To Console    message    
        
        
        
        
        