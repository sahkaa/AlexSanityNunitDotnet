set CUR_DIR=%CD%

set msBuildDir=%WINDIR%\Microsoft.NET\Framework64\v4.0.30319

REM  nuget restore
call nuget restore

REM  build 
call %msBuildDir%\msbuild.exe %DF_MSBUILD_BUILD_STATS_OPTS% AlexSanityNunitDotnet.sln  /t:Build /p:Configuration=Debug

REM exit if the above does not succeed
if %errorlevel% neq 0 exit /b %errorlevel%

REM  build 
call %msBuildDir%\msbuild.exe %DF_MSBUILD_BUILD_STATS_OPTS% AlexSanityNunitDotnet.sln  /t:Build /p:Configuration=Debug


REM test run
REM   .\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe .\AlexSanityNunitDotnet\bin\Debug\AlexSanityNunitDotnet.dll
