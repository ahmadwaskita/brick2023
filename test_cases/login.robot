*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ../resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    ahmad.waskita@brick.com
    Input PasswordLogin    rahasiabersama
    Submit Credentials
    Dashboard Page Should Be Open
    Modal Succes Should Be Open
    [Teardown]    Close Browser