make &&
touch ./U_SoPaNaoChatearComErrosDoRM.txt
rm U_*;

echo "Results folder name:"
read Folder
Version="-GIT"
rm -r "$Folder"
mkdir "$Folder"
cp antsibm"$Version"  "$Folder"
cp AntsIBM"$Version".cpp  "$Folder"/CPPAntsIBMUsado.cpp
cp plot-png.sh  "$Folder"
#cp plots-Mass.plt  "$Folder"
cd "$Folder"

./antsibm"$Version" &&
mkdir Plots
mkdir Resultados
sh plot-png.sh &&
#gnuplot plots-Mass.plt
#cp ../LogsLast.txt .

echo "Done!"

#osascript -e 'tell app "System Events" to display dialog "Calculo terminado." with icon 1 with title "Calculo terminado." '