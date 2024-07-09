@echo off
setlocal enabledelayedexpansion

rem ������ ���� ��θ� �Է� ����
set "root_folder=%~1"

rem ������ �����ϴ��� Ȯ��
if not exist "%root_folder%\resources" (
    echo ������ ���� �Ǵ� resources ������ �������� �ʽ��ϴ�.
    exit /b 1
)

rem ���ҽ� ���� �� ���ϵ� �̸� �� ���� Ȯ���� �빮�ڷ� ����
powershell.exe -Command "Get-ChildItem -Path "%root_folder%\resources" -Recurse | Rename-Item -NewName {$_.FullName.ToUpper()}"

rem CSV ���� �� Mark.csv�� Palam.csv ���� �̸� �� Ȯ���� �빮�ڷ� ����
if exist "%root_folder%\CSV" (
    if exist "%root_folder%\CSV\_Replace.csv" (
        ren "%root_folder%\CSV\_Replace.csv" "_REPLACE.CSV"
    )
    if exist "%root_folder%\CSV\Abl.csv" (
        ren "%root_folder%\CSV\Abl.csv" "ABL.CSV"
    )
    if exist "%root_folder%\CSV\Base.csv" (
        ren "%root_folder%\CSV\Base.csv" "BASE.CSV"
    )
    if exist "%root_folder%\CSV\CFLAG.csv" (
        ren "%root_folder%\CSV\CFLAG.csv" "CFLAG.CSV"
    )
    if exist "%root_folder%\CSV\CSTR.csv" (
        ren "%root_folder%\CSV\CSTR.csv" "CSTR.CSV"
    )
    if exist "%root_folder%\CSV\DAY.csv" (
        ren "%root_folder%\CSV\DAY.csv" "DAY.CSV"
    )
    if exist "%root_folder%\CSV\Equip.csv" (
        ren "%root_folder%\CSV\Equip.csv" "EQUIP.CSV"
    )
    if exist "%root_folder%\CSV\ex.csv" (
        ren "%root_folder%\CSV\ex.csv" "EX.CSV"
    )
    if exist "%root_folder%\CSV\exp.csv" (
        ren "%root_folder%\CSV\exp.csv" "EXP.CSV"
    )
    if exist "%root_folder%\CSV\FLAG.csv" (
        ren "%root_folder%\CSV\FLAG.csv" "FLAG.CSV"
    )
    if exist "%root_folder%\CSV\GameBase.csv" (
        ren "%root_folder%\CSV\GameBase.csv" "GAMEBASE.CSV"
    )
    if exist "%root_folder%\CSV\Item.csv" (
        ren "%root_folder%\CSV\Item.csv" "ITEM.CSV"
    )
    if exist "%root_folder%\CSV\Juel.csv" (
        ren "%root_folder%\CSV\Juel.csv" "JUEL.CSV"
    )
    if exist "%root_folder%\CSV\Mark.csv" (
        ren "%root_folder%\CSV\Mark.csv" "MARK.CSV"
    )
    if exist "%root_folder%\CSV\Palam.csv" (
        ren "%root_folder%\CSV\Palam.csv" "PALAM.CSV"
    )
    if exist "%root_folder%\CSV\source.csv" (
        ren "%root_folder%\CSV\source.csv" "SOURCE.CSV"
    )
    if exist "%root_folder%\CSV\Stain.csv" (
        ren "%root_folder%\CSV\Stain.csv" "STAIN.CSV"
    )
    if exist "%root_folder%\CSV\Str.csv" (
        ren "%root_folder%\CSV\Str.csv" "STR.CSV"
    )
    if exist "%root_folder%\CSV\Talent.csv" (
        ren "%root_folder%\CSV\Talent.csv" "TALENT.CSV"
    )
    if exist "%root_folder%\CSV\TCVAR.csv" (
        ren "%root_folder%\CSV\TCVAR.csv" "TCVAR.CSV"
    )
    if exist "%root_folder%\CSV\Tequip.csv" (
        ren "%root_folder%\CSV\Tequip.csv" "TEQUIP.CSV"
    )
    if exist "%root_folder%\CSV\TFLAG.csv" (
        ren "%root_folder%\CSV\TFLAG.csv" "TFLAG.CSV"
    )
    if exist "%root_folder%\CSV\Train.csv" (
        ren "%root_folder%\CSV\Train.csv" "TRAIN.CSV"
    )
    if exist "%root_folder%\CSV\VariableSize.csv" (
        ren "%root_folder%\CSV\VariableSize.csv" "VariableSize.CSV"
    )
)

echo Ȯ���� ���� �Ϸ�!
endlocal
