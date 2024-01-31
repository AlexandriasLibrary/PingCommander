# PingCommander
<p>A functional powershell script template to ping various devices throughout a network.<br>

It works by offering a selection of octets and prompts to ping a specified group of devices within cmd windows.<br>

This tool is a publicly available iteration of a tool I created for a major retail chain for tier 1 network support.</p>

## Intentions
This script can be fully customized to fit the needs of home networks, retail locations, offices, internal networks, remote servers, etc.

Simply follow the notes and alter any octets as-needed to customize it to your needs.

If you need a quick way to map your network I would suggest using [Angry IP Scanner](https://angryip.org/) which is a free and open-source network scanner. Simply input a range you would like to scan and elect what information you would like it to gather and it will run a scan delivering information such as IP, Latency, MAC, etc.

### Executable Option
If you would like to save time and make launching it simpler for users, you can turn it into an executable program. I reccomend using [PS2EXE](https://github.com/MScholtes/PS2EXE) personally. 

If you want to take it one step further, you can make a **.ico** image with [GIMP](https://www.gimp.org/) or something similar to make a recognizable icon for the program. I suggest using your company logo or something representative of network equipment for easy recognition by staff.

Due to the custom nature of this project as well as security purposes I do not and will never distribute an .exe version of this program. Only use an .exe version of this program if it is generated and approved by yourself and/or your appropriate colleagues.

**This script is free and not intended to be sold, purchased or redistributed for money in any iteration. You may use it for professional use within those restrictions.**

![Prompts](https://github.com/AlexandriasLibrary/PingCommander/blob/main/Images/Prompts.png)

# Troubleshooting tips:
<p>Make sure you are launching it by right clicking the script and selecting "Run with Powershell" </p>
  
![Run with Powershell](https://github.com/AlexandriasLibrary/PingCommander/blob/main/Images/Run%20with%20Powershell.png)

<p>If you are still having issues running this script you may need to verify that you are able to run unsigned Powershell scripts.<br>
Please verify by following these steps illustrated below.<br>
Search and select "Allow local Powershell scripts to be run without being signed"</p>

![Search Powershell](https://github.com/AlexandriasLibrary/PingCommander/blob/main/Images/Search%20Powershell.png)

<p>Toggle on "Change execution policy to allow local PowerShell scripts to run without signing. Require signing for remote scripts."</p>

![Toggle](https://github.com/AlexandriasLibrary/PingCommander/blob/main/Images/Toggle%20Powershell%20Execution%20On.png)
