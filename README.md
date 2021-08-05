[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<br />
<p align="center">
  <a href="https://github.com/DouweHorsthuis/Adding-Eyelink-to-experiment/">
    <img src="images/logo.jpeg" alt="Logo" width="286" height="120">
  </a> 

<h3 align="center">Adding Eyelink to a Presentation® Experiment</h3>

<h4 align="center">This is a work in progress still. This Repo contain code for Presentation® to add SR research's Eyelink Eyetracker to your experiment.</h4>


**Table of Contents**
  
1. [About the project](#about-the-project)
2. [The code](#the-code)
    - [Eyelink extention](#eyelink-extention)  
    - [Presentation code](#presentation-code)  


## About the project  
This Repo contain code for Presentation® to add SR research's Eyelink Eyetracker to your experiment. This code is checked by the support staff from SR reseach and changed according to their suggestions. The code can be added to any paradigm ran in presentation and should add eyetracking to it. 

## The code
This code is all written in presentation so that it is already in the right language and that in big parts it can be copy pasted. 

There is no working scenario file for this, because the eyetracker doesn't need us to put any code in there. However if you open the scenario file it will have a small explanation similar to the one below. 

### Eyelink extention
First you need to add the eyelink extention to your paradigm

Register PresLink with Presentation
Start Presentation with administrative privileges. If you dont do this, you will get the error "Failed to register DLL because assess was denied".
On the tool menu of the Presentation software, select "Extension Manager"
On the "Extension Manager" dialog, click on "Select Extension File".
Using the Open File dialog, select the file "PresLink.dll" - found in the install directory (Example: C:\Program Files\SR Research\EyeLink\libs). #in some of our computer this file is called "EyeTracker"
Select the DLL file "PresLink.dll" and "Register As:" "EyeTracker" then click on "Register Extension" #
Note:
"Register As:" name is case sensitive.

### Presentation code

Copy line 1-111 and paste it above your current paradigm code. 

After line 111 there is some optional code that will put an image or a drawing on the host pc in case you want to be able to see where the gaze of the participant is. This will only work if you are using the new version of the EyeLink Developers Kit. We are currently not doing this, so we can only use full screen images OR it will be located in the top center of the screen.

After line 121 you have all the code you need to set up your paradigm. Often this is where trails and types of stimuli get decided.

Copy line 128-131 and paste this in your PCL. This will trigger the eyetracker to ask you to manually start saving (by hitting the O button on the keyboard)

Line 131-152 are very paradigm depended, this part of the code allows you to send strings to your EDF file that will time lock stuff. 

The last 2 lines run the clean routine that will transfer your eyetracking code to you computer


[contributors-shield]: https://img.shields.io/github/contributors/DouweHorsthuis/Adding-Eyelink-to-experiment.svg?style=for-the-badge
[contributors-url]: https://github.com/DouweHorsthuis/Adding-Eyelink-to-experiment/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/DouweHorsthuis/Adding-Eyelink-to-experiment.svg?style=for-the-badge
[forks-url]: https://github.com/DouweHorsthuis/Adding-Eyelink-to-experiment/network/members
[stars-shield]: https://img.shields.io/github/stars/DouweHorsthuis/Adding-Eyelink-to-experiment.svg?style=for-the-badge
[stars-url]: https://github.com/DouweHorsthuis/Adding-Eyelink-to-experiment/stargazers
[issues-shield]: https://img.shields.io/github/issues/DouweHorsthuis/Adding-Eyelink-to-experiment.svg?style=for-the-badge
[issues-url]: https://github.com/DouweHorsthuis/Adding-Eyelink-to-experiment/issues
[license-shield]: https://img.shields.io/github/license/DouweHorsthuis/Adding-Eyelink-to-experiment.svg?style=for-the-badge
[license-url]: https://github.com/DouweHorsthuis/Adding-Eyelink-to-experiment/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/douwe-horsthuis-725bb9188
