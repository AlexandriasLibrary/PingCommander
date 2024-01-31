# Define the first two octets of your IP Address, in this example they represent different subnets on an internal network.
$TopLevelSubnets = @{
    "1" = "192.168"
    "2" = "10.10"
}

# Third octet is handled by the "Location" prompt illustrated below with $Location

# Define the fourth octet of your IP Address. Each group correlates to a group of 
$Devices = @{
    "1" = @( # Network Equipment
        "1", "2", "3", "4"
    )
    "2" = @( # Registers
        "101", "102", "103", "104"
    )
    "3" = @( # PIN Pads
        "111", "112", "113", "114"
    )
    "4" = @( # Store Server
        "100"
    )
    "5" = @( # Administrative PCs
        "50", "52"
    )
    "6" = @( # Administrative Printers
        "40", "42"
    )
    "7" = @( # NVR (Cameras) and Media Player (Music)
        "45", "48"
    )
    "8" =@( # Pings all devices
    "1", "2", "3", "4", "101", "102", "103", "104", "111", "112", "113", "114", "100", "50", "52", "40", "42", "45", "48"
    )
}

# Prompt to define first and second octets
$Subnet = Read-Host -Prompt "Press 1 for 192.168 or 2 for 10.10: "

# Prompt to define third octet
$Location = Read-Host -Prompt "Input location number: "

# Formula to generate IP Address
$Subnet = "$($TopLevelSubnets[$Subnet]).$Location."

# Prompt to declare which devices will be pinged
$DeviceGroups = Read-Host -Prompt "Enter device groups separated by spaces (1-8): 
1. Network Equipment
2. Registers
3. PIN Pads
4. Store Server
5. Administrative PCs
6. Administrative Printers
7. NVR (Cameras) and Media Player (Music)
8. All Devices
"

# Split the entered device groups into an array
$SelectedGroups = $DeviceGroups -split ' '

# Opens a command window for each device and pings it
foreach ($group in $SelectedGroups) {
    foreach ($device in $Devices[$group]) {
        $IPAddress = $Subnet + $device
        Write-Host "Testing $IPAddress"
        Start-Process "cmd" -ArgumentList "/c ping $IPAddress -t"
    }
}
