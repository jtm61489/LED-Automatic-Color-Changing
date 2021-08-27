#$ python LED_Testing.py
# Module Imports

import sys
import aiomysql
import mariadb

import platform    # For getting the operating system name
import subprocess  # For executing a shell command
from blinkstick import blinkstick  # LED API
import asyncio     # Async funtionality
import time        # To make timer stuff if wanted
#from codetiming import Timer  # delete me?
import re          # Regular exsprestions
from enum import IntEnum, Enum
class Color(IntEnum):
    RED = 1
    GREEN = 2
    BLUE = 3

class ComponentInControl(IntEnum):
    Controller = 1
    ColorWheel = 2
    Auto = 3
    
ColorEnum = Color.RED
ComponentInControlEnum = ComponentInControl.Auto

# Controller input libraries
from evdev import ecodes, list_devices, AbsInfo, InputDevice, categorize

LedStatus = False
endScript = False
rgbRed = 0
rgbGreen = 0
rgbBlue = 0

# Member to say if a device is on or off
xbox = False
mainTv = False
oldXbox = False
nintendo = False
playstation = False

# IPs or Names for devices
mainTvIp = 'Samsung'
nintendoIp = '192.168.1.75'
xboxIp = '192.168.1.82'
playstationIp = '192.168.1.90'
# Controller button constants

aBtn = 304
bBtn = 305
xBtn = 307
yBtn = 308

#up = 3
#down = 3
#left = 3
#right = 3

start = 315
select = 314

#lTrig = 3
#rTrig = 3

lBump = 310
rBump = 311

pingAttempts = 7
pingTime = 40

def StartUp():
    conn = mariadb.connect(host='127.0.0.1', port=3306,
                                       user='LedUser', password='XXXXXXXXXX', database='LED')
        
    cur = conn.cursor()
    cur.execute("SELECT LightsOn, UseAppControl FROM LED_Main")
    #print(cur.description)
    for LightsOn, UseAppControl in cur:
        #print(f"LightsOn: {LightsOn}, UseAppControl: {UseAppControl}")
        
        global LedStatus
        LedStatus = LightsOn
        
    r = cur.fetchall()
    print(r)
    cur.close()
    conn.close()
        

async def pingAsync(host):
    """
    Returns True if host (str) responds to a ping request.
    Remember that a host may not respond to a ping (ICMP) request even if the host name is valid.
    """
    print(host)
    # Option for the number of packets as a function of
    param = '-n' if platform.system().lower()=='windows' else '-c'

    # Building the command. Ex: "ping -c 1 google.com"
    command = ['ping', param, '1', host]    
    
    process = await asyncio.create_subprocess_exec(
        'ping', param, '1', host, stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE
        )
    stdout, stderr = await process.communicate()
    
    print(stdout)   
    
    
    result = re.search(r"1 received", stdout.decode().strip())
    
    if result:        
        pingResult = float(re.search('time=(.+?)ms\\n', stdout.decode().strip()).group(1).strip()) < pingTime
        print(result)
        return pingResult
    else:
        return False

async def ControllerLoop():
    global endScript
    while not endScript:
        try:
            
            gamepad = InputDevice('/dev/input/event0')
            for g in range(1,10):
                
                result = re.search('X-Box', str(gamepad))
                
                if result:
                    break
                
                gamepad = InputDevice('/dev/input/event' + str(g))
                print(gamepad)

            print(gamepad)
        
            async for event in gamepad.async_read_loop():   #read_loop():
                #print(categorize(event))
                if event.type == ecodes.EV_KEY:    
                    print(event)                    
                    
                    if event.value == 1:
                        
                        if event.code == lBump:
                            UpdateLedMain(not LedStatus,ComponentInControl.Auto, 0, 0, 0, Color.RED)                       
                        #if event.code == rBump:                            
                         #   endScript = True
                          #  break
                        global ColorEnum
                        if event.code == yBtn:
                            #ColorEnum = Color.AUTO
                            UpdateLedMain(LedStatus, ComponentInControl.Auto, 0, 0, 0, Color.RED)
                        if event.code == aBtn:                            
                            #ColorEnum = Color.GREEN
                            UpdateLedMain(LedStatus, ComponentInControl.Controller, 0, 0, 0, Color.GREEN)
                        if event.code == bBtn:
                            #ColorEnum = Color.RED
                            UpdateLedMain(LedStatus, ComponentInControl.Controller, 0, 0, 0, Color.RED)
                        if event.code == xBtn:
                            #ColorEnum = Color.BLUE
                            UpdateLedMain(LedStatus, ComponentInControl.Controller, 0, 0, 0, Color.BLUE)
            
            await asyncio.sleep(1)
            
        except Exception as e:
            print('Error! Error!')
            print(e)
            await asyncio.sleep(2)
        finally:
            print('gamepad error, loop around and keep trying to connect to gamepad')
        
   

