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
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/app/ActivityRecreator.class */
final class ActivityRecreator {

    /* renamed from: g */
    private static final Handler f2814g = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected static final Class<?> f2808a = m19850a();

    /* renamed from: b */
    protected static final Field f2809b = m19849b();

    /* renamed from: c */
    protected static final Field f2810c = m19845f();

    /* renamed from: d */
    protected static final Method f2811d = m19847d(f2808a);

    /* renamed from: e */
    protected static final Method f2812e = m19848c(f2808a);

    /* renamed from: f */
    protected static final Method f2813f = m19846e(f2808a);

    /* loaded from: classes-dex2jar.jar:androidx/core/app/ActivityRecreator$LifecycleCheckCallbacks.class */
    private static final class LifecycleCheckCallbacks implements Application.ActivityLifecycleCallbacks {

        /* renamed from: f */
        Object f2821f;

        /* renamed from: g */
        private Activity f2822g;

        /* renamed from: h */
        private boolean f2823h = false;

        /* renamed from: i */
        private boolean f2824i = false;

        /* renamed from: j */
        private boolean f2825j = false;

        LifecycleCheckCallbacks(@NonNull Activity activity) {
            this.f2822g = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f2822g == activity) {
                this.f2822g = null;
                this.f2824i = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (this.f2824i && !this.f2825j && !this.f2823h && ActivityRecreator.m19843h(this.f2821f, activity)) {
                this.f2825j = true;
                this.f2821f = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f2822g == activity) {
                this.f2823h = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    private ActivityRecreator() {
    }

    /* renamed from: a */
    private static Class<?> m19850a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Field m19849b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m19848c(Class<?> cls) {
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

    /* renamed from: d */
    private static Method m19847d(Class<?> cls) {
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

    /* renamed from: e */
    private static Method m19846e(Class<?> cls) {
        if (!m19844g() || cls == null) {
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

    /* renamed from: f */
    private static Field m19845f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    private static boolean m19844g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: h */
    protected static boolean m19843h(Object obj, Activity activity) {
        try {
            final Object obj2 = f2810c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            final Object obj3 = f2809b.get(activity);
            f2814g.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.ActivityRecreator.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (ActivityRecreator.f2811d != null) {
                            ActivityRecreator.f2811d.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                        } else {
                            ActivityRecreator.f2812e.invoke(obj3, obj2, Boolean.FALSE);
                        }
                    } catch (RuntimeException e) {
                        if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                            throw e;
                        }
                    } catch (Throwable th) {
                        Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
                    }
                }
            });
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static boolean m19842i(@NonNull Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m19844g() && f2813f == null) {
            return false;
        } else {
            if (f2812e == null && f2811d == null) {
                return false;
            }
            try {
                final Object obj2 = f2810c.get(activity);
                if (obj2 == null || (obj = f2809b.get(activity)) == null) {
                    return false;
                }
                final Application application = activity.getApplication();
                final LifecycleCheckCallbacks lifecycleCheckCallbacks = new LifecycleCheckCallbacks(activity);
                application.registerActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                f2814g.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LifecycleCheckCallbacks.this.f2821f = obj2;
                    }
                });
                if (m19844g()) {
                    f2813f.invoke(obj, obj2, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                f2814g.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        application.unregisterActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                    }
                });
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }
}
