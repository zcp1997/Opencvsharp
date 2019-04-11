; �ű��� Inno Setup �ű��� ���ɡ�
; �����ĵ���ȡ���� INNO SETUP �ű��ļ�����ϸ���ϣ�

#define MyAppName "���ֻ���ͼ�ָ��ϵͳ"
#define MyAppVersion "1.0"
#define MyAppPublisher "�Ͼ���ҽҩ��ѧ��Ϣ����ѧԺ"
#define MyAppExeName "��ͼ�ָ�.exe"

[Setup]
; ע��: AppId ��ֵ��Ψһʶ���������ı�־��
; ��Ҫ������������ʹ����ͬ�� AppId ֵ��
; (�ڱ������е���˵������� -> ���� GUID�����Բ���һ���µ� GUID)
AppId={{553E90E6-A5B3-42F7-B6B8-02F62424B6C6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\dev2\Desktop
OutputBaseFilename=setup
SetupIconFile=C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\ooopic_1553754152.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Languages\ChineseSimp.isl"
Name: "english"; MessagesFile: "compiler:Languages\English.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\��ͼ�ָ�.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\IrisSkin4.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\OpenCvSharp.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\OpenCvSharp.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\OpenCvSharp.Extensions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\OpenCvSharpExtern.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\RealOne.ssk"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\��ͼ�ָ�.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\dev2\Desktop\����\�������test\��ͼ�ָ�\��ͼ�ָ�\bin\Debug\��ͼ�ָ�.pdb"; DestDir: "{app}"; Flags: ignoreversion
; ע��: ��Ҫ���κι����ϵͳ�ļ�ʹ�� "Flags: ignoreversion"

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
