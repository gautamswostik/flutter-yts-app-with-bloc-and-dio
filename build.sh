#!/bin/bash
echo "======= BUILDING RELEASE BUILD APK ======="
echo "======= CLEANING BUILD ======="
echo "=============================="
flutter clean

echo "======= GETTING PACKAGES ======="
echo "================================"

flutter pub get

echo "======= GENERATING FILES USING BUILD RUNNER ======="
echo "==================================================="

flutter pub run build_runner build --delete-conflicting-outputs

if [ "$1" == "--stage" ]
then
 echo "======= BUILDING STAGE RELEASE APK ======="
 echo "=========================================="
   flutter build apk --flavor staging -t lib/main_staging.dart

else if[ "$1" == "--dev"]
then
   echo "======= BUILDING DEV RELEASE APK ======="
   echo "========================================"
   flutter build apk --flavor development -t lib/main_development.dart
else
   echo "======= BUILDING PRODUCTION RELEASE APK ======="
   echo "==============================================="
   flutter build apk --flavor production -t lib/main_production.dart
fi

 echo "======= INSTALLING INTO CONNECTED DEVICES======="
 echo "================================================"

flutter install -d all 

# command : sh build.sh [fileName.sh]