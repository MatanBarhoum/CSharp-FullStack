# C# Full Stack Project
<b>
  My first full-stack project with C#. I learnt alot about working with ASP.NET, C#, JavaScript, JQuery, Database (SQL), JSON, POST and GET.
  <br>
  The file APIPost.ps1 will run with Task Schedule at certain hour. It will get some data using powershell cmdlets, and store them in a variable (array) in a JSON way.
<br> 
  The data will be sent with POST method using the TCP protocol, and the server side api will get the data, and send the proper query using the details from the powershell script to the database sql server.
  <br>
  Then, on the website, a user / administrator can manipulate this data as he wants. My project is focused on making computers shutdown when the time is 20:00, then - they send the data to the server side with POST method to the API.
<br>
  the formula of the saving cost is quite simple, we have kwh power using, and we know how much we pay for kwh in shekels. then, we take 24 - The time the computer been on. we get how much time the computer worked, and how much time (24h format) the computer was offline (which save costs).
  (Hours of uptime * 0.07(kwh)) * KwhCostInShekels (double of 8.37 as for this documentation) - this is what we are going to pay.
<br>
  (hours of downtime * 0.07(kwh)) * KwhCostInShekels - this is the amount of money we are saving.
  <br>
  Now, on the default.aspx page, the server-side (aka runat="server") will take the labels and populate them with data when the user click on the button.
<br>
  Usign the string.format I can do calculations and store them on there index {0}, {1} and so on.
</b>
<h1> Packages Download link </h1>

<a href="https://drive.google.com/file/d/1XEDPYIE2oysIxQEY_VHppXz16lk6aFaP/view?usp=sharing"> CLick here </a>
