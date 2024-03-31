This is a Windows 11 version of the JDK_22 & Jextract_22 sample. \
From : https://github.com/openjdk/jextract?tab=readme-ov-file 

pre-requisites: \
1.mingw64 - For compiling C code using "gcc" command \
	check with command "gcc --version" \
2.JDK 22 - For ForeignFunction&Memory API \
	check with command "java --version" \
3.Jextract 22 - For generating java code from C header files \
	check with command "jextract --version" \
4.GNU make - For quick compile \
	check with command "make --version" 

*All Java / make /mingw64 need to add their perspective bin/*.exe file into System_Path of OperatingSystem to work properly. \
**The working directory need to be added to System_Path to work properly. Use command "make set_ENV" to do so.

ToRun: \
command "make all" \
command "make run" 
