*** Settings ***
Documentation    Suite description
Library  Win10_calculator.py

*** Keywords ***
Press calc button 1
    press calc button  num1Button

Press calc button 2
    press calc button  num2Button

Press calc button 3
    press calc button  num3Button

Press calc button 4
    press calc button  num4Button

Press calc button 5
    press calc button  num5Button

Press calc button 6
    press calc button  num6Button

Press calc button 7
    press calc button  num7Button

Press calc button 8
    press calc button  num8Button

Press calc button 9
    press calc button  num9Button

Press calc button 0
    press calc button  num0Button

Press calc button +
    press calc button  plusButton

Press calc button -
    press calc button  minusButton

Press calc button =
    press calc button  equalButton

Press calc button C
    press calc button  clearButton

Press calc button *
    press calc button  multiplyButton

Press calc button /
    press calc button  divideButton

close calculator
    press calc button  Close

Check calculator total
    [Arguments]  ${totalamount}
    ${total}  CheckResults
    should be equal  ${totalamount}  ${total}

Restart calculator
    killandrestart