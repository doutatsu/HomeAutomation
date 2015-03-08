#!/usr/bin/ python

# import serial
import sys
import requests
from threading import Thread
from time import sleep

class HW_Control(object):
  @staticmethod
  def main():
    HW_Control.send_status("Sensor", "1")
  # Send device status to the web app
  @staticmethod
  def send_status(device,status):
    print "Sending status"
    payload = {"device": device, "value": status}
    r = requests.post("https://home-automation-mcr.herokuapp.com/sync", data=payload)
    print(r.text)
  # Return device status
  @staticmethod
  def get_status(device):
    print "Motion detected"
  # Switch on or off the socket
  @staticmethod
  def socket_control(device, status):
    if status == 1:
      os.system("./pihat --repeats=50 --id=%s --channel=0 --state=1" % device)
    else:
      os.system("./pihat --repeats=50 --id=%s --channel=0 --state=0" % device)
  # Wireless Motion Sensor: Professional using XRF For the Raspberry Pi by Andrew Edney - Feb 15, 2014 (http://connecteddigitalworld.com/2014/02/15/build-wireless-motion-sensor-raspberry-pi/2/)
  @staticmethod
  def pir_control
    # loop until the serial buffer is empty
    currvalue=”
    # declare to variables, holding the com port we wish to talk to and the speed
    port = "/dev/ttyAMA0"
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
        if char == "a":
          # start building the full llap message by adding the ‘a’ we have
          llapMsg = "a"
         
          # read in the next 11 characters form the serial buffer
          # into the llap message
          llapMsg += ser.read(11)
         
          # now we split the llap message apart into devID and data
          devID = llapMsg[1:3]
          data = llapMsg[3:]
         
          if data.startswith("BUTTONAON"):
            print “Motion detected”
         
          if data.startswith("BUTTONAOF"):
            print “Motion detector reset”                            
        sleep(0.2)
HW_Control.main()


