*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     BuiltIn

*** Test Cases ***
Download The File
    ${project_folder}    Evaluate    os.path.dirname(os.path.abspath('__file__'))
    Log    Project folder path: ${project_folder}
    ${prefs} =    Create Dictionary    download.default_directory=${project_folder}  add_argument=--no-sandbox    safebrowsing.enabled=false
     ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_experimental_option    detach    ${True}

    Open Browser    url=https://www.7-zip.org/download.html   browser=chrome    options=${options}
    Maximize Browser Window
    click element     body > table > tbody > tr > td:nth-child(2) > table:nth-child(3) > tbody > tr:nth-child(8) > td:nth-child(1) > a
    Wait Until Keyword Succeeds    20x    2s    File Should Exist   ${project_folder}\\7z2301-x64.exe






