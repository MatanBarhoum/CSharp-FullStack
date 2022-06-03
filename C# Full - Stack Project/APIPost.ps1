## --- Created by Matan Barhoum --- ##
$Date = Get-Date
$Body = @{ComputerName="UserNameTest123";Month=$Date.Month.ToString();Year=$Date.Year.ToString();TotalHours=12345}
Invoke-WebRequest -Uri https://url:port/api/EmpStartup -Method POST -Body $Body
Invoke-WebRequest -Uri https://url:port/api/Emp -Method POST -Body $Body
## --- Created by Matan Barhoum --- ##