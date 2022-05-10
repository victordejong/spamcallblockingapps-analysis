package com.google.firebase.perf.metrics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
import com.google.firebase.perf.provider.FirebasePerfProvider;
import com.google.firebase.perf.util.Constants$TraceNames;
import com.google.firebase.perf.util.Timer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p131c.p161d.p282e.p340u.p349l.C5993a;
import p131c.p161d.p282e.p340u.p350m.C6044w;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace.class */
public class AppStartTrace implements Application.ActivityLifecycleCallbacks {

    /* renamed from: j */
    public static final long f31007j = TimeUnit.MINUTES.toMicros(1);

    /* renamed from: k */
    public static volatile AppStartTrace f31008k;

    /* renamed from: b */
    public final C5992l f31010b;

    /* renamed from: c */
    public final C5993a f31011c;

    /* renamed from: d */
    public Context f31012d;

    /* renamed from: a */
    public boolean f31009a = false;

    /* renamed from: e */
    public boolean f31013e = false;

    /* renamed from: f */
    public Timer f31014f = null;

    /* renamed from: g */
    public Timer f31015g = null;

    /* renamed from: h */
    public Timer f31016h = null;

    /* renamed from: i */
    public boolean f31017i = false;

    /* renamed from: com.google.firebase.perf.metrics.AppStartTrace$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/AppStartTrace$a.class */
    public static class RunnableC7851a implements Runnable {

        /* renamed from: a */
        public final AppStartTrace f31018a;

        public RunnableC7851a(AppStartTrace appStartTrace) {
            this.f31018a = appStartTrace;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f31018a.f31014f == null) {
                this.f31018a.f31017i = true;
            }
        }
    }

    public AppStartTrace(C5992l lVar, C5993a aVar) {
        this.f31010b = lVar;
        this.f31011c = aVar;
    }

    /* renamed from: a */
    public static AppStartTrace m7252a(C5992l lVar, C5993a aVar) {
        if (f31008k == null) {
            synchronized (AppStartTrace.class) {
                try {
                    if (f31008k == null) {
                        f31008k = new AppStartTrace(lVar, aVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f31008k;
    }

    /* renamed from: b */
    public static AppStartTrace m7249b() {
        return f31008k != null ? f31008k : m7252a(C5992l.m22374g(), new C5993a());
    }

    @Keep
    public static void setLauncherActivityOnCreateTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnResumeTime(String str) {
    }

    @Keep
    public static void setLauncherActivityOnStartTime(String str) {
    }

    /* renamed from: a */
    public void m7254a() {
        synchronized (this) {
            if (this.f31009a) {
                ((Application) this.f31012d).unregisterActivityLifecycleCallbacks(this);
                this.f31009a = false;
            }
        }
    }

    /* renamed from: a */
    public void m7253a(Context context) {
        synchronized (this) {
            if (!this.f31009a) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext instanceof Application) {
                    ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                    this.f31009a = true;
                    this.f31012d = applicationContext;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        synchronized (this) {
            if (!this.f31017i && this.f31014f == null) {
                new WeakReference(activity);
                this.f31014f = this.f31011c.m22373a();
                if (FirebasePerfProvider.getAppStartTime().m7218a(this.f31014f) > f31007j) {
                    this.f31013e = true;
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            if (!this.f31017i && this.f31016h == null && !this.f31013e) {
                new WeakReference(activity);
                this.f31016h = this.f31011c.m22373a();
                Timer appStartTime = FirebasePerfProvider.getAppStartTime();
                C5969a a = C5969a.m22496a();
                a.m22495a("onResume(): " + activity.getClass().getName() + ": " + appStartTime.m7218a(this.f31016h) + " microseconds", new Object[0]);
                C6044w.C6046b O = C6044w.m22209O();
                O.m22183a(Constants$TraceNames.APP_START_TRACE_NAME.toString());
                O.m22187a(appStartTime.m7216c());
                O.m22180b(appStartTime.m7218a(this.f31016h));
                ArrayList arrayList = new ArrayList(3);
                C6044w.C6046b O2 = C6044w.m22209O();
                O2.m22183a(Constants$TraceNames.ON_CREATE_TRACE_NAME.toString());
                O2.m22187a(appStartTime.m7216c());
                O2.m22180b(appStartTime.m7218a(this.f31014f));
                arrayList.add(O2.mo6937a());
                C6044w.C6046b O3 = C6044w.m22209O();
                O3.m22183a(Constants$TraceNames.ON_START_TRACE_NAME.toString());
                O3.m22187a(this.f31014f.m7216c());
                O3.m22180b(this.f31014f.m7218a(this.f31015g));
                arrayList.add(O3.mo6937a());
                C6044w.C6046b O4 = C6044w.m22209O();
                O4.m22183a(Constants$TraceNames.ON_RESUME_TRACE_NAME.toString());
                O4.m22187a(this.f31015g.m7216c());
                O4.m22180b(this.f31015g.m7218a(this.f31016h));
                arrayList.add(O4.mo6937a());
                O.m22179b(arrayList);
                O.m22186a(SessionManager.getInstance().perfSession().m7266a());
                this.f31010b.m22387a((C6044w) O.mo6937a(), ApplicationProcessState.FOREGROUND_BACKGROUND);
                if (this.f31009a) {
                    m7254a();
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        synchronized (this) {
            if (!this.f31017i && this.f31015g == null && !this.f31013e) {
                this.f31015g = this.f31011c.m22373a();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        synchronized (this) {
        }
    }
}
