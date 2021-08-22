#! /bin/sh

target_dir="./latex-theme"
working_dir="./build"
windows="Windows"
macos="macOS"
linux="Linux"

if [ -d $target_dir ]; then
    rm -r $target_dir
fi;

if [ -d $working_dir ]; then
    rm -r $working_dir
fi;

mkdir $working_dir
mkdir $target_dir
mkdir $target_dir/$windows
mkdir $target_dir/$macos
mkdir $target_dir/$linux

#####################################################################

echo "\$theme: \"light\";" >> $working_dir/windows.scss
echo "\$os: \"windows\";" >> $working_dir/windows.scss
cat latex-theme.scss >> $working_dir/windows.scss

echo "\$theme: \"light\";" >> $working_dir/macos.scss
echo "\$os: \"macos\";" >> $working_dir/macos.scss
cat latex-theme.scss >> $working_dir/macos.scss

scss --sourcemap=none $working_dir/windows.scss $target_dir/$windows/latex.css  
scss --sourcemap=none $working_dir/macos.scss $target_dir/$macos/latex.css
scss --sourcemap=none $working_dir/macos.scss $target_dir/$linux/latex.css

#######################################################################

echo "\$theme: \"dark\";" >> $working_dir/windows-dark.scss
echo "\$os: \"windows\";" >> $working_dir/windows-dark.scss
cat latex-theme.scss >> $working_dir/windows-dark.scss

echo "\$theme: \"dark\";" >> $working_dir/macos-dark.scss
echo "\$os: \"macos\";" >> $working_dir/macos-dark.scss
cat latex-theme.scss >> $working_dir/macos-dark.scss

scss --sourcemap=none $working_dir/windows-dark.scss $target_dir/$windows/latex-dark.css  
scss --sourcemap=none $working_dir/macos-dark.scss $target_dir/$macos/latex-dark.css
scss --sourcemap=none $working_dir/macos-dark.scss $target_dir/$linux/latex-dark.css

########################################################################

cp ./install.sh $target_dir
cp ./install.ps1 $target_dir

rm -r $working_dir
