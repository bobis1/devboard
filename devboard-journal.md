# Devboard — Journal Export


title: "Devboard"
author: bobis"
description: "This is a devboard with a constructor with it."
created_at: "2024-03-20"

- Exported at: 2026-05-29T01:56:19Z
- Project ID: 2918
- Entries: 12

## Entry 1
- ID: 5198
- Author: bobis
- Created At: 2026-05-03T00:54:09Z

### Content

Today I worked on the schematic of the devboard. I got to the point where I have to start adding pin headers. ![Screenshot 2026-05-02 at 7.35.12 PM.png](JournalPictures/Jorunal1.png) There is not much to say. I am mostly just setting things up until I can come up with an idea of what exactly I want this to be. There are three ideas that I am interested in: a devboard that has onboard sensors like temperature sensors, moisture sensors, etc., and solar panels and a battery. If I do this, I would have to create a case for this since it would be intended for outdoor use. Another way that this could go is I could make a slightly gaming-oriented dev board where you can easily create games using software that I would create as part of this project. With this idea, you would create breadboards/PCBs with different types of input to control the games. The last idea that I had was an education-centered dev board that comes with some software that would allow you to create programs very easily, so that younger children can get an introduction to STEM. I am leaning towards the first two ideas.



### Recording Links

- https://public.lapse-hackclub.link/timelapses/DGkcKer8LFst/timelapse-DGkcKer8LFst.mp4

## Entry 2
- ID: 5377
- Author: bobis
- Created At: 2026-05-04T03:54:27Z

### Content

Today I worked on continuing the tutorial. I felt really tired and really not aware today, so progress was slower than I would have liked. I decided to go the route of gaming and education. I plan on making a tool so that people can get into STEM. I decided to add a general input button along with an OLED display(SSD1306). I overall think that I made ok progress. I also laid out the general placement of the components for the PCB.
![Screenshot 2026-05-03 at 10.50.35 PM.png](JournalPictures/Journal2.png)
I think that having the OLED screen on the outer reaches away from the pins is a bad design choice. I will probably make the devboard wider, not longer, to accommodate this. Honestly, I am not even sure if this can qualify as a devboard, considering it is becoming more like Sprig.


### Recording Links

- https://public.lapse-hackclub.link/timelapses/7_ZJfe8KnYUe/timelapse-7_ZJfe8KnYUe.mp4

## Entry 3
- ID: 5525
- Author: bobis
- Created At: 2026-05-05T01:48:37Z

### Content

Today, I worked mostly on getting some of the routing done. I followed the advice outlined in the custom devboard guide by doing the flash memory first instead of doing anything else. I took a lot of time to make sure that I could do everything in that area without using vias.
![Screenshot 2026-05-04 at 8.39.04 PM.png](JournalPictures/Journal3.png) I did have issues with this, and I had to restart on this a couple of times. I also decided to try to work on trying to route the USB port. About halfway through doing this, I realized that I had used the wrong footprint. I changed it, but I had to kind of restart. Routing this was not as bad as routing the flash memory, though. 


### Random Rant
Aside from this, I am still not sure if the direction that I am going with the devboard is necessarily good. The screen is nice, but it feels too large, and the fact that it will take up a GPIO pin that cannot be used by whoever will end up using the devboard is kinda upsetting, but also it is something that makes sense. I will have to go on and see whether this is actually worth it or not.

### Recording Links

- https://public.lapse-hackclub.link/timelapses/LOK1z_V-Vksl/timelapse-LOK1z_V-Vksl.mp4
- https://public.lapse-hackclub.link/timelapses/FhLKLNGlcSYP/timelapse-FhLKLNGlcSYP.mp4

## Entry 4
- ID: 5670
- Author: bobis
- Created At: 2026-05-06T03:03:35Z

### Content

Today was another day of routing things. I feel like today was less productive than normal, though. I spend a lot of time trying to figure out "tune length of single track".  I also spend a fair bit of time trying to get the component placement right. I ended up having to move the decoupling capacitors slightly above the RP2040 footprint to avoid having the route around them when it came time to route the pinheaders. Overall, my main struggles today were trying to route around the flash memory module. I ended up having to use lots and lots of vias, which I am not super proud of. I really do not feel like restarting the process though. Tomorrow I need to wrap up some of the routing and make sure that I do not have any 90-degree traces or anything. 
![Screenshot 2026-05-05 at 10.00.54 PM.png](JournalPictures/Journal4.png)
As a bit of a side note, here is my progress. As you can see, the traces on the left have lots of very messy vias scattered around. I also got stuck researching a bit about whether vias could be used when routing the crystal oscillator. I found out that I could but I decided against it.

