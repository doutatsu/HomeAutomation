#!/usr/bin/env python
“””
Wireless Motion Sensor: Professional using XRF
For the Raspberry Pi
“””
 
import serial
import json
# Python JSON interface
import requests
from time import sleep
import sys
 
defmain():
        # loop until the serial buffer is empty
        currvalue=”
        # declare to variables, holding the com port we wish to talk to and the speed
        port = ‘/dev/ttyAMA0′
        baud = 9600
       
        # open a serial connection using the variables above
        ser = serial.Serial(port=port, baudrate=baud)
       
        # wait for a moment before doing anything else
        sleep(0.2)   
 
        whileTrue:   
                while ser.inWaiting():
                        # read a single character
                        char = ser.read()
                       
                        # check we have the start of a LLAP message
                        if char == ‘a’:
                                # start building the full llap message by adding the ‘a’ we have
                                llapMsg = ‘a’
                               
                                # read in the next 11 characters form the serial buffer
                                # into the llap message
                                llapMsg += ser.read(11)
                               
                                # now we split the llap message apart into devID and data
                                devID = llapMsg[1:3]
                                data = llapMsg[3:]
                               
                                if data.startswith(‘BUTTONAON’):
                                        # payload = {'device': 'Sensor', 'value': '1'}
                                        # r = requests.post('http://localhost:3000/sync', data=payload)
                                        # print r.text
                                        print“Motion detected”
                               
                                if data.startswith(‘BUTTONAOF’):
                                        print“Motion detector reset”
                                                               
                        sleep(0.2)
          
if __name__ == “__main__”:
        main()