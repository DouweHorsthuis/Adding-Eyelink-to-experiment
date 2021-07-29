There is no scenario file for this, because this is not an experiment. 
Instead you can find here how to use the code in the .pcl file to add eyetracking to you paradigm

First you need to add the eyelink extention to your paradigm

Register PresLink with Presentation
Start Presentation with administrative privileges. If you dont do this, you will get the error "Failed to register DLL because assess was denied".
On the tool menu of the Presentation software, select "Extension Manager"
On the "Extension Manager" dialog, click on "Select Extension File".
Using the Open File dialog, select the file "PresLink.dll" - found in the install directory (Example: C:\Program Files\SR Research\EyeLink\libs). #in some of our computer this file is called "EyeTracker"
Select the DLL file "PresLink.dll" and "Register As:" "PresLink" then click on "Register Extension"
Note:
"Register As:" name is case sensitive.



Copy line 1-108 and paste it above your current paradigm code. 

After line 108 you have all the code you need to set up your paradigm. Often this is where trails and types of stimuli get decided.

Copy line 118-121 and paste this in your PCL. This will trigger the eyetracker to ask you to manually start saving (by hitting the O button on the keyboard)

Line 123-136 are very paradigm depended, this part of the code allows you to send strings to your EDF file that will time lock stuff. 