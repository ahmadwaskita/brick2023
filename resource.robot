*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         qademo.onebrick.io
${BROWSER}        Firefox
${DELAY}          0
${VALID USER}     ahmad.waskita@test.com
${VALID PASSWORD}    rahasiabersama
${SIGNUP URL}     https://${SERVER}/
${LOGIN URL}    https://${SERVER}/login
${DASHBOARD URL}    https://${SERVER}/dashboard


*** Keywords ***
Open Browser to Sign Up Page
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Sign Up Page Should be Open

Sign Up Page Should be Open
    Title Should Be    Brick Sign Up Form

Input First Name
    [Arguments]    ${firstname}
    Input Text    firstName    ${firstname}
Input Last Name
   [Arguments]    ${lastname}
    Input Text    lastName    ${lastname}
Input Email
   [Arguments]    ${email}
    Input Text    email    ${email}
Input Phone Number
   [Arguments]    ${phoneNumber}
    Input Text    phoneNumber    ${phoneNumber}
Input Address
   [Arguments]    ${address}
    Input Text    address    ${address}
Input Password
   [Arguments]    ${password}
    Input Text    password    ${password}
Input Confirm Password
   [Arguments]    ${confirm_password}
    Input Text    confirm_password    ${confirm_password}
Submit Registration
    Click Button    register

Modal Succes Should Be Open
    Wait Until Element Is Visible    swal2-title
    Element Text Should Be    swal2-title    Success

Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    your_email    ${username}

Input PasswordLogin
    [Arguments]    ${password}
    Input Text    password    ${password}

Submit Credentials
    Click Button    login

Dashboard Page Should Be Open
    Location Should Contain    ${DASHBOARD URL}
    Title Should Be    Brick Dashboard
