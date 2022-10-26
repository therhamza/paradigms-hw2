@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  rpc startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and RPC_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\rpc.jar;%APP_HOME%\lib\guava-28.0-jre.jar;%APP_HOME%\lib\jaxws-api-2.3.1.jar;%APP_HOME%\lib\javax.jws-api-1.1.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-2.8.1.jar;%APP_HOME%\lib\error_prone_annotations-2.3.2.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.17.jar;%APP_HOME%\lib\jaxb-api-2.3.1.jar;%APP_HOME%\lib\javax.xml.soap-api-1.4.0.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\jaxws-tools-2.3.3.jar;%APP_HOME%\lib\jaxws-eclipselink-plugin-2.3.3.jar;%APP_HOME%\lib\sdo-eclipselink-plugin-2.3.3.jar;%APP_HOME%\lib\jaxws-rt-2.3.3.jar;%APP_HOME%\lib\release-documentation-2.3.3-docbook.zip;%APP_HOME%\lib\samples-2.3.3.zip;%APP_HOME%\lib\jakarta.xml.ws-api-2.3.3.jar;%APP_HOME%\lib\jaxb-jxc-2.3.3.jar;%APP_HOME%\lib\jaxb-xjc-2.3.3.jar;%APP_HOME%\lib\jaxb-impl-2.3.3.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\saaj-impl-1.5.2.jar;%APP_HOME%\lib\jakarta.xml.soap-api-1.4.2.jar;%APP_HOME%\lib\jakarta.jws-api-2.1.0.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\policy-2.7.10.jar;%APP_HOME%\lib\ha-api-3.1.12.jar;%APP_HOME%\lib\management-api-3.2.2.jar;%APP_HOME%\lib\gmbal-4.0.1.jar;%APP_HOME%\lib\pfl-tf-4.1.0.jar;%APP_HOME%\lib\pfl-basic-4.1.0.jar;%APP_HOME%\lib\streambuffer-1.5.9.jar;%APP_HOME%\lib\stax-ex-1.8.3.jar;%APP_HOME%\lib\mimepull-1.9.13.jar;%APP_HOME%\lib\FastInfoset-1.2.18.jar;%APP_HOME%\lib\jakarta.mail-1.6.5.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar;%APP_HOME%\lib\woodstox-core-5.1.0.jar;%APP_HOME%\lib\stax2-api-4.1.jar;%APP_HOME%\lib\jakarta.persistence-api-2.2.3.jar;%APP_HOME%\lib\org.eclipse.persistence.sdo-2.7.6.jar;%APP_HOME%\lib\org.eclipse.persistence.moxy-2.7.6.jar;%APP_HOME%\lib\commonj.sdo-2.1.1.jar;%APP_HOME%\lib\jakarta.activation-api-1.2.2.jar;%APP_HOME%\lib\org.eclipse.persistence.core-2.7.6.jar;%APP_HOME%\lib\org.eclipse.persistence.asm-2.7.6.jar


@rem Execute rpc
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %RPC_OPTS%  -classpath "%CLASSPATH%" ma.aui.sse.paradigms.integration.xs.rat.provider.Provider %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable RPC_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%RPC_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega