package com.google.firebase.crashlytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/FirebaseCrashlytics.class */
public class FirebaseCrashlytics {
    private static final int APP_EXCEPTION_CALLBACK_TIMEOUT_MS = 500;
    private static final String FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN = "clx";
    private static final String LEGACY_CRASH_ANALYTICS_ORIGIN = "crash";
    private final CrashlyticsCore core;

    private FirebaseCrashlytics(@NonNull CrashlyticsCore crashlyticsCore) {
        this.core = crashlyticsCore;
    }

    @NonNull
    public static FirebaseCrashlytics getInstance() {
        FirebaseCrashlytics firebaseCrashlytics = (FirebaseCrashlytics) FirebaseApp.getInstance().get(FirebaseCrashlytics.class);
        if (firebaseCrashlytics != null) {
            return firebaseCrashlytics;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [com.google.firebase.crashlytics.CrashlyticsAnalyticsListener] */
    /* JADX WARN: Type inference failed for: r12v4, types: [com.google.firebase.crashlytics.internal.analytics.CrashlyticsOriginAnalyticsEventLogger] */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.google.firebase.crashlytics.internal.analytics.AnalyticsEventReceiver, com.google.firebase.crashlytics.internal.analytics.BlockingAnalyticsEventLogger] */
    /* JADX WARN: Unknown variable types count: 3 */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.firebase.crashlytics.FirebaseCrashlytics init(@androidx.annotation.NonNull com.google.firebase.FirebaseApp r10, @androidx.annotation.NonNull com.google.firebase.installations.FirebaseInstallationsApi r11, @androidx.annotation.Nullable com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent r12, @androidx.annotation.Nullable com.google.firebase.analytics.connector.AnalyticsConnector r13) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.FirebaseCrashlytics.init(com.google.firebase.FirebaseApp, com.google.firebase.installations.FirebaseInstallationsApi, com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent, com.google.firebase.analytics.connector.AnalyticsConnector):com.google.firebase.crashlytics.FirebaseCrashlytics");
    }

    private static AnalyticsConnector.AnalyticsConnectorHandle subscribeToAnalyticsEvents(@NonNull AnalyticsConnector analyticsConnector, @NonNull CrashlyticsAnalyticsListener crashlyticsAnalyticsListener) {
        AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener = analyticsConnector.registerAnalyticsConnectorListener(FIREBASE_CRASHLYTICS_ANALYTICS_ORIGIN, crashlyticsAnalyticsListener);
        AnalyticsConnector.AnalyticsConnectorHandle analyticsConnectorHandle = registerAnalyticsConnectorListener;
        if (registerAnalyticsConnectorListener == null) {
            Logger.getLogger().m8450d("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            AnalyticsConnector.AnalyticsConnectorHandle registerAnalyticsConnectorListener2 = analyticsConnector.registerAnalyticsConnectorListener(LEGACY_CRASH_ANALYTICS_ORIGIN, crashlyticsAnalyticsListener);
            analyticsConnectorHandle = registerAnalyticsConnectorListener2;
            if (registerAnalyticsConnectorListener2 != null) {
                Logger.getLogger().m8442w("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
                analyticsConnectorHandle = registerAnalyticsConnectorListener2;
            }
        }
        return analyticsConnectorHandle;
    }

    @NonNull
    public Task<Boolean> checkForUnsentReports() {
        return this.core.checkForUnsentReports();
    }

    public void deleteUnsentReports() {
        this.core.deleteUnsentReports();
    }

    public boolean didCrashOnPreviousExecution() {
        return this.core.didCrashOnPreviousExecution();
    }

    public void log(@NonNull String str) {
        this.core.log(str);
    }

    public void recordException(@NonNull Throwable th) {
        if (th == null) {
            Logger.getLogger().m8442w("Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.core.logException(th);
        }
    }

    public void sendUnsentReports() {
        this.core.sendUnsentReports();
    }

    public void setCrashlyticsCollectionEnabled(@Nullable Boolean bool) {
        this.core.setCrashlyticsCollectionEnabled(bool);
    }

    public void setCrashlyticsCollectionEnabled(boolean z) {
        this.core.setCrashlyticsCollectionEnabled(Boolean.valueOf(z));
    }

    public void setCustomKey(@NonNull String str, double d) {
        this.core.setCustomKey(str, Double.toString(d));
    }

    public void setCustomKey(@NonNull String str, float f) {
        this.core.setCustomKey(str, Float.toString(f));
    }

    public void setCustomKey(@NonNull String str, int i) {
        this.core.setCustomKey(str, Integer.toString(i));
    }

    public void setCustomKey(@NonNull String str, long j) {
        this.core.setCustomKey(str, Long.toString(j));
    }

    public void setCustomKey(@NonNull String str, @NonNull String str2) {
        this.core.setCustomKey(str, str2);
    }

    public void setCustomKey(@NonNull String str, boolean z) {
        this.core.setCustomKey(str, Boolean.toString(z));
    }

    public void setUserId(@NonNull String str) {
        this.core.setUserId(str);
    }
}
