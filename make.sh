# create folder
mkdir {classes,lib}

# clean up
rm -fr classes/*
rm -f lib/*

# build vn.aavn.supporting
javac -d classes $(find src/vn.aavn.supporting -name '*.java')
jar --create --file lib/supporting.jar -C classes .
rm -fr classes/*

# build vn.aavn.greeting
javac -cp lib/supporting.jar -d classes $(find src/vn.aavn.greeting -name '*.java')
jar --create --file lib/greeting.jar --main-class vn.aavn.greeting.Main -C classes .
rm -fr classes/*

# try with classpath
java -cp lib/greeting.jar vn.aavn.greeting.Main
java -cp lib/greeting.jar:lib/supporting.jar vn.aavn.greeting.Main Innovation

# try without fulfill classpath
java -cp lib/greeting.jar vn.aavn.greeting.Main Hung