async def Main():
    i = 1
    while not endScript:  
        try:
            #bstick = blinkstick.find_first()
            
            allSticks = blinkstick.find_all()
            bstickCounts = 0
            for bstick in allSticks:            
                
                bstickCounts += 1
                #print (bstickCounts)
                
                # break out of loop to end script running
                if not LedStatus:
                    for i in range(0,32):
                        bstick.set_color(index=i,red=0,blue=0,green=0)
                    
                else:
                    
                    i = 1
                    
                    for i in range(0,32):
                    
                        if ComponentInControlEnum == ComponentInControl.Auto:
                            if xbox and nintendo and playstation:
                                if i % 3 == 0:
                                    bstick.set_color(index = i, green=255)
                                elif i % 2 == 0:
                                    bstick.set_color(index = i, red=255)
                                else:
                                    bstick.set_color(index = i, blue=255)
                            elif xbox and nintendo:
                                if i % 2 == 0:
                                   bstick.set_color(index = i, green=255)
                                else:
                                   bstick.set_color(index = i, red=255)
                            elif xbox and playstation:
                                if i % 2 == 0:
                                   bstick.set_color(index = i, green=255)
                                else:
                                   bstick.set_color(index = i, blue=255)
                            elif nintendo and playstation:
                                if i % 2 == 0:
                                   bstick.set_color(index = i, red=255)
                                else:
                                   bstick.set_color(index = i, blue=255)
                            elif xbox:
                                bstick.set_color(index = i, green=255)
                            elif nintendo:
                                bstick.set_color(index = i, red=255)
                            elif playstation:
                                bstick.set_color(index = i, blue=255)
                            elif not xbox and not nintendo and not playstation:
                                bstick.set_color(index = i, red=75 , green=0, blue=130)
                    
                        if ComponentInControlEnum == ComponentInControl.Controller:
                    
                            if ColorEnum == Color.RED:        
                                bstick.set_color(index = i, red=255)
                            elif ColorEnum == Color.BLUE:        
                                bstick.set_color(index = i, blue=255)
                            elif ColorEnum == Color.GREEN:        
                                bstick.set_color(index = i, green=255)
                        
                        if ComponentInControlEnum == ComponentInControl.ColorWheel:
                            #ToDo = 1
                            bstick.set_color(index = i, red=rgbRed, green=rgbGreen, blue = rgbBlue)
                            
        except Exception as e:
            print('COLOR ERROR COLOR ERROR')
            print(e)
            await asyncio.sleep(2)
        
        
        if not allSticks:
            print('NO BSTICK CONNECTED')
        

        #print(" ")
        #print ("x = " + str(x))
        #print ("nintendo = " + str(nintendo))
        #print ("mainTv = " + str(mainTv))
        #print ("xbox = " + str(xbox))
        #print ("playstation = " + str(playstation))
        #print(" ")
        await asyncio.sleep(1)
    
    
async def PingXbox():
    pingFailCount = 0
    while not endScript:
        
        # break out of loop to end script running        
        if LedStatus and ComponentInControlEnum == ComponentInControl.Auto:           
        
            try:
                global xbox        
                result = await pingAsync(xboxIp)
                
                if xbox:
                
                    if result:
                        pingFailCount = 0
                    else:
                        pingFailCount += 1
                else:
                    
                     if result:
                        pingFailCount += 1 
                     else:
                        pingFailCount = 0
                
                if pingFailCount == pingAttempts:
                    xbox = not xbox
                    pingFailCount = 0
            except:
                print('Xbox ping error')
        await asyncio.sleep(2)

    
