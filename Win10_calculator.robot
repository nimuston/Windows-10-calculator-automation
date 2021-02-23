*** Settings ***
Documentation    Suite description
Resource  Win10_calc_resource.robot
Test Setup  start calculator
Test Teardown  Run Keyword If Test Failed  Restart calculator

*** Test Cases ***
Test case 1 plus calculation
    press calc button 5
    press calc button +
    press calc button 1
    press calc button =
    check calculator total  6
    press calc button c

Test Case 2 minus calculation
    [Setup]
    press calc button 5
    press calc button -
    press calc button 1
    press calc button =
    check calculator total  4
    Press calc button C

Test Case 3 multiply
    [Setup]
    press calc button 5
    press calc button *
    press calc button 2
    press calc button =
    check calculator total  10
    press calc button c

Test case 4 divide
    [Setup]
    press calc button 1
    press calc button 2
    press calc button /
    press calc button 2
    press calc button =
    check calculator total  6
    press calc button C

Test case Close calculator
    [Setup]
    close calculator