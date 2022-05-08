package com.facebook.appevents.p038s;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.facebook.appevents.C2271g;
import com.facebook.appevents.p035q.C2290a;
import com.facebook.appevents.p036r.C2300b;
import com.facebook.appevents.p041v.C2365d;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2455m;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import com.facebook.internal.C2503y;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p154f.C6135n;
import p081h.p154f.EnumC6151v;
/* renamed from: com.facebook.appevents.s.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a.class */
public class C2327a {

    /* renamed from: a */
    public static final String f2825a = "com.facebook.appevents.s.a";

    /* renamed from: c */
    public static volatile ScheduledFuture f2827c;

    /* renamed from: f */
    public static volatile C2347h f2830f;

    /* renamed from: h */
    public static String f2832h;

    /* renamed from: i */
    public static long f2833i;

    /* renamed from: k */
    public static WeakReference<Activity> f2835k;

    /* renamed from: b */
    public static final ScheduledExecutorService f2826b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    public static final Object f2828d = new Object();

    /* renamed from: e */
    public static AtomicInteger f2829e = new AtomicInteger(0);

    /* renamed from: g */
    public static AtomicBoolean f2831g = new AtomicBoolean(false);

    /* renamed from: j */
    public static int f2834j = 0;

    /* renamed from: com.facebook.appevents.s.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a$a.class */
    public static final class C2328a implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2300b.m35227d();
            } else {
                C2300b.m35231c();
            }
        }
    }

    /* renamed from: com.facebook.appevents.s.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a$b.class */
    public static final class C2329b implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivityCreated");
            C2334b.m35129a();
            C2327a.m35145c(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivityDestroyed");
            C2327a.m35143d(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivityPaused");
            C2334b.m35129a();
            C2327a.m35141e(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivityResumed");
            C2334b.m35129a();
            C2327a.m35139f(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivitySaveInstanceState");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            C2327a.m35146c();
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivityStarted");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            C2503y.m34557a(EnumC6151v.APP_EVENTS, C2327a.f2825a, "onActivityStopped");
            C2271g.m35327d();
            C2327a.m35144d();
        }
    }

    /* renamed from: com.facebook.appevents.s.a$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a$c.class */
    public static final class RunnableC2330c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            if (C2327a.f2830f == null) {
                C2347h unused = C2327a.f2830f = C2347h.m35080j();
            }
        }
    }

    /* renamed from: com.facebook.appevents.s.a$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a$d.class */
    public static final class RunnableC2331d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f2836a;

        /* renamed from: b */
        public final /* synthetic */ String f2837b;

        public RunnableC2331d(long j, String str) {
            this.f2836a = j;
            this.f2837b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2327a.f2830f == null) {
                C2347h unused = C2327a.f2830f = new C2347h(Long.valueOf(this.f2836a), null);
                C2348i.m35076a(this.f2837b, (C2349j) null, C2327a.f2832h);
            } else if (C2327a.f2830f.m35086d() != null) {
                long longValue = this.f2836a - C2327a.f2830f.m35086d().longValue();
                if (longValue > C2327a.m35131n() * 1000) {
                    C2348i.m35077a(this.f2837b, C2327a.f2830f, C2327a.f2832h);
                    C2348i.m35076a(this.f2837b, (C2349j) null, C2327a.f2832h);
                    C2347h unused2 = C2327a.f2830f = new C2347h(Long.valueOf(this.f2836a), null);
                } else if (longValue > 1000) {
                    C2327a.f2830f.m35083g();
                }
            }
            C2327a.f2830f.m35089a(Long.valueOf(this.f2836a));
            C2327a.f2830f.m35082h();
        }
    }

    /* renamed from: com.facebook.appevents.s.a$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a$e.class */
    public static final class RunnableC2332e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ long f2838a;

        /* renamed from: b */
        public final /* synthetic */ String f2839b;

        /* renamed from: com.facebook.appevents.s.a$e$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/a$e$a.class */
        public class RunnableC2333a implements Runnable {
            public RunnableC2333a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2327a.f2829e.get() <= 0) {
                    C2348i.m35077a(RunnableC2332e.this.f2839b, C2327a.f2830f, C2327a.f2832h);
                    C2347h.m35081i();
                    C2347h unused = C2327a.f2830f = null;
                }
                synchronized (C2327a.f2828d) {
                    ScheduledFuture unused2 = C2327a.f2827c = null;
                }
            }
        }

        public RunnableC2332e(long j, String str) {
            this.f2838a = j;
            this.f2839b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2327a.f2830f == null) {
                C2347h unused = C2327a.f2830f = new C2347h(Long.valueOf(this.f2838a), null);
            }
            C2327a.f2830f.m35089a(Long.valueOf(this.f2838a));
            if (C2327a.f2829e.get() <= 0) {
                RunnableC2333a aVar = new RunnableC2333a();
                synchronized (C2327a.f2828d) {
                    ScheduledFuture unused2 = C2327a.f2827c = C2327a.f2826b.schedule(aVar, C2327a.m35131n(), TimeUnit.SECONDS);
                }
            }
            long j = C2327a.f2833i;
            long j2 = 0;
            if (j > 0) {
                j2 = (this.f2838a - j) / 1000;
            }
            C2338d.m35121a(this.f2839b, j2);
            C2327a.f2830f.m35082h();
        }
    }

    /* renamed from: a */
    public static void m35151a(Application application, String str) {
        if (f2831g.compareAndSet(false, true)) {
            C2455m.m34685a(C2455m.EnumC2459d.CodelessEvents, new C2328a());
            f2832h = str;
            application.registerActivityLifecycleCallbacks(new C2329b());
        }
    }

    /* renamed from: c */
    public static /* synthetic */ int m35146c() {
        int i = f2834j;
        f2834j = i + 1;
        return i;
    }

    /* renamed from: c */
    public static void m35145c(Activity activity) {
        f2826b.execute(new RunnableC2330c());
    }

    /* renamed from: d */
    public static /* synthetic */ int m35144d() {
        int i = f2834j;
        f2834j = i - 1;
        return i;
    }

    /* renamed from: d */
    public static void m35143d(Activity activity) {
        C2300b.m35238a(activity);
    }

    /* renamed from: e */
    public static void m35141e(Activity activity) {
        if (f2829e.decrementAndGet() < 0) {
            f2829e.set(0);
        }
        m35134k();
        long currentTimeMillis = System.currentTimeMillis();
        String b = C2408g0.m34833b(activity);
        C2300b.m35234b(activity);
        f2826b.execute(new RunnableC2332e(currentTimeMillis, b));
    }

    /* renamed from: f */
    public static void m35139f(Activity activity) {
        f2835k = new WeakReference<>(activity);
        f2829e.incrementAndGet();
        m35134k();
        long currentTimeMillis = System.currentTimeMillis();
        f2833i = currentTimeMillis;
        String b = C2408g0.m34833b(activity);
        C2300b.m35230c(activity);
        C2290a.m35268a(activity);
        C2365d.m35005a(activity);
        f2826b.execute(new RunnableC2331d(currentTimeMillis, b));
    }

    /* renamed from: k */
    public static void m35134k() {
        synchronized (f2828d) {
            if (f2827c != null) {
                f2827c.cancel(false);
            }
            f2827c = null;
        }
    }

    @Nullable
    /* renamed from: l */
    public static Activity m35133l() {
        WeakReference<Activity> weakReference = f2835k;
        return weakReference != null ? weakReference.get() : null;
    }

    /* renamed from: m */
    public static UUID m35132m() {
        return f2830f != null ? f2830f.m35087c() : null;
    }

    /* renamed from: n */
    public static int m35131n() {
        C2464o c = C2466p.m34636c(C6135n.m23745f());
        return c == null ? C2340e.m35116a() : c.m34656k();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: o */
    public static boolean m35130o() {
        return f2834j == 0;
    }
}
