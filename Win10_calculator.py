import pywinauto
import time


def start_calculator():
    global calc_window
    calc = pywinauto.Application(backend='uia').start('calc.exe')
    time.sleep(2)
    calc_connect = calc.connect(title='Calculator')
    calc_window = calc_connect.window()


def press_calc_button(buttonID):
    calc_window.child_window(auto_id=buttonID).click()


def close_calculator():
    calc_window.child_window(auto_id='Close').click()


def CheckResults():
    results = calc_window.child_window(auto_id='CalculatorResults')
    wrapper = results.wrapper_object()
    resultsText = wrapper.texts()
    # next we need to convert list to string
    amount = ''
    for element in resultsText:
        amount += element
    # parse amount from string
    return amount[11:]
