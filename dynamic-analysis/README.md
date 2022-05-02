# Dynamic Analysis

## Setup for dynamic analysis

### Requirements:

static:

- `android-studio` Android emulator. Use package manager to install. Follow the steps to create a virtual device.
- `android-tools` and `android-sdk-platform-tools` for use of `adb`. Use package manager to install.
- `sqlitebrowser` SQLite GUI
- `mitmproxy` Decrypt SSL traffic

dynamic:

- The APK of the application.

### Install app on the emulator

1. Start the emulator in Android Studio
2. Run `adb devices` to verify the emulator is connected properly.
3. Run `adb install /path/to/apk.apk` to push APK to emulator.

### Analyse APK

1. (Optional) Run `adb logcat -c` to clear log first.
2. Run `adb logcat` to follow emulator logs.

### Interacting with emulator

Use `adb shell input text [STRING]` to paste into emulator.
Use `adb shell settings put global http_proxy 10.0.2.2:8080` to route traffic through your pc.
Use `adb shell settings put global http_proxy :0` to undo proxy settings.

Use `emulator -list-avds` to list available emulators
Use `emulator -avd [EMULATOR_NAME] -writable-system -show-kernel` to start emulator with writable system, API <= 28 (https://docs.mitmproxy.org/stable/howto-install-system-trusted-ca-android/)