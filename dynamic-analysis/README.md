# Dynamic Analysis

## Setup for dynamic analysis

### Requirements:

static:

- `android-studio` Android emulator. Use package manager to install. Follow the steps to create a virtual device.
- `android-tools` and `android-sdk-platform-tools` for use of `adb`. Use package manager to install.

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