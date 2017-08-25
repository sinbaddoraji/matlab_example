### Call Java Class in MATLAB

Get MATLAB Java version

runArrayList.m shows how to call a built-in Java class ArrayList 

### Call user-defined Java class

Hello.java is the Java source code, which defines a Java class Hello with two public functions: getValue10 and add. 

To Run this class in MATLAB 

1. Get MATLAB JRE version 

```
version -java
```

2. Compile Java class 
```
$ javac Hello.java 
```

3. Add path to Matlab 
```
javaaddpath(pwd)
```

4. Run, see run_Hello.m 

```
>> h = Hello
>> h.getValue10
>> h.add(10,20)
```


NOTE: javac and Matlab JRE version must match!!!

There are two ways to do this:
1) Get MATLAB's JRE version, then download JDK version that matches this version
2) Get your computers JRE version, set MATLAB_VERSION variable, then start MATLAB using this jvm

```
export MATLAB_JAVA=/usr/lib/jvm/java-8-openjdk-amd64/jre
matlab &
```



