package com.crashlytics.android.core;

import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p012g.C0129t;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler.class */
class CrashlyticsUncaughtExceptionHandler implements Thread.UncaughtExceptionHandler {
    private final CrashListener crashListener;
    private final Thread.UncaughtExceptionHandler defaultHandler;
    private final boolean firebaseCrashlyticsClientFlag;
    private final AtomicBoolean isHandlingException = new AtomicBoolean(false);
    private final SettingsDataProvider settingsDataProvider;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$CrashListener.class */
    interface CrashListener {
        void onUncaughtException(SettingsDataProvider settingsDataProvider, Thread thread, Throwable th, boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsUncaughtExceptionHandler$SettingsDataProvider.class */
    interface SettingsDataProvider {
        C0129t getSettingsData();
    }

    public CrashlyticsUncaughtExceptionHandler(CrashListener crashListener, SettingsDataProvider settingsDataProvider, boolean z, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.crashListener = crashListener;
        this.settingsDataProvider = settingsDataProvider;
        this.firebaseCrashlyticsClientFlag = z;
        this.defaultHandler = uncaughtExceptionHandler;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isHandlingException() {
        return this.isHandlingException.get();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0040 -> B:4:0x001b). Please submit an issue!!! */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        this.isHandlingException.set(true);
        try {
            try {
                this.crashListener.onUncaughtException(this.settingsDataProvider, thread, th, this.firebaseCrashlyticsClientFlag);
            } catch (Exception e) {
                C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "An error occurred in the uncaught exception handler", e);
            }
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, th);
            this.isHandlingException.set(false);
        } catch (Throwable th2) {
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Crashlytics completed exception processing. Invoking default exception handler.");
            this.defaultHandler.uncaughtException(thread, th);
            this.isHandlingException.set(false);
            throw th2;
        }
    }
}
