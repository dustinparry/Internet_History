<#
Script used for Internet History Requests
Can grab Chrome history file, IE history db and Firefox history file (eventually).
Grabs files and moves them to the forensics directory on the C: drive
 
Usage
1. Make sure to enter the user's directory folder name for the request
2. Uncomment out the files you need to get
3. Use CS to get the files once they're moved.
4. Use CS to remove the forensics directory on the host computer #>
 
# enter user folder name
$username = #username
 
# user data string
$user = 'User Data'
 
# make get directory
$path = 'c:\Forensics'
mkdir $path
Get-ChildItem -path $path -Recurse -Force | foreach {$_.attributes = "Hidden"
 
 
# Get Chrome history file (most common)
cp C:\Users\$username\AppData\Local\Google\Chrome\$user\Default\history c:\Forensics\ChromeHistory
 
# Get IE history file
# Only works if the file isn't being used, may need to cd into directory and use CS to get file.
# cp C:\Users\$username\AppData\Local\Microsoft\Windows\WebCache\WebCacheV01.dat c:\Forensics\IE_History.dat
 
# Get Firefox history file
# under construction, mozilla names folder randomly
