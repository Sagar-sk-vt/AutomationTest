*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}    mydb
${DBPass}    root
${DBUser}    root

*** Test Cases ***
Create Table
    ${output}=    Execute Sql String    create table person(id integer, name varchar(20))
    @{queryresult}=    Query    select * from mydb.person;
    Log To Console    many     @{queryresult}





