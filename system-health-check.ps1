# Checks CPU, memory, disk, and uptime for Windows systems.
Get-CimInstance Win32_Processor | Select-Object Name, LoadPercentage
Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Free, Used, @{Name="Total";Expression={$_.Free + $_.Used}}
Get-CimInstance Win32_OperatingSystem | Select-Object LastBootUpTime
