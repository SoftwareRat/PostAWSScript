@echo off
	title Optimize for VPS/Cloud

		net stop WerSvc
			sc config WerSvc start= disabled

		net stop SysMain 
			sc config SysMain start= demand

		net stop WSearch
			sc config WSearch start= disabled
	
		net stop spooler
			sc config spooler start= disabled

			sc config MpsSvc start= disabled
		net stop MpsSvc & net stop WinDefend
			sc config WinDefend start= disabled

		net stop wuauserv
			sc config wuauserv start= disabled

		net stop bits
			sc config bits start= disabled

		net stop SensorService
			sc config SensorService start= demand

			sc config DoSvc start= disabled
		net stop DoSvc

		net stop StorSvc
			sc config StorSvc start= demand

		net stop DiagTrack
			sc config DiagTrack start= disabled

		net stop PcaSvc
			sc config PcaSvc start= demand

		net stop wcncsvc
			sc config wcncsvc start= demand

		net stop TabletInputService
			sc config TabletInputService start= disabled

		net stop lfsvc
			sc config lfsvc start= demand

		net stop MapsBroker
			sc config MapsBroker start= demand

		net stop WerSvc
			sc config WerSvc start= disabled

		net stop SysMain 
			sc config SysMain start= demand

		net stop WSearch
			sc config WSearch start= disabled
  
		net stop LanmanServer
			sc config LanmanServer start= demand

		net stop spooler
			sc config spooler start= disabled

				reg add "HKLM\SYSTEM\CurrentControlSet\Services\Sense" /v "Start" /t REG_DWORD /d "4" /f
				reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc" /v "Start" /t REG_DWORD /d "4" /f
				reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "4" /f
				reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
				reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "4" /f
				reg add "HKLM\SYSTEM\CurrentControlSet\Services\wscsvc" /v "Start" /t REG_DWORD /d "4" /f


		net stop wuauserv
			sc config wuauserv start= disabled

		net stop bits
			sc config bits start= disabled

		net stop dmwappushservice
			sc config dmwappushservice start= disabled

				reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
		net stop UsoSvc

	timeout 5 /nobreak
exit 
