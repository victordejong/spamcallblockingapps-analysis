package com.moat.analytics.mobile.inm;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.moat.analytics.mobile.inm.C8586w;
import java.lang.ref.WeakReference;
/* renamed from: com.moat.analytics.mobile.inm.a */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/a.class */
public class C8531a {

    /* renamed from: a */
    public static WeakReference<Activity> f33208a;

    /* renamed from: b */
    public static boolean f33209b = false;

    /* renamed from: c */
    public static Application f33210c;

    /* renamed from: d */
    public static int f33211d = 0;

    /* renamed from: e */
    public static boolean f33212e = false;

    /* renamed from: com.moat.analytics.mobile.inm.a$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/a$a.class */
    public static class C8532a implements Application.ActivityLifecycleCallbacks {
        /* renamed from: a */
        public static void m5245a(boolean z) {
            if (z) {
                C8571p.m5104a(3, "ActivityState", (Object) null, "App became visible");
                if (C8586w.m5069a().f33356a == C8586w.EnumC8594d.ON && !((C8560k) MoatAnalytics.getInstance()).f33303c) {
                    C8568o.m5126a().m5116c();
                    return;
                }
                return;
            }
            C8571p.m5104a(3, "ActivityState", (Object) null, "App became invisible");
            if (C8586w.m5069a().f33356a == C8586w.EnumC8594d.ON && !((C8560k) MoatAnalytics.getInstance()).f33303c) {
                C8568o.m5126a().m5115d();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            int unused = C8531a.f33211d = 1;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            try {
                if (!(C8531a.f33211d == 3 || C8531a.f33211d == 5)) {
                    if (C8531a.f33212e) {
                        m5245a(false);
                    }
                    boolean unused = C8531a.f33212e = false;
                }
                int unused2 = C8531a.f33211d = 6;
                C8571p.m5104a(3, "ActivityState", this, "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                if (C8531a.m5247b(activity)) {
                    C8531a.f33208a = new WeakReference<>(null);
                }
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            try {
                int unused = C8531a.f33211d = 4;
                if (C8531a.m5247b(activity)) {
                    C8531a.f33208a = new WeakReference<>(null);
                }
                C8571p.m5104a(3, "ActivityState", this, "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            try {
                C8531a.f33208a = new WeakReference<>(activity);
                int unused = C8531a.f33211d = 3;
                C8586w.m5069a().m5064b();
                C8571p.m5104a(3, "ActivityState", this, "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
                if (((C8560k) MoatAnalytics.getInstance()).f33302b) {
                    C8542f.m5211a(activity);
                }
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            try {
                C8531a.f33208a = new WeakReference<>(activity);
                int unused = C8531a.f33211d = 2;
                if (!C8531a.f33212e) {
                    m5245a(true);
                }
                boolean unused2 = C8531a.f33212e = true;
                C8571p.m5104a(3, "ActivityState", this, "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            try {
                if (C8531a.f33211d != 3) {
                    boolean unused = C8531a.f33212e = false;
                    m5245a(false);
                }
                int unused2 = C8531a.f33211d = 5;
                if (C8531a.m5247b(activity)) {
                    C8531a.f33208a = new WeakReference<>(null);
                }
                C8571p.m5104a(3, "ActivityState", this, "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }
    }

    /* renamed from: a */
    public static Application m5253a() {
        return f33210c;
    }

    /* renamed from: a */
    public static void m5250a(Application application) {
        f33210c = application;
        if (!f33209b) {
            f33209b = true;
            application.registerActivityLifecycleCallbacks(new C8532a());
        }
    }

    /* renamed from: b */
    public static boolean m5247b(Activity activity) {
        WeakReference<Activity> weakReference = f33208a;
        return weakReference != null && weakReference.get() == activity;
    }
}
