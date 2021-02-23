*** Settings ***
Documentation    Suite description
Library  Win10_calculator.py
Resource  Win10_calc_resource.robot
Test Setup  start calculator

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

Test case X Close calculator
    [Setup]
    close calculator