import pyautogui

from openpyxl import load_workbook

import openpyxl

import string

 

class custom:

    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def enterDate(self,abc):

        abc1="%r"%abc

        pyautogui.hotkey('ctrl', 'c')  # ctrl-c to copy

        pyautogui.hotkey('ctrl', 'v')

       

    def selectAllDDValues(self):

        pyautogui.hotkey('ctrl', 'a') 

       

    #Keyboard Functions

    def pass_text_from_keyboard(self,key):

        pyautogui.press(key)   

       

    def press_enter(self):

        pyautogui.press('enter')

       

    def press_down_key(self):

        pyautogui.press('down')

   

    def press_tab_key(self):

        pyautogui.press('tab')