### Recording Links

- https://public.lapse-hackclub.link/timelapses/aq-a-650iFIS/timelapse-aq-a-650iFIS.mp4

## Entry 5
- ID: 5837
- Author: bobis
- Created At: 2026-05-07T03:36:28Z

### Content

Today was a fairly productive day. Pretty much just routed more of the PCB today. I first finished up all the GPIO pin routing. I struggled a lot with this since the flash memory module blocked off a lot of the RP2040. I had to use very many vias for this.
![Screenshot 2026-05-06 at 10.28.24 PM.png](JournalPictures/Jorunal51.png)
Here is a screenshot of the general area that was affected by this. The next thing that I did was add GND fill to the board. This did not cover all of the GND connections, so I will need to work on making sure that all the GNDs are connected. The next thing that I did was try to connect the 1V1 to the decoupling capacitors. 
![Screenshot 2026-05-06 at 10.21.14 PM.png](JournalPictures/Journal52.png)
It is probably hard to tell from the picture, but the trace connecting the 1v1s with the decoupling capacitors is very very very very very very very very very long. I don't really know how much this will affect the pcb nor how much it will be effected but I will work to make the length shorter

**Todo**
- FInish routing the GNDs
- Shorten the 1v1 trace
- Finish the 3v3 trace from the decoupling capacitors.


### Recording Links

- https://public.lapse-hackclub.link/timelapses/nqFdDxovM8Hh/timelapse-nqFdDxovM8Hh.mp4

## Entry 6
- ID: 6878
- Author: bobis
- Created At: 2026-05-13T04:32:50Z

### Content

Today I did more routing. Like with barrel roll, there isn't much to talk about. However, for the time I was trying to work, I felt like I worked a lot more. I had some struggles trying to make sure that nothing was really terribly routed or had really difficult trace lengths. The one thing that I am not super sure about is that I put one of the resistors for the USB port on the other side of the USB port. I am not sure if this will affect it. I do not think so, since it is not a signal-carrying wire. The next steps for me would be to wrap up the routing and work on the software platform.
![Screenshot 2026-05-12 at 11.27.56 PM.png](JournalPictures/Journal6.png)
Here is a picture of progress so far.

### Recording Links

- https://public.lapse-hackclub.link/timelapses/pCT4w-ZVqyHo/timelapse-pCT4w-ZVqyHo.mp4
- https://public.lapse-hackclub.link/timelapses/vtBHhhoqcy5y/timelapse-vtBHhhoqcy5y.mp4
- https://public.lapse-hackclub.link/timelapses/U8BlEgYKHTOK/timelapse-U8BlEgYKHTOK.mp4
- https://public.lapse-hackclub.link/timelapses/r_VSW0o6QzoZ/timelapse-r_VSW0o6QzoZ.mp4

## Entry 7
- ID: 7008
- Author: bobis
- Created At: 2026-05-14T02:15:23Z

### Content

In this devlog, I set up the basic layout and routing for the devboard. I decided to redo the routing that I had already done because the trace length on the 1v1 trace was too long for it to work properly. So it was mostly a repeat of what happened earlier, but I did the decoupling capacitors first. The difference was that I simply placed everything with respect to the capacitors.
![Screenshot 2026-05-12 at 11.27.56 PM.png](JournalPictures/Journal7.png)
This is what I have right now. The next thing that I have to do is I have to route everything else and work on the software platform for the project. In hindsight, I probably should have created a planning doc for larger projects like this.
Note to reviewers: I made the original version of this devlog on May 12. 


### Recording Links

- https://public.lapse-hackclub.link/timelapses/Pfab0-hPdquu/timelapse-Pfab0-hPdquu.mp4
- https://public.lapse-hackclub.link/timelapses/LPbBbGXVQzN0/timelapse-LPbBbGXVQzN0.mp4

## Entry 8
- ID: 7725
- Author: bobis
- Created At: 2026-05-18T02:44:42Z

### Content

Today I worked on finishing up the PCB. I almost had to restart for the second time because I thought that I had messed up the placement of the decoupling capacitors. I really didn't struggle too much with this, as it did not take up that much time.
![Screenshot 2026-05-17 at 9.39.35 PM.png](JournalPictures/Journal8.png)
This is what the almost finished PCB looks like. One thing that did trip me up during all of this is that I did not set up the DRC correctly according to the JLCPCB capabilities. Yeah, I really can't say much more. The next steps for me would be to get the silk screen art done. I want to work on the basic firmware that all the education features would work on top of.


### Recording Links

- https://public.lapse-hackclub.link/timelapses/dfIe_jsVfIqO/timelapse-dfIe_jsVfIqO.mp4

