# OBSScreenRecording
Here I take a note about how to use obs studio for automatic screen recording. It provides a method to auto-record and auto-stop.

## preparation before recording
1. turn off computer screen saver and sleep (avoid to stop recording during sleeping)
2. download and install obs studio
3. open obs studio and set the needed parameters

    1. > profile >> new >> "-name your profile-" ("PowerShellScreenRecording")

    2. > Scene collection >> new >>  "-name your scene-" ("test")

    3. > add the sources you want in your scene 
   
(here I only use 2 sources: "Display Capture" and "Audio Output Capture", and name them literally)

#### ensure that contents of parameters in ps1 script ($-name- = "-content-") is the same as the names you just set in previous steps.
#### check the pathway of obs.exe ($WD) in ps1 script.
## change Execution Policy (safety status) to run a ps1 script
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted
  #### restore the policy:
    Set-ExecutionPolicy -ExecutionPolicy restricted
## open powershell and change your location to the pathway to the folder of your ps1 script
    cd "-your pathway-"
## run the script
    powershell.exe -File "Screen Recording.ps1"
#### or execute in background process
     Start-Job -FilePath "Screen Recording.ps1" 
     
## FAQ
1. Why does the warning window appear in my next-time OBS studio opening?

   A: It is normal because the last step of ps1 script which force to turn off OBS studio. Thus, OBS studio would show the warning message to you. Meanwhile, the warning window also block the code, so you have to open and check OBS studio after execute the ps1 script. Or you can improve the code to avoid the ptoblem :) (This problem would exist unitil I know how to fix it.)


# OBS螢幕錄影
  這邊紀錄我如何使用OBS studio進行螢幕錄影。讓螢幕錄影自動開始與停止~~
  ## 事前準備
1. 關閉電腦螢幕保護程式和休眠 (避免在休眠時停止錄製)
2. 下載並安裝 obs studio
3. 打開obs studio並設定所需參數 (我用的是英文版，我不確定中文會不會讀失敗)
    1. > profile >> new >> "-name your profile-" ("PowerShellScreenRecording")

    2. > Scene collection >> new >>  "-name your scene-" ("test")

    3.	在 scene 中加入所需的 sources 
   
(我只使用2個sources："Display Capture"和"Audio Output Capture"，並按字面上命名它們)

#### 確保 ps1 腳本中的參數內容 ($-name- = "-內容-") 與剛才在前面的步驟中設定的名稱相同。
#### 檢查 ps1 腳本中obs.exe的路徑 ($WD)
## 變更執行原則（安全狀態）以執行 ps1 腳本
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted
  #### 恢復執行原則
    Set-ExecutionPolicy -ExecutionPolicy restricted
## 開啟 powershell 並將工作位置變更為 ps1 腳本資料夾的路徑
    cd "-your pathway-"
## 執行腳本
    powershell.exe -File "Screen Recording.ps1"
#### 或在後台中執行
     Start-Job -FilePath "Screen Recording.ps1" 

## 常見問題
1. 為什麼我下次打開 OBS studio 時會出現警告視窗？

   A: 這是正常的，因為 ps1 腳本的最後一步強制關閉了 OBS studio。因此，OBS studio 會顯示警告訊息。同時警告訊息也會阻止程式碼，因此執行ps1腳本後必須開啟並檢查OBS studio。或者你可以改進程式碼來避免這個問題 :) (直到我知道如何解決它之前，這個問題都會一直存在。)
