package com.crashlytics.android.core;

import android.content.Context;
import android.util.Log;
import com.crashlytics.android.answers.AppMeasurementEventLogger;
import com.crashlytics.android.answers.EventLogger;
import java.net.URL;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.net.ssl.HttpsURLConnection;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.AbstractC0150o;
import p000a.p001a.p002a.p003a.C0137d;
import p000a.p001a.p002a.p003a.p004a.p006b.C0024h;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
import p000a.p001a.p002a.p003a.p004a.p006b.C0033n;
import p000a.p001a.p002a.p003a.p004a.p006b.C0036q;
import p000a.p001a.p002a.p003a.p004a.p006b.C0042w;
import p000a.p001a.p002a.p003a.p004a.p006b.C0043x;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0065i;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0076r;
import p000a.p001a.p002a.p003a.p004a.p007c.AbstractCallableC0070m;
import p000a.p001a.p002a.p003a.p004a.p007c.C0077s;
import p000a.p001a.p002a.p003a.p004a.p007c.EnumC0066j;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0090b;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
import p000a.p001a.p002a.p003a.p004a.p011f.C0106b;
import p000a.p001a.p002a.p003a.p004a.p011f.C0108d;
import p000a.p001a.p002a.p003a.p004a.p012g.C0125q;
import p000a.p001a.p002a.p003a.p004a.p012g.C0129t;
@AbstractC0065i(m10262a = {CrashlyticsNdkDataProvider.class})
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore.class */
public class CrashlyticsCore extends AbstractC0147l<Void> {
    static final float CLS_DEFAULT_PROCESS_DELAY = 1.0f;
    static final String CRASHLYTICS_REQUIRE_BUILD_ID = "com.crashlytics.RequireBuildId";
    static final boolean CRASHLYTICS_REQUIRE_BUILD_ID_DEFAULT = true;
    static final String CRASH_MARKER_FILE_NAME = "crash_marker";
    static final int DEFAULT_MAIN_HANDLER_TIMEOUT_SEC = 4;
    private static final String INITIALIZATION_MARKER_FILE_NAME = "initialization_marker";
    static final int MAX_ATTRIBUTES = 64;
    static final int MAX_ATTRIBUTE_SIZE = 1024;
    private static final String MISSING_BUILD_ID_MSG = "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app's organization.";
    private static final String PREFERENCE_STORE_NAME = "com.crashlytics.android.core.CrashlyticsCore";
    public static final String TAG = "CrashlyticsCore";
    private final ConcurrentHashMap<String, String> attributes;
    private CrashlyticsBackgroundWorker backgroundWorker;
    private CrashlyticsController controller;
    private CrashlyticsFileMarker crashMarker;
    private CrashlyticsNdkDataProvider crashlyticsNdkDataProvider;
    private float delay;
    private boolean disabled;
    private AbstractC0101h httpRequestFactory;
    private CrashlyticsFileMarker initializationMarker;
    private CrashlyticsListener listener;
    private final PinningInfoProvider pinningInfo;
    private final long startTime;
    private String userEmail;
    private String userId;
    private String userName;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore$Builder.class */
    public static class Builder {
        private float delay = -1.0f;
        private boolean disabled = false;
        private CrashlyticsListener listener;
        private PinningInfoProvider pinningInfoProvider;

        public CrashlyticsCore build() {
            if (this.delay < 0.0f) {
                this.delay = CrashlyticsCore.CLS_DEFAULT_PROCESS_DELAY;
            }
            return new CrashlyticsCore(this.delay, this.listener, this.pinningInfoProvider, this.disabled);
        }

        public Builder delay(float f) {
            if (f <= 0.0f) {
                throw new IllegalArgumentException("delay must be greater than 0");
            } else if (this.delay <= 0.0f) {
                this.delay = f;
                return this;
            } else {
                throw new IllegalStateException("delay already set.");
            }
        }

        public Builder disabled(boolean z) {
            this.disabled = z;
            return this;
        }

        public Builder listener(CrashlyticsListener crashlyticsListener) {
            if (crashlyticsListener == null) {
                throw new IllegalArgumentException("listener must not be null.");
            } else if (this.listener == null) {
                this.listener = crashlyticsListener;
                return this;
            } else {
                throw new IllegalStateException("listener already set.");
            }
        }