## Entry 9
- ID: 8261
- Author: bobis
- Created At: 2026-05-21T03:37:22Z

### Content

Today, I mostly worked on the art of the devboard. I also decided on a name while making the art. I decided to go with a cartoony theme with handwritten letters in Excalidraw. I also opted for some hand-drawn graphics. I really think that they don't look the greatest. The first thing that I did to try to do this was to have a draft. I basically got the layout of each part of the PCB silkscreen.
![DevboardArtDraft.svg](DevboardArt/DevboardArtDraft.svg)
This is the draft image that I got. The next thing I tried was to export all the different parts as a graphic in KiCad. One challenge that I had during this was that I had an error that said "No graphic items found in file." The problem was that I had used vert.sh to change my existing .png files to .svg files instead of exporting them separately. According to a KiCad forms thread, the issue was caused by having the .svg not in Unix (FL) format. The next thing that I did was I got everything arranged.
![Screenshot 2026-05-20 at 10.21.36 PM.png](JournalPictures/Journal9.png)
Here is what the pcb looks like right now.

### Recording Links

- https://public.lapse-hackclub.link/timelapses/pjo93tp7kQIv/timelapse-pjo93tp7kQIv.mp4

## Entry 10
- ID: 8493
- Author: bobis
- Created At: 2026-05-22T16:43:05Z

### Content

Today I worked on creating some of the firmware and the software platform. The first thing that I did was create a real quick splash screen for the OLED screen. I just used an online tool for this![Screenshot 2026-05-22 at 11.25.17 AM.png](JournalPictures/Journal102) The next thing that I tried to do was work on the software platform. I will probably make a desktop/web app using Godot. One thing that I struggled with was figuring out how exactly to communicate with the devboard over USB. Apparently, the way to do it is that you have to use C# and use System.IO.Ports to use a serial port that is named something. There was not as much struggle since this was mostly just setting up boilerplate code.

![Screenshot 2026-05-22 at 11.42.45 AM.png](JournalPictures/Journal101.png)
This is what I am trying to set up right now.

### Recording Links

- https://public.lapse-hackclub.link/timelapses/RL9jTkZymbQ6/timelapse-RL9jTkZymbQ6.mp4

## Entry 11
- ID: 9498
- Author: bobis
- Created At: 2026-05-27T00:55:18Z

### Content

Today was not the best day in terms of productivity. The main thing that I worked on was the Godot constructor part of the project. I tried to come up with some of the blocks that would be used in the constructor. I decided to use something like Scratch to create the blocks.
![Start.png](JournalPictures/Journal11.png)
Right now, this is what they look like. In addition to creating the blocks themselves. I also worked on getting the snapping logic to work. I know that it doesn't work, but I think that it should be fine enough. Another thing that I tried to do during this time was to get a sprite editor working. The main struggle with this was how I was going to integrate the sprite editor into the current project(I just stole on from my fantasy console project). THe next thing that I will do is I will work on getting the constructor bricks working.

### Recording Links

- https://public.lapse-hackclub.link/timelapses/THLCydzMLRA7/timelapse-THLCydzMLRA7.mp4

## Entry 12
- ID: 9809
- Author: bobis
- Created At: 2026-05-28T03:02:47Z

### Content

Today, I worked on trying to get the UI set up for the devboard. The main thing that I worked on was trying to get the Hboxes to work. The main struggle today was trying to find the correct settings to make the textured rects that represented the constructors actually resize properly. I don't have a lot of time to finish this devlog, and honestly, I might just export this to Horizons. 
![Screenshot 2026-05-27 at 8.52.39 PM.png](JournalPictures/Journal123.png)
This is what the first iteration looked like. In this one I simply forgot to make the workspace a part of a vbox. The second iteration is here
![Screenshot 2026-05-27 at 8.54.11 PM.png](JournalPictures/Journal122.png) Here is pretty much where I fixed it. This is what it looks like now.
![Screenshot 2026-05-27 at 9.49.08 PM.png](JournalPictures/Journal121.png)
I think that I messed up the display for the first one somehow. I really don't know how much time this is going to take. These concepts lowk should feel easy to remember since the other Godot projects that I worked on.  The next things that I need to do are I need to: ~~Fix the first constructor's display(something to do with the text box)~~. Fix the drag detection (should be pretty simple, tbh). In addition, I need to work on the snapping logic. The thing with it is that I just got the logic off of my tower plinko prototype thing. The main concern is that I don't think that everything translated properly.(Yea it doesn't work) I think that there is an issue with the way I reimplemented the code from towerplinko.


