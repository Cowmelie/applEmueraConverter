@echo off
setlocal enabledelayedexpansion

rem ������ ���� ��θ� �Է� ����
set "root_folder=%~1"

rem CSV ���� �� ���� �̸� �� Ȯ���� �빮�ڷ� ����
if exist "%root_folder%\CSV" (
    powershell.exe -Command "Get-ChildItem -Path "%root_folder%\CSV" -Filter *.csv | Rename-Item -NewName {$_.FullName.ToUpper()}"
    if exist "%root_folder%\CSV\_RENAME.CSV" (
        ren "%root_folder%\CSV\_RENAME.CSV" "_Rename.csv"
    )
    if exist "%root_folder%\CSV\VARIABLESIZE.CSV" (
        ren "%root_folder%\CSV\VARIABLESIZE.CSV" "VariableSize.CSV"
    )
) else (
    echo CSV ������ �������� �ʽ��ϴ�. ���� ������ �ٽ� Ȯ�����ֽʽÿ�.
)

rem ������ �����ϴ��� Ȯ��
if not exist "%root_folder%\resources" (
    echo resources ������ �������� �ʴ� �����Դϴ�.
) else (
    rem ���ҽ� ���� �� ���ϵ� �̸� �� ���� Ȯ���� �빮�ڷ� ����
    powershell.exe -Command "Get-ChildItem -Path "%root_folder%\resources" -Recurse | Rename-Item -NewName {$_.FullName.ToUpper()}"
)

echo Ȯ���� ���� �Ϸ�!
endlocal