async def PingNintendo():
    pingFailCount = 0
    while not endScript:
        
        # break out of loop to end script running
        if LedStatus and ComponentInControlEnum == ComponentInControl.Auto:
        
            try:
                global nintendo
                result = await pingAsync(nintendoIp)
                
                if nintendo:
                
                    if result:
                        pingFailCount = 0
                    else:
                        pingFailCount += 1
                else:
                    
                     if result:
                        pingFailCount += 1 
                     else:
                        pingFailCount = 0
                
                if pingFailCount == pingAttempts:
                    nintendo = not nintendo
                    pingFailCount = 0
            except:
                print('Nintendo ping error')
        await asyncio.sleep(2)
    
async def PingPlaystation():
    pingFailCount = 0
    while not endScript:
        
        # break out of loop to end script running
        if LedStatus and ComponentInControlEnum == ComponentInControl.Auto:          

            try:
                global playstation
                result = await pingAsync(playstationIp)
                
                if playstation:
                
                    if result:
                        pingFailCount = 0
                    else:
                        pingFailCount += 1
                else:
                    
                     if result:
                        pingFailCount += 1 
                     else:
                        pingFailCount = 0
                
                if pingFailCount == pingAttempts:
                    playstation = not playstation
                    pingFailCount = 0
                
            except Exception as e:
                print('Playstation ping error')
                print(e)
        await asyncio.sleep(2)

async def DataBaseChecks():
    while not endScript:
        conn = await aiomysql.connect(host='127.0.0.1', port=3306,
                                       user='LedUser', password='XXXXXXXXXX', db='LED',
                                       loop=loop)

        cur = await conn.cursor()
        await cur.execute("SELECT LightsOn, id_ComponentInControl, red, green, blue, controllerColor FROM LED_Main")
        print(cur.description)
        async for LightsOn, componentInControl, red, green, blue, controllerColor in cur:
            #print(f"LightsOn: {LightsOn}")
            
            global LedStatus
            LedStatus = LightsOn
            
            global rgbRed
            rgbRed = red
            
            global rgbGreen
            rgbGreen = green
            
            global rgbBlue
            rgbBlue = blue
            
            global ColorEnum
            ColorEnum = controllerColor
            
            global ComponentInControlEnum
            ComponentInControlEnum = componentInControl
            
        r = await cur.fetchall()
        #print(r)
        await cur.close()
        conn.close()
        await asyncio.sleep(2)

def UpdateLedMain(lightsOn, componentInControl, red, green, blue, controllerColor):

        conn = mariadb.connect(host='127.0.0.1', port=3306,
                                   user='LedUser', password='XXXXXXXXXX', database='LED')
    
        cur = conn.cursor()
        cur.execute("""UPDATE LED_Main
                       SET LightsOn = %s, red = %s, green = %s, blue = %s, controllerColor = %s, id_ComponentInControl = %s
                       where id = %s""",
                    (lightsOn, red, green, blue, int(controllerColor), int(componentInControl),  1))
        
        print(cur.description)
        
        conn.commit()

        cur.close()
        conn.close()




StartUp()


loop = asyncio.get_event_loop()

#loop.create_task(PingTv())

loop.create_task(PingXbox())
loop.create_task(PingNintendo())
loop.create_task(PingPlaystation())
loop.create_task(Main())
loop.create_task(ControllerLoop())
loop.create_task(DataBaseChecks())
loop.run_forever()




#commands = asyncio.gather(pingAsync(mainTvIp),pingAsync(nintendoIp),pingAsync(xboxIp))
#mainTv,nintendo,xbox = loop.run_until_complete(commands)

#taskCntlr = loop.create_task(ControllerLoop())
#loop.run_forever()
#asyncio.run(ControllerLoop())


#loop.close()



#  test that it runs when r pi boots up
#f = open("/home/pi/Desktop/test.txt", "w+")
#f.write("did you run?")
#f.close()


#async def PingTv():
 #   while not endScript:
        
        #break out of loop to end script running
  #      if LedStatus:           
        
   #         try:
    #            global mainTv
     #           mainTv = await pingAsync(mainTvIp)            
      #      except:
       #         print('Tv ping error')
        #await asyncio.sleep(2)






        

