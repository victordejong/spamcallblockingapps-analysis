package com.moat.analytics.mobile.mpub;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.moat.analytics.mobile.mpub.C8667w;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.mpub.a */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/a.class */
public class C8612a {

    /* renamed from: a */
    public static WeakReference<Activity> f33425a;

    /* renamed from: b */
    public static boolean f33426b = false;

    /* renamed from: c */
    public static Application f33427c;

    /* renamed from: d */
    public static int f33428d = 0;

    /* renamed from: e */
    public static boolean f33429e = false;

    /* renamed from: com.moat.analytics.mobile.mpub.a$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/a$a.class */
    public static class C8613a implements Application.ActivityLifecycleCallbacks {
        /* renamed from: a */
        public static void m4989a(boolean z) {
            if (z) {
                C8652p.m4848a(3, "ActivityState", (Object) null, "App became visible");
                if (C8667w.m4813a().f33573a == C8667w.EnumC8675d.ON && !((C8641k) MoatAnalytics.getInstance()).f33520c) {
                    C8649o.m4870a().m4860c();
                    return;
                }
                return;
            }
            C8652p.m4848a(3, "ActivityState", (Object) null, "App became invisible");
            if (C8667w.m4813a().f33573a == C8667w.EnumC8675d.ON && !((C8641k) MoatAnalytics.getInstance()).f33520c) {
                C8649o.m4870a().m4859d();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            int unused = C8612a.f33428d = 1;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            try {
                if (!(C8612a.f33428d == 3 || C8612a.f33428d == 5)) {
                    if (C8612a.f33429e) {
                        m4989a(false);
                    }
                    boolean unused = C8612a.f33429e = false;
                }
                int unused2 = C8612a.f33428d = 6;
                C8652p.m4848a(3, "ActivityState", this, "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                if (C8612a.m4991b(activity)) {
                    C8612a.f33425a = new WeakReference<>(null);
                }
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            try {
                int unused = C8612a.f33428d = 4;
                if (C8612a.m4991b(activity)) {
                    C8612a.f33425a = new WeakReference<>(null);
                }
                C8652p.m4848a(3, "ActivityState", this, "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                C8612a.f33425a = new WeakReference<>(activity);
                int unused = C8612a.f33428d = 3;
                C8667w.m4813a().m4808b();
                C8652p.m4848a(3, "ActivityState", this, "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
                if (((C8641k) MoatAnalytics.getInstance()).f33519b) {
                    C8623f.m4955a(activity);
                }
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            try {
                C8612a.f33425a = new WeakReference<>(activity);
                int unused = C8612a.f33428d = 2;
                if (!C8612a.f33429e) {
                    m4989a(true);
                }
                boolean unused2 = C8612a.f33429e = true;
                C8652p.m4848a(3, "ActivityState", this, "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            try {
                if (C8612a.f33428d != 3) {
                    boolean unused = C8612a.f33429e = false;
                    m4989a(false);
                }
                int unused2 = C8612a.f33428d = 5;
                if (C8612a.m4991b(activity)) {
                    C8612a.f33425a = new WeakReference<>(null);
                }
                C8652p.m4848a(3, "ActivityState", this, "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                C8643m.m4879a(e);
            }
        }
    }

    /* renamed from: a */
    public static Application m4997a() {
        return f33427c;
    }

    /* renamed from: a */
    public static void m4994a(Application application) {
        f33427c = application;
        if (!f33426b) {
            f33426b = true;
            application.registerActivityLifecycleCallbacks(new C8613a());
        }
    }

    /* renamed from: b */
    public static boolean m4991b(Activity activity) {
        WeakReference<Activity> weakReference = f33425a;
        return weakReference != null && weakReference.get() == activity;
    }
}
