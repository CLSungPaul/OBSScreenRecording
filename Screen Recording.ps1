# parameter setting
  # set the pathway of obs.exe
    $WD = "C:\Program Files\obs-studio\bin\64bit\"

  # set waiting time in which the recording start (sec)
    $waitingTime = "5"

  # Define paths
    $obsPath = "obs64.exe"
    $profileName = "PowerShellScreenRecording"
    $sceneName = "test"
    $displayCapture = "Display Capture"
    $audioOutputCapture = "Audio Output Capture"

  # duration of recording (sec)
    $recordingTime = "25"

#set working directory
cd $WD

#Wait
Start-Sleep -Seconds $waitingTime
Write-Host "start recording!
You need around 10 sec to launch OBS studio snd start recording."; Start-Sleep -Seconds 2

# Start OBS Studio with recording
Start-Process -FilePath $obsPath -ArgumentList "--startrecording --profile $profileName --scene $sceneName --sources $displayCapture $audioOutputCapture" -WindowStyle Minimized

#Wait and record
Start-Sleep -Seconds $recordingTime
Write-Host "stop recording!"

# recording
Stop-Process -Name "obs64"
