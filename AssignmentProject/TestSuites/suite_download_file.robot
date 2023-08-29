*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     BuiltIn

*** Test Cases ***
Download The File
    ${project_folder}    Evaluate    os.path.dirname(os.path.abspath('__file__'))
    Log    Project folder path: ${project_folder}
    ${prefs} =    Create Dictionary    download.default_directory=${project_folder}      safebrowsing.enabled=false
     ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_experimental_option    detach    ${True}

    Open Browser    url=https://www.7-zip.org/download.html   browser=chrome    options=${options}
    Maximize Browser Window
    click element     (//td[@class='Item'])[1]
    Wait Until Keyword Succeeds    20x    2s    File Should Exist   ${project_folder}\\7z2301-x64.exe






