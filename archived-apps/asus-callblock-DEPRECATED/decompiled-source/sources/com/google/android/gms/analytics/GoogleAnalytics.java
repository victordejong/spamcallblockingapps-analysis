package com.google.android.gms.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.android.gms.analytics.internal.zzae;
import com.google.android.gms.analytics.internal.zzam;
import com.google.android.gms.analytics.internal.zzan;
import com.google.android.gms.analytics.internal.zzap;
import com.google.android.gms.analytics.internal.zzf;
import com.google.android.gms.analytics.internal.zzy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics.class */
public final class GoogleAnalytics extends zza {
    private static List<Runnable> c = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    Set<a> f3780a = new HashSet();
    private boolean d;
    private boolean e;
    private boolean f;
    private volatile boolean g;
    private boolean h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics$a.class */
    public interface a {
        void a();

        void a(Activity activity);
    }

    @TargetApi(AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/GoogleAnalytics$b.class */
    final class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            GoogleAnalytics.this.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            GoogleAnalytics.this.a();
        }
    }

    public GoogleAnalytics(zzf zzfVar) {
        super(zzfVar);
    }

    public static GoogleAnalytics getInstance(Context context) {
        return zzf.zzX(context).zzme();
    }

    public static void zzkt() {
        synchronized (GoogleAnalytics.class) {
            try {
                if (c != null) {
                    for (Runnable runnable : c) {
                        runnable.run();
                    }
                    c = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    final void a() {
        for (a aVar : this.f3780a) {
            aVar.a();
        }
    }

    final void a(Activity activity) {
        for (a aVar : this.f3780a) {
            aVar.a(activity);
        }
    }

    public final void dispatchLocalHits() {
        ((zza) this).f3889b.zzkw().zzlJ();
    }

    @TargetApi(AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION)
    public final void enableAutoActivityReports(Application application) {
        if (Build.VERSION.SDK_INT >= 14 && !this.e) {
            application.registerActivityLifecycleCallbacks(new b());
            this.e = true;
        }
    }

    public final boolean getAppOptOut() {
        return this.g;
    }

    @Deprecated
    public final Logger getLogger() {
        return zzae.getLogger();
    }

    public final void initialize() {
        Logger logger;
        zzap zzkx = ((zza) this).f3889b.zzkx();
        if (zzkx.zznL()) {
            getLogger().setLogLevel(zzkx.getLogLevel());
        }
        if (zzkx.zznP()) {
            setDryRun(zzkx.zznQ());
        }
        if (zzkx.zznL() && (logger = zzae.getLogger()) != null) {
            logger.setLogLevel(zzkx.getLogLevel());
        }
        this.d = true;
    }

    public final boolean isDryRunEnabled() {
        return this.f;
    }

    public final boolean isInitialized() {
        return this.d;
    }

    public final Tracker newTracker(int i) {
        Tracker tracker;
        zzan zzav;
        synchronized (this) {
            tracker = new Tracker(((zza) this).f3889b, null);
            if (i > 0 && (zzav = new zzam(((zza) this).f3889b).zzav(i)) != null) {
                tracker.zzbG("Loading Tracker config values");
                tracker.f3785a = zzav;
                if (tracker.f3785a.zzov()) {
                    String trackingId = tracker.f3785a.getTrackingId();
                    tracker.set("&tid", trackingId);
                    tracker.zza("trackingId loaded", trackingId);
                }
                if (tracker.f3785a.zzow()) {
                    String d = Double.toString(tracker.f3785a.zzox());
                    tracker.set("&sf", d);
                    tracker.zza("Sample frequency loaded", d);
                }
                if (tracker.f3785a.zzoy()) {
                    int sessionTimeout = tracker.f3785a.getSessionTimeout();
                    tracker.setSessionTimeout(sessionTimeout);
                    tracker.zza("Session timeout loaded", Integer.valueOf(sessionTimeout));
                }
                if (tracker.f3785a.zzoz()) {
                    boolean zzoA = tracker.f3785a.zzoA();
                    tracker.enableAutoActivityTracking(zzoA);
                    tracker.zza("Auto activity tracking loaded", Boolean.valueOf(zzoA));
                }
                if (tracker.f3785a.zzoB()) {
                    boolean zzoC = tracker.f3785a.zzoC();
                    if (zzoC) {
                        tracker.set("&aip", "1");
                    }
                    tracker.zza("Anonymize ip loaded", Boolean.valueOf(zzoC));
                }
                tracker.enableExceptionReporting(tracker.f3785a.zzoD());
            }
            tracker.initialize();
        }
        return tracker;
    }

    public final Tracker newTracker(String str) {
        Tracker tracker;
        synchronized (this) {
            tracker = new Tracker(((zza) this).f3889b, str);
            tracker.initialize();
        }
        return tracker;
    }

    public final void reportActivityStart(Activity activity) {
        if (!this.e) {
            a(activity);
        }
    }

    public final void reportActivityStop(Activity activity) {
        if (!this.e) {
            a();
        }
    }

    public final void setAppOptOut(boolean z) {
        this.g = z;
        if (this.g) {
            ((zza) this).f3889b.zzkw().zzlI();
        }
    }

    public final void setDryRun(boolean z) {
        this.f = z;
    }

    public final void setLocalDispatchPeriod(int i) {
        ((zza) this).f3889b.zzkw().setLocalDispatchPeriod(i);
    }

    @Deprecated
    public final void setLogger(Logger logger) {
        zzae.setLogger(logger);
        if (!this.h) {
            String str = zzy.zzXF.get();
            String str2 = zzy.zzXF.get();
            Log.i(str, new StringBuilder(String.valueOf(str2).length() + 112).append("GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str2).append(" DEBUG").toString());
            this.h = true;
        }
    }

    public final String zzku() {
        com.google.android.gms.common.internal.b.c("getClientId can not be called from the main thread");
        return ((zza) this).f3889b.zzmh().zzmP();
    }
}
