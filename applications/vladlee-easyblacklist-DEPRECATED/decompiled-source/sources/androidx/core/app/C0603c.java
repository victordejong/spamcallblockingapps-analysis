package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/* renamed from: androidx.core.app.c */
/* loaded from: classes-dex2jar.jar:androidx/core/app/c.class */
final class C0603c {

    /* renamed from: g */
    private static final Handler f2789g = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected static final Class<?> f2783a = m8746d();

    /* renamed from: b */
    protected static final Field f2784b = m8750b();

    /* renamed from: c */
    protected static final Field f2785c = m8748c();

    /* renamed from: d */
    protected static final Method f2786d = m8752a(f2783a);

    /* renamed from: e */
    protected static final Method f2787e = m8749b(f2783a);

    /* renamed from: f */
    protected static final Method f2788f = m8747c(f2783a);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$a.class */
    public static final class C0604a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        Object f2790a;

        /* renamed from: b */
        private Activity f2791b;

        /* renamed from: c */
        private boolean f2792c = false;

        /* renamed from: d */
        private boolean f2793d = false;

        /* renamed from: e */
        private boolean f2794e = false;

        C0604a(Activity activity) {
            this.f2791b = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.f2791b == activity) {
                this.f2791b = null;
                this.f2793d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (this.f2793d && !this.f2794e && !this.f2792c && C0603c.m8751a(this.f2790a, activity)) {
                this.f2794e = true;
                this.f2790a = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.f2791b == activity) {
                this.f2792c = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    private static Method m8752a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static boolean m8754a() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m8753a(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m8754a() && f2788f == null) {
            return false;
        } else {
            if (f2787e == null && f2786d == null) {
                return false;
            }
            try {
                Object obj2 = f2785c.get(activity);
                if (obj2 == null || (obj = f2784b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0604a aVar = new C0604a(activity);
                application.registerActivityLifecycleCallbacks(aVar);
                f2789g.post(new RunnableC0605d(aVar, obj2));
                if (m8754a()) {
                    f2788f.invoke(obj, obj2, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                f2789g.post(new RunnableC0606e(application, aVar));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }

    /* renamed from: a */
    protected static boolean m8751a(Object obj, Activity activity) {
        try {
            Object obj2 = f2785c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            f2789g.postAtFrontOfQueue(new RunnableC0607f(f2784b.get(activity), obj2));
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: b */
    private static Field m8750b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Method m8749b(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Field m8748c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m8747c(Class<?> cls) {
        if (!m8754a() || cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private static Class<?> m8746d() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }
}
