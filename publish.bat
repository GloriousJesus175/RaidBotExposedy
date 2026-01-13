@echo off
echo Publicando Exposed Society para Windows...
dotnet publish -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -p:PublishTrimmed=true -p:TrimMode=link -p:EnableCompressionInSingleFile=true -p:IncludeNativeLibrariesForSelfExtract=true -o ./publish
echo.
echo Publicacao concluida! O arquivo .exe esta em: ./publish/
dir ./publish\*.exe
pause

