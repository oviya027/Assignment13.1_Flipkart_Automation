*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot


#robot -d results Tests/TestCases.robot  


*** Test Cases ***
User should be able to Land on Flipkart Page
    Open Flipkart Page 
    Verify Home Page Title
    
Login Details    
    Enter Login Details

Select Main Group and Product
    Enter Electronics Section
    Select product from this Section

Verifying Product Availability
    Product verification
    Verify with product title
