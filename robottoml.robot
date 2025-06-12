*** Settings ***
Library    RetryFailed


*** Variables ***
${DB_USERNAME}    %{DB_USERNAME}
${DB_PASSWORD}    %{DB_PASSWORD}

*** Test Cases ***

T1
    [Documentation]    combinatie van envirement variables en variables in toml file
    Log To Console    ${DB_USERNAME},${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_DATABASE}

T2
    [Documentation]    retry
    Log To Console    ${DB_USERNAME},${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_DATABASE}
    Fail    msg=Deze test gaat fout
