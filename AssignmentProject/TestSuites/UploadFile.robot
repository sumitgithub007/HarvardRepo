*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${URL}            https://cgi-lib.berkeley.edu/ex/fup.html
${BROWSER}        Chrome

*** Test Cases ***
Upload File Test
    ${proj_path}    Evaluate    os.path.dirname(os.path.abspath('__file__'))
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    ${file_path}    set variable    ${proj_path}\\file.txt
    Call Method    ${options}    add_experimental_option    detach    ${True}

    Open Browser   ${URL}   browser=chrome    options=${options}

    Choose File     xpath://input[@name='upfile']    ${file_path}

    click element     xpath://input[@type='submit']