        @Deprecated
        public Builder pinningInfo(PinningInfoProvider pinningInfoProvider) {
            if (pinningInfoProvider == null) {
                throw new IllegalArgumentException("pinningInfoProvider must not be null.");
            } else if (this.pinningInfoProvider == null) {
                this.pinningInfoProvider = pinningInfoProvider;
                return this;
            } else {
                throw new IllegalStateException("pinningInfoProvider already set.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore$CrashMarkerCheck.class */
    public static final class CrashMarkerCheck implements Callable<Boolean> {
        private final CrashlyticsFileMarker crashMarker;

        public CrashMarkerCheck(CrashlyticsFileMarker crashlyticsFileMarker) {
            this.crashMarker = crashlyticsFileMarker;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public final Boolean call() {
            if (!this.crashMarker.isPresent()) {
                return Boolean.FALSE;
            }
            C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Found previous crash marker.");
            this.crashMarker.remove();
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashlyticsCore$NoOpListener.class */
    private static final class NoOpListener implements CrashlyticsListener {
        private NoOpListener() {
        }

        @Override // com.crashlytics.android.core.CrashlyticsListener
        public final void crashlyticsDidDetectCrashDuringPreviousExecution() {
        }
    }

    public CrashlyticsCore() {
        this(CLS_DEFAULT_PROCESS_DELAY, null, null, false);
    }

    CrashlyticsCore(float f, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z) {
        this(f, crashlyticsListener, pinningInfoProvider, z, C0036q.m10304a("Crashlytics Exception Handler"));
    }

    CrashlyticsCore(float f, CrashlyticsListener crashlyticsListener, PinningInfoProvider pinningInfoProvider, boolean z, ExecutorService executorService) {
        this.userId = null;
        this.userEmail = null;
        this.userName = null;
        this.delay = f;
        this.listener = crashlyticsListener == null ? new NoOpListener() : crashlyticsListener;
        this.pinningInfo = pinningInfoProvider;
        this.disabled = z;
        this.backgroundWorker = new CrashlyticsBackgroundWorker(executorService);
        this.attributes = new ConcurrentHashMap<>();
        this.startTime = System.currentTimeMillis();
    }

    private void checkForPreviousCrash() {
        if (Boolean.TRUE.equals((Boolean) this.backgroundWorker.submitAndWait(new CrashMarkerCheck(this.crashMarker)))) {
            try {
                this.listener.crashlyticsDidDetectCrashDuringPreviousExecution();
            } catch (Exception e) {
                C0137d.m10155c().mo10130c(TAG, "Exception thrown by CrashlyticsListener while notifying of previous crash.", e);
            }
        }
    }

    private void doLog(int i, String str, String str2) {
        if (!this.disabled && ensureFabricWithCalled("prior to logging messages.")) {
            this.controller.writeToLog(System.currentTimeMillis() - this.startTime, formatLogMessage(i, str, str2));
        }
    }

    private static boolean ensureFabricWithCalled(String str) {
        CrashlyticsCore instance = getInstance();
        if (instance != null && instance.controller != null) {
            return true;
        }
        C0137d.m10155c().mo10130c(TAG, "Crashlytics must be initialized by calling Fabric.with(Context) ".concat(String.valueOf(str)), null);
        return false;
    }

    private void finishInitSynchronously() {
        AbstractC0150o c;
        String str;
        AbstractCallableC0070m<Void> mVar = new AbstractCallableC0070m<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.1
            @Override // java.util.concurrent.Callable
            public Void call() {
                return CrashlyticsCore.this.doInBackground();
            }

            @Override // p000a.p001a.p002a.p003a.p004a.p007c.C0073p, p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0072o
            public EnumC0066j getPriority() {
                return EnumC0066j.IMMEDIATE;
            }
        };
        for (AbstractC0076r rVar : getDependencies()) {
            mVar.addDependency(rVar);
        }
        Future submit = getFabric().m10157b().submit(mVar);
        C0137d.m10155c().mo10135a(TAG, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            e = e;
            c = C0137d.m10155c();
            str = "Crashlytics was interrupted during initialization.";
            c.mo10130c(TAG, str, e);
        } catch (ExecutionException e2) {
            e = e2;
            c = C0137d.m10155c();
            str = "Problem encountered during Crashlytics initialization.";
            c.mo10130c(TAG, str, e);
        } catch (TimeoutException e3) {
            e = e3;
            c = C0137d.m10155c();
            str = "Crashlytics timed out during initialization.";
            c.mo10130c(TAG, str, e);
        }
    }

    private static String formatLogMessage(int i, String str, String str2) {
        return C0026j.m10335b(i) + "/" + str + " " + str2;
    }

    public static CrashlyticsCore getInstance() {
        return (CrashlyticsCore) C0137d.m10161a(CrashlyticsCore.class);
    }

    static boolean isBuildIdValid(String str, boolean z) {
        if (!z) {
            C0137d.m10155c().mo10135a(TAG, "Configured not to require a build ID.");
            return true;
        } else if (!C0026j.m10325d(str)) {
            return true;
        } else {
            Log.e(TAG, ".");
            Log.e(TAG, ".     |  | ");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".   \\ |  | /");
            Log.e(TAG, ".    \\    /");
            Log.e(TAG, ".     \\  /");
            Log.e(TAG, ".      \\/");
            Log.e(TAG, ".");
            Log.e(TAG, MISSING_BUILD_ID_MSG);
            Log.e(TAG, ".");
            Log.e(TAG, ".      /\\");
            Log.e(TAG, ".     /  \\");
            Log.e(TAG, ".    /    \\");
            Log.e(TAG, ".   / |  | \\");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".     |  |");
            Log.e(TAG, ".");
            return false;
        }
    }

    private static String sanitizeAttribute(String str) {
        String str2 = str;
        if (str != null) {
            String trim = str.trim();
            str2 = trim;
            if (trim.length() > MAX_ATTRIBUTE_SIZE) {
                str2 = trim.substring(0, MAX_ATTRIBUTE_SIZE);
            }
        }
        return str2;
    }

    public void crash() {
        new CrashTest().indexOutOfBounds();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void createCrashMarker() {
        this.crashMarker.create();
    }

    boolean didPreviousInitializationFail() {
        return this.initializationMarker.isPresent();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public Void doInBackground() {
        C0129t b;
        markInitializationStarted();
        this.controller.cleanInvalidTempFiles();
        try {
            try {
                this.controller.registerDevicePowerStateListener();
                b = C0125q.m10178a().m10175b();
            } catch (Exception e) {
                C0137d.m10155c().mo10130c(TAG, "Crashlytics encountered a problem during asynchronous initialization.", e);
            }
            if (b == null) {
                C0137d.m10155c().mo10129d(TAG, "Received null settings, skipping report submission!");
                markInitializationComplete();
                return null;
            }
            this.controller.registerAnalyticsEventListener(b);
            if (!b.f287d.f254c) {
                C0137d.m10155c().mo10135a(TAG, "Collection of crash reports disabled in Crashlytics settings.");
                markInitializationComplete();
                return null;
            } else if (!C0033n.m10308a(getContext()).m10309a()) {
                C0137d.m10155c().mo10135a(TAG, "Automatic collection of crash reports disabled by Firebase settings.");
                markInitializationComplete();
                return null;
            } else {
                CrashlyticsNdkData nativeCrashData = getNativeCrashData();
                if (nativeCrashData != null && !this.controller.finalizeNativeReport(nativeCrashData)) {
                    C0137d.m10155c().mo10135a(TAG, "Could not finalize previous NDK sessions.");
                }
                if (!this.controller.finalizeSessions(b.f285b)) {
                    C0137d.m10155c().mo10135a(TAG, "Could not finalize previous sessions.");
                }
                this.controller.submitAllReports(this.delay, b);
                markInitializationComplete();
                return null;
            }
        } catch (Throwable th) {
            markInitializationComplete();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getAttributes() {
        return Collections.unmodifiableMap(this.attributes);
    }

    CrashlyticsController getController() {
        return this.controller;
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public String getIdentifier() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    CrashlyticsNdkData getNativeCrashData() {
        CrashlyticsNdkDataProvider crashlyticsNdkDataProvider = this.crashlyticsNdkDataProvider;
        if (crashlyticsNdkDataProvider != null) {
            return crashlyticsNdkDataProvider.getCrashlyticsNdkData();
        }
        return null;
    }

    public PinningInfoProvider getPinningInfoProvider() {
        if (!this.disabled) {
            return this.pinningInfo;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserEmail() {
        if (getIdManager().m10296a()) {
            return this.userEmail;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserIdentifier() {
        if (getIdManager().m10296a()) {
            return this.userId;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getUserName() {
        if (getIdManager().m10296a()) {
            return this.userName;
        }
        return null;
    }

    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public String getVersion() {
        return "2.6.6.29";
    }

    boolean internalVerifyPinning(URL url) {
        if (getPinningInfoProvider() == null) {
            return false;
        }
        C0093e a = this.httpRequestFactory.mo10201a(EnumC0092d.GET, url.toString());
        ((HttpsURLConnection) a.m10238a()).setInstanceFollowRedirects(false);
        a.m10227b();
        return true;
    }

    public void log(int i, String str, String str2) {
        doLog(i, str, str2);
        C0137d.m10155c().mo10137a(i, String.valueOf(str), String.valueOf(str2), true);
    }

    public void log(String str) {
        doLog(3, TAG, str);
    }

    public void logException(Throwable th) {
        if (this.disabled || !ensureFabricWithCalled("prior to logging exceptions.")) {
            return;
        }
        if (th == null) {
            C0137d.m10155c().mo10138a(5, TAG, "Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.controller.writeNonFatalException(Thread.currentThread(), th);
        }
    }

    void markInitializationComplete() {
        this.backgroundWorker.submit(new Callable<Boolean>() { // from class: com.crashlytics.android.core.CrashlyticsCore.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Boolean call() {
                try {
                    boolean remove = CrashlyticsCore.this.initializationMarker.remove();
                    C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Initialization marker file removed: ".concat(String.valueOf(remove)));
                    return Boolean.valueOf(remove);
                } catch (Exception e) {
                    C0137d.m10155c().mo10130c(CrashlyticsCore.TAG, "Problem encountered deleting Crashlytics initialization marker.", e);
                    return Boolean.FALSE;
                }
            }
        });
    }

    void markInitializationStarted() {
        this.backgroundWorker.submitAndWait(new Callable<Void>() { // from class: com.crashlytics.android.core.CrashlyticsCore.2
            @Override // java.util.concurrent.Callable
            public Void call() {
                CrashlyticsCore.this.initializationMarker.create();
                C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Initialization marker file created.");
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p000a.p001a.p002a.p003a.AbstractC0147l
    public boolean onPreExecute() {
        return onPreExecute(super.getContext());
    }

    boolean onPreExecute(Context context) {
        if (!C0033n.m10308a(context).m10309a()) {
            C0137d.m10155c().mo10135a(TAG, "Crashlytics is disabled, because data collection is disabled by Firebase.");
            this.disabled = true;
        }
        if (this.disabled) {
            return false;
        }
        new C0024h();
        String a = C0024h.m10360a(context);
        if (a == null) {
            return false;
        }
        String k = C0026j.m10318k(context);
        if (isBuildIdValid(k, C0026j.m10352a(context, CRASHLYTICS_REQUIRE_BUILD_ID, true))) {
            try {
                AbstractC0150o c = C0137d.m10155c();
                c.mo10131c(TAG, "Initializing Crashlytics " + getVersion());
                C0106b bVar = new C0106b(this);
                this.crashMarker = new CrashlyticsFileMarker(CRASH_MARKER_FILE_NAME, bVar);
                this.initializationMarker = new CrashlyticsFileMarker(INITIALIZATION_MARKER_FILE_NAME, bVar);
                PreferenceManager create = PreferenceManager.create(new C0108d(getContext(), PREFERENCE_STORE_NAME), this);
                CrashlyticsPinningInfoProvider crashlyticsPinningInfoProvider = this.pinningInfo != null ? new CrashlyticsPinningInfoProvider(this.pinningInfo) : null;
                this.httpRequestFactory = new C0090b(C0137d.m10155c());
                this.httpRequestFactory.mo10199a(crashlyticsPinningInfoProvider);
                C0043x idManager = getIdManager();
                AppData create2 = AppData.create(context, idManager, a, k);
                ResourceUnityVersionProvider resourceUnityVersionProvider = new ResourceUnityVersionProvider(context, new ManifestUnityVersionProvider(context, create2.packageName));
                AppMeasurementEventListenerRegistrar instanceFrom = DefaultAppMeasurementEventListenerRegistrar.instanceFrom(this);
                EventLogger eventLogger = AppMeasurementEventLogger.getEventLogger(context);
                AbstractC0150o c2 = C0137d.m10155c();
                c2.mo10135a(TAG, "Installer package name is: " + create2.installerPackageName);
                this.controller = new CrashlyticsController(this, this.backgroundWorker, this.httpRequestFactory, idManager, create, bVar, create2, resourceUnityVersionProvider, instanceFrom, eventLogger);
                boolean didPreviousInitializationFail = didPreviousInitializationFail();
                checkForPreviousCrash();
                new C0042w();
                this.controller.enableExceptionHandling(Thread.getDefaultUncaughtExceptionHandler(), C0042w.m10297a(context));
                if (!didPreviousInitializationFail || !C0026j.m10316m(context)) {
                    C0137d.m10155c().mo10135a(TAG, "Exception handling initialization successful");
                    return true;
                }
                C0137d.m10155c().mo10135a(TAG, "Crashlytics did not finish previous background initialization. Initializing synchronously.");
                finishInitSynchronously();
                return false;
            } catch (Exception e) {
                C0137d.m10155c().mo10130c(TAG, "Crashlytics was not started due to an exception during initialization", e);
                this.controller = null;
                return false;
            }
        } else {
            throw new C0077s(MISSING_BUILD_ID_MSG);
        }
    }

    public void setBool(String str, boolean z) {
        setString(str, Boolean.toString(z));
    }

    void setCrashlyticsNdkDataProvider(CrashlyticsNdkDataProvider crashlyticsNdkDataProvider) {
        this.crashlyticsNdkDataProvider = crashlyticsNdkDataProvider;
    }

    public void setDouble(String str, double d) {
        setString(str, Double.toString(d));
    }

    public void setFloat(String str, float f) {
        setString(str, Float.toString(f));
    }

    public void setInt(String str, int i) {
        setString(str, Integer.toString(i));
    }

    @Deprecated
    public void setListener(CrashlyticsListener crashlyticsListener) {
        synchronized (this) {
            C0137d.m10155c().mo10129d(TAG, "Use of setListener is deprecated.");
            if (crashlyticsListener != null) {
                this.listener = crashlyticsListener;
            } else {
                throw new IllegalArgumentException("listener must not be null.");
            }
        }
    }

    public void setLong(String str, long j) {
        setString(str, Long.toString(j));
    }

    public void setString(String str, String str2) {
        if (this.disabled || !ensureFabricWithCalled("prior to setting keys.")) {
            return;
        }
        if (str == null) {
            Context context = getContext();
            if (context == null || !C0026j.m10321h(context)) {
                C0137d.m10155c().mo10130c(TAG, "Attempting to set custom attribute with null key, ignoring.", null);
                return;
            }
            throw new IllegalArgumentException("Custom attribute key must not be null.");
        }
        String sanitizeAttribute = sanitizeAttribute(str);
        if (this.attributes.size() < MAX_ATTRIBUTES || this.attributes.containsKey(sanitizeAttribute)) {
            this.attributes.put(sanitizeAttribute, str2 == null ? "" : sanitizeAttribute(str2));
            this.controller.cacheKeyData(this.attributes);
            return;
        }
        C0137d.m10155c().mo10135a(TAG, "Exceeded maximum number of custom attributes (64)");
    }

    public void setUserEmail(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userEmail = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserIdentifier(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userId = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public void setUserName(String str) {
        if (!this.disabled && ensureFabricWithCalled("prior to setting user data.")) {
            this.userName = sanitizeAttribute(str);
            this.controller.cacheUserData(this.userId, this.userName, this.userEmail);
        }
    }

    public boolean verifyPinning(URL url) {
        try {
            return internalVerifyPinning(url);
        } catch (Exception e) {
            C0137d.m10155c().mo10130c(TAG, "Could not verify SSL pinning", e);
            return false;
        }
    }
}
