echo "#ifndef "$1"_hh" >> "$1".h
echo "#define "$1"_hh" >> "$1".h
echo 
echo "class "$1 >> "$1".h
echo "{" >> "$1".h
echo "public:" >> "$1".h
echo "$1();" >> "$1".h
echo "~$1();" >> "$1".h
echo 
echo "private:" >> "$1".h
echo "};" >> "$1".h
echo "#endif" >> "$1".h

echo "#include “./$1"".hh" >> "$1".cc
echo 
echo "$1::$1()" >> "$1".cc
echo "{}" >> "$1".cc
echo
echo "$1::~$1()" >> "$1".cc
echo "{}" >> "$1".cc
