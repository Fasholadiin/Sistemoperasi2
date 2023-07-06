@echo off

REM Inisialisasi variabel untuk login
set "username=1"
set "password=1"

REM Loop login
:login
cls
echo Masukkan username dan password:
set /p "input_username=Username: "
set /p "input_password=Password: "
if "%input_username%"=="%username%" (
    if "%input_password%"=="%password%" (
        goto menu
    )
)

echo Login gagal! Silakan coba lagi.
pause
goto login

REM Menu utama
:menu
cls
echo ==============================
echo ==============================
echo Pilih menu :
echo [1.] Internet
echo [2.] Office
echo [3.] Cerdas Cermat
echo [4.] Program Kalkulator sederhana
echo [5.] Turn off PC
echo ==============================
echo ==============================

set /p "menu_choice=Masukkan pilihan Anda: "

REM Pemilihan menu
if "%menu_choice%"=="1" (
    call :inet
) else if "%menu_choice%"=="2" (
    call :office
) else if "%menu_choice%"=="3" (
    call :ccm
) else if "%menu_choice%"=="4" (
    call :kkl
) else if "%menu_choice%"=="5" (
    call:mmati
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto menu
)

REM Sub-rutin untuk menampilkan internet
:inet
cls
goto mbrowsing
pause

REM Sub-rutin untuk menampilkan office
:office
cls
goto moffice
pause

REM Sub-rutin untuk menampilkan soal cerdas cermat
:ccm
cls
goto mccm
pause

REM Sub-rutin untuk menampilkan bentuk sederharna kalkulator
:kkl
cls
goto mkkl
pause 
rem ==================================INTERNET========================================
:mbrowsing
cls
echo pilih lah salah satu
echo ==============================
echo [1] you tube
echo [2] email
echo [3] Searching
echo [88] Kembali ke Menu
echo ==============================

set /p p1=tentukan pilihan anda...
if %p1% == 1 goto youtube
if %p1% == 2 goto email
if %p1% == 3 goto browsing
if %p1% == 88 goto menu (    
) else (
    echo Pilihan anda salah!!
    set /p io=ENTER...!!!!
    goto mbrowsing
)

goto mbrowsing

:youtube
cls
start www.youtube.com
pause
goto mbrowsing
:email
cls
start www.gmail.com
pause
goto mbrowsing
:browsing 
cls 
start www.google.com
pause 
goto mbrowsing
rem ================================batas==========================================

rem =================================office=========================================
:moffice
cls
echo pilih lah salah satu
echo ==============================
echo [1] Office Word
echo [2] Office Excel
echo [3] Power Point
echo [88] Kembali ke Menu
echo ==============================

set /p p2=tentukan pilihan anda...
if %p2% == 1 goto word
if %p2% == 2 goto excel
if %p2% == 3 goto ppt
if %p2% == 88 goto menu (    
) else (
    echo Pilihan anda salah!!
    set /p io=ENTER...!!!!
    goto moffice
)
:word
cls
"C:\Program Files\Microsoft Office 15\root\office15\WINWORD.EXE"
pause
goto moffice
:excel
cls
"C:\Program Files\Microsoft Office 15\root\office15\EXCEL.EXE"
pause
goto moffice
:ppt
cls
"C:\Program Files\Microsoft Office 15\root\office15\POWERPNT.EXE"
pause
goto moffice
rem =================================office=========================================

rem =================================CCm========================================
:mccm
cls
echo ??????????????????????????????????????????????????????
echo.
echo DI BACA TERLEBIH DAHULU DENGAN CERMAT SEBELUM MENJAWAB
echo SISWA DI HARAP MENJAWAB MENGGUNAKAN HURUF
echo A/B/C/D(HURUF KAPITAL), LALU TEKAN ENTER...!!
echo.
echo ??????????????????????????????????????????????????????
pause
goto soal1

:soal1
cls
echo 1. kapan tahun indonesia merdeka?
echo    [A] 1955    [C] 1945
echo    [B] 1845    [D] 1954
set /p h1=Jawaban anda adalah?
if %h1%==C Echo SELAMAT JAWABAN ANDA BENAR..!!! (
    pause 
    goto soal2
)
    echo MAAF JAWABAN ANDA SALAH...!!
    pause
    goto soal2
:soal2
cls
echo 2. indonesia merayakan kemerdekaan pada tanggal?
echo     [A] 18 agustus    [C] 12 juli
echo     [B] 17 september    [D] 17 agustus
set /p h2=Jawaban anda adalah?
if %h2%==D Echo SELAMAT JAWABAN ANDA BENAR..!!! (
    pause 
    goto soal3
)
    echo MAAF JAWABAN ANDA SALAH...!!
    pause
    goto soal3
:soal3
cls
echo 3. berapa hasil 87*4:2?
echo     [A] 174    [C] 887
echo     [B] 217    [D] 105
set /p h3=Jawaban anda adalah?
if %h3%==A Echo SELAMAT JAWABAN ANDA BENAR..!!! (
    pause 
    goto menu
)
    echo MAAF JAWABAN ANDA SALAH...!!
    pause
    goto menu
rem =================================CCm========================================

rem =================================kkl========================================
:mkkl
cls
echo Ini adalah bentuk sederhana dari kalkulator
set /p x=Masukkan angka pertama  : 
set /p y=Masukkan angka ke dua   : 
set /p n=Pilih salah satu jenis(+,-,*,/)(tambah,kurang,kali,bagi)
set /a xy= %x%%n%%y%
echo -------------
echo %x%%n%%y%=%xy%
echo -------------
echo -------------
echo [1] kembali menggunakan kalkulator
echo [88] kembali ke menu 
echo -------------
set /p hu= pilihan anda..?
if %hu%==1 goto mkkl
if %hu%==88 goto menu
rem =================================kkl========================================

rem =================================turn off========================================
:mmati
cls
echo Pilih menu:
echo [1]. Shutdown
echo [2]. Restart
echo [88]. Back to Menu 
echo.

set /p "hy=Masukkan pilihan Anda: "

REM Pemilihan menu
if "%hy%"=="1" (
    call :shutdown
) else if "%hy%"=="2" (
    call :restart
) else if "%hy%"=="88" (
    goto menu
) else (
    echo Pilihan tidak valid. Silakan coba lagi.
    pause
    goto mmati
)

REM Sub-rutin untuk melakukan shutdown
:shutdown
cls
echo Menjalankan perintah shutdown...
shutdown /s /t 0
goto mmati

REM Sub-rutin untuk melakukan restart
:restart
cls
echo Menjalankan perintah restart...
shutdown /r /t 0
goto mmati






