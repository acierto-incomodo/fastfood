[Setup]
AppName=Fast Food Simulator by StormGamesStudios
AppVersion=1.0.3
DefaultDirName={userappdata}\StormGamesStudios\NewGameDir\FastFood
DefaultGroupName=StormGamesStudios
OutputDir=C:\Users\mapsp\Documents\GitHub\fastfood\output
OutputBaseFilename=FastFood_Launcher_Installer
Compression=lzma
SolidCompression=yes
AppCopyright=Copyright © 2025 StormGamesStudios. All rights reserved.
VersionInfoCompany=StormGamesStudios
AppPublisher=StormGamesStudios
SetupIconFile=fastfood.ico
VersionInfoVersion=1.0.3.0
DisableDirPage=yes
DisableProgramGroupPage=yes

[Files]
; Archivos del lanzador
Source: "C:\Users\mapsp\Documents\GitHub\fastfood\dist\installer_updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\fastfood\fastfood.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\mapsp\Documents\GitHub\fastfood\fastfood.png"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
; Acceso directo en el escritorio
; Name: "{userdesktop}\Fast Food Simulator"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\fastfood.ico"; Comment: "Lanzador de Fast Food Simulator"; WorkingDir: "{app}"

; Acceso directo en el menú de inicio dentro de la carpeta StormGamesStudios
Name: "{commonprograms}\StormGamesStudios\Fast Food Simulator"; Filename: "{app}\installer_updater.exe"; IconFilename: "{app}\fastfood.ico"; Comment: "Lanzador de Fast Food Simulator"; WorkingDir: "{app}"
Name: "{commonprograms}\StormGamesStudios\Desinstalar Fast Food Simulator"; Filename: "{uninstallexe}"; IconFilename: "{app}\fastfood.ico"; Comment: "Desinstalar Fast Food Simulator"

[Registry]
; Guardar ruta de instalación para poder desinstalar
Root: HKCU; Subkey: "Software\Fast Food Simulator"; ValueType: string; ValueName: "Install_Dir"; ValueData: "{app}"

[UninstallDelete]
; Eliminar carpeta del appdata y acceso directo
Type: filesandordirs; Name: "{app}"

[Run]
; Ejecutar el lanzador después de la instalación
Filename: "{app}\installer_updater.exe"; Description: "Ejecutar Fast Food Simulator"; Flags: nowait postinstall skipifsilent
