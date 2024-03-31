JFLAGS = -g
JC = javac
JVM = java 
FILE = .java

JAVA_INCLUDE = org/jextract
MAIN = test

%.class:%.java
	$(JC) $(JFLAGS) $<

CLASSES = \
	test.java

distance.dll:point.c point.h
	 gcc -shared -o distance.dll point.c -m64

$(JAVA_INCLUDE)/point_h.java $(JAVA_INCLUDE)/Point2d.java : point.h
	jextract -l distance -t org.jextract point.h

classes: $(CLASSES:.java=.class)

all:distance.dll $(JAVA_INCLUDE)/point_h.java $(JAVA_INCLUDE)/Point2d.java classes $(MAIN).class

run: $(MAIN).class $(JAVA_INCLUDE)/point_h.java $(JAVA_INCLUDE)/Point2d.java
	$(JVM) ./$(MAIN)$(FILE)
clean:
	$(RM) *.class

set_ENV:
	PATH = ${PATH}";"$(pwd.path)