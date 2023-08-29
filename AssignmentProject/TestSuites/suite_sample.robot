*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     BuiltIn

*** Test Cases ***
Download The File
    ${project_folder}    Evaluate    os.path.dirname(os.path.abspath('__file__'))
    Log    Project folder path: ${project_folder}


    ${prefs} =    Create Dictionary    detach=True    download.default_directory=${project_folder}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_experimental_option    detach    ${True}
    Open Browser    url=https://www.dwsamplefiles.com/download-json-sample-files/    browser=chrome    options=${options}
    Maximize Browser Window
    Click Element    xpath://*[text()='Download Sample1.JSON']
    Wait Until Keyword Succeeds    5x    2s    File Should Exist   ${project_folder}\\dwsample1-json.json
