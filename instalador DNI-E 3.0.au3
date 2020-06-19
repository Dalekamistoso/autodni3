#NoTrayIcon
#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; Instalador de requisitos DNI Electronico 3.0 para Windows por DrWh0

; Aqui fuerzo los permisos administrativos

  #RequireAdmin

; Aquí quito el icono del systray para pausar el script

  #NoTrayIcon

; Bucle para verificar si estamos en un Windows x64 o x86

If @OSArch ="X64" Then

	RunWait('dnie_x64.exe /la /s /v/qn')
	RunWait('fnmt_x64.exe /S /v/qn')


ElseIf @OSArch ="X86" Then

	RunWait('dnie_x64.exe /la /s /v/qn')
	RunWait('fnmt_x86.exe /S /v/qn')

	EndIf

; Aqui salgo del programa

Exit