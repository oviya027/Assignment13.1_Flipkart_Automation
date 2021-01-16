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

Select Main group and product
    Enter Electronics Section
    Select product from this Section

Verifying product availability
    Product verification
    Verify with product title
