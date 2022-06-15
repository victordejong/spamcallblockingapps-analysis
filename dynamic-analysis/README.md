# Dynamic Analysis

## Setup for dynamic analysis

### Requirements:

static:

- `android-studio` Android emulator. Use package manager to install. Follow the steps to create a virtual device.
- `android-tools` and `android-sdk-platform-tools` for use of `adb`. Use package manager to install.
- `sqlitebrowser` SQLite GUI
- `mitmproxy` Decrypt SSL traffic
- `frida` Debug and hook functions
- `frida-server` Server component running on the Android emulator

dynamic:

- The APK of the application.

## Install and setup analysis environment

Interpreted from: https://docs.mitmproxy.org/stable/howto-install-system-trusted-ca-android/

1. Install Android studio, add the binaries to your path and run MITMproxy to generate the CA certificate. Create an Android emulator with API level 28 with  google APIs.
2. Android requires the certificate to be in a specific format, change directory to the MITMproxy folder and rename the certificate: `cd ~/.mitmproxy/` and `hashed_name=$(openssl x509 -inform PEM -subject_hash_old -in mitmproxy-ca-cert.cer | head -1) && cp mitmproxy-ca-cert.cer $hashed_name.0`
3. List your emulator with `emulator -list-avds` and start it with `emulator -avd [EMULATOR_NAME] -writable-system -show-kernel`
4. Restart adb as root `adb root` and remount the partitions `adb remount`. This allows write access to protected system partitions. 
5. Copy the renamed certificate to the emulators root store and properly set permissions: `adb push <path_to_certificate> /system/etc/security/cacerts` and `adb shell chmod 664 /system/etc/security/cacerts/<name_of_pushed_certificate>`
6. Reboot the device: `adb reboot`.
7. Set a global proxy to route traffic from Android to MITMproxy `adb shell settings put global http_proxy 10.0.2.2:8080`

This guide assumes default MITMproxy and Android emulator settings are used.

## Break cert pinning

Follow guide at: https://httptoolkit.tech/blog/frida-certificate-pinning/

## Test data

Known spam caller: 00447868726250

### Install app on the emulator

1. Start the emulator in Android Studio
2. Run `adb devices` to verify the emulator is connected properly.
3. Run `adb install /path/to/apk.apk` to push APK to emulator.

### Analyse APK

1. (Optional) Run `adb logcat -c` to clear log first.
2. Run `adb logcat` to follow emulator logs.

### Interacting with emulator

- Use `adb shell input text [STRING]` to paste into emulator.

MITMproxy settings:
- Use `adb shell settings put global http_proxy 10.0.2.2:8080` to route traffic through your pc.
- Use `adb shell settings put global http_proxy :0` to undo proxy settings.
- Use `emulator -list-avds` to list available emulators
- Use `emulator -avd [EMULATOR_NAME] -writable-system -show-kernel` to start emulator with writable system, API <= 28 (https://docs.mitmproxy.org/stable/howto-install-system-trusted-ca-android/)

