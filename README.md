mkdir All\A1\B1
mkdir All\A1\B2
mkdir All\A1\B3
mkdir All\A2
mkdir All\A3
mkdir All\A1\B1\C1
mkdir All\A1\B1\C2

cd All
echo. > 1.txt
echo. > 2.txt
echo. > 3.txt
echo. > lab1.pas
echo. > lab2.pas
echo. > face.bmp
echo. > foot.bmp
echo. > arm.bmp
echo. > beatles.mp3
echo. > rock.mp3
cd ..

rmdir /s /q All\A1\B3
mkdir All\A1\B4
mkdir All\A1\B5
rmdir /s /q All\A1\B2

copy All\lab1.pas All\A2\lab3.pas

type All\*.txt

mkdir All\A1\B1\C2
copy All\*.bmp All\A1\B1\C2\
copy All\*.txt All\A1\B1\C2\

type All\A1\B1\C2\*.txt > All\A1\B1\C2\man.txt
copy All\A1\B1\C2\man.txt All\A1\

tree All /F
