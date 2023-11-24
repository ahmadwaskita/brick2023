*** Settings ***
Documentation     A test suite with a single test for registration.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          ../resource.robot

*** Test Cases ***
Registration
    Open Browser to Sign Up Page
    Input First Name    ahmad
    Input Last Name    waskita
    Input Email    ahmad.waskita@brick.com
    Input Phone Number    823888999
    Input Address    Jakarta
    Input Password    rahasiabersama
    Input Confirm Password    rahasiabersama
    Submit Registration
    Modal Succes Should Be Open
    [Teardown]    Close Browser