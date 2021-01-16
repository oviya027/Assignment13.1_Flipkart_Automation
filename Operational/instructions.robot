*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot

*** Keywords ***
Open Flipkart Page 
    Open Browser  ${url_home}  ${brows}   
    Maximize Browser Window
    sleep  4s
    Log to Console  Step1

Verify Home Page Title
    Title Should Be  ${Expected_homePage}
    Execute Javascript  window.scrollTo(0, 500)
    Log to Console  Step2

Enter Login Details
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  ${Mobile_number}
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  ${Account_password}
    Click Element  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[3]/button
    Log to Console  Step3

Enter Electronics Section
    Sleep  5s
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/span[1]
    Sleep  3s
    #Mouse Over  ${Expected_Subcategory}
    #Element Text Should Be  ${Expected_Subcategory_title}
    Click Element  ${Expected_Subcategory}
    Log to Console  Step4

Select product from this Section
    Sleep  3s
    Click Element  ${Expected_product}
    Select Window  ${Expected_product_window}
    Click Element  ${Add_to_cart}
    Log to Console  Step5

Product verification
    Sleep  3s
    Click Element  ${Flipkart_home}
    Click Element  ${Expected_Cart}
    Sleep  4s
    Log to Console  Step6

Verify with product title
    Page Should Contain  ${Expected_cart_product}
    Log to Console  Step7




    