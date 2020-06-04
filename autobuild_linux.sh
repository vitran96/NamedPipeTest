echo "Start"

echo "Make 'out' dir"
mkdir out

echo "Find and set all *.java files to 'files'"
ls -d src/namedpipetest/* > files
echo $files

echo "Complie *.java"
echo $options
javac @options @files

echo "Make build dir"
mkdir build

echo "Packaging to *.jar"
jar cMfv build/NamedPipeTest.jar -C out . -C libs/jna . -C resources .

echo "Change to 'libs/jna' directory"
cd libs/jna

echo "Copy libs to 'build' directory"
cp -vr ./ ../../build/

echo "Finish"

