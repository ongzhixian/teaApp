# MacOS

Some things specific to development under MacOS.

## Running app

flutter pub get 

flutter devices

flutter run

The Google Play Services SDK. You can get this from the Android SDK Manager in Android Studio.

## Running Android emulator

cd ~/Android/Sdk/tools && ./emulator -list-avds

cd ~/Android/Sdk/tools/bin && ./avdmanager list avd

* List all AVDs

avdmanager list

* Create AVDs

avdmanager create avd -n android25 -k "system-images;android-25;google_apis;x86"

* Run AVD (not tested   )

./emulator -avd android25

Reference:
https://developer.android.com/studio/command-line/avdmanager.html

## Running iPhone emulator

open -a Simulator