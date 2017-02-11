export PATH="$findutils/bin:$coreutils/bin:$jdk/bin:$jre/bin:$gcc/bin"
mkdir $out
source $makeWrapper/nix-support/setup-hook
javac $src/$className.java -d $out
mkdir -p $out/share/java
jar -cf $out/share/java/Hello.jar -C $out $className.class
export SHELL=$bash/bin/bash
makeWrapper $jre/bin/java $out/bin/Hello --add-flags "-cp $out/share/java/Hello.jar $className"
