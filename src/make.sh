#! /bin/sh

target_dir="./latex-theme"
working_dir="./build"

if [ ! -d $target_dir ]; then
    mkdir $target_dir
fi;

if [ -d $working_dir ]; then
    rm -r $working_dir
fi;

mkdir $working_dir

echo "\$os: \"windows\";" >> $working_dir/windows.scss
cat latex-theme.scss >> $working_dir/windows.scss

echo "\$os: \"macos\";" >> $working_dir/macos.scss
cat latex-theme.scss >> $working_dir/macos.scss

scss --sourcemap=none $working_dir/windows.scss $target_dir/latex-windows.css  
scss --sourcemap=none $working_dir/macos.scss $target_dir/latex-macos.css
scss --sourcemap=none $working_dir/macos.scss $target_dir/latex-linux.css

rm -r $working_dir
