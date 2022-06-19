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
final class C0175c {

    /* renamed from: a */
    protected static final Class<?> f1199a;

    /* renamed from: d */
    protected static final Method f1202d;

    /* renamed from: e */
    protected static final Method f1203e;

    /* renamed from: f */
    protected static final Method f1204f;

    /* renamed from: g */
    private static final Handler f1205g = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    protected static final Field f1200b = m6191b();

    /* renamed from: c */
    protected static final Field f1201c = m6187f();

    /* renamed from: androidx.core.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$a.class */
    class RunnableC0176a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ C0179d f1206f;

        /* renamed from: g */
        final /* synthetic */ Object f1207g;

        RunnableC0176a(C0179d c0179d, Object obj) {
            this.f1206f = c0179d;
            this.f1207g = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1206f.f1212f = this.f1207g;
        }
    }

    /* renamed from: androidx.core.app.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$b.class */
    class RunnableC0177b implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Application f1208f;

        /* renamed from: g */
        final /* synthetic */ C0179d f1209g;

        RunnableC0177b(Application application, C0179d c0179d) {
            this.f1208f = application;
            this.f1209g = c0179d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1208f.unregisterActivityLifecycleCallbacks(this.f1209g);
        }
    }

    /* renamed from: androidx.core.app.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$c.class */
    public class RunnableC0178c implements Runnable {

        /* renamed from: f */
        final /* synthetic */ Object f1210f;

        /* renamed from: g */
        final /* synthetic */ Object f1211g;

        RunnableC0178c(Object obj, Object obj2) {
            this.f1210f = obj;
            this.f1211g = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = C0175c.f1202d;
                if (method != null) {
                    method.invoke(this.f1210f, this.f1211g, Boolean.FALSE, "AppCompat recreation");
                } else {
                    C0175c.f1203e.invoke(this.f1210f, this.f1211g, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.c$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/c$d.class */
    public static final class C0179d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: f */
        Object f1212f;

        /* renamed from: g */
        private Activity f1213g;

        /* renamed from: h */
        private boolean f1214h = false;

        /* renamed from: i */
        private boolean f1215i = false;

        /* renamed from: j */
        private boolean f1216j = false;

        C0179d(Activity activity) {
            this.f1213g = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1213g == activity) {
                this.f1213g = null;
                this.f1215i = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1215i || this.f1216j || this.f1214h || !C0175c.m6185h(this.f1212f, activity)) {
                return;
            }
            this.f1216j = true;
            this.f1212f = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1213g == activity) {
                this.f1214h = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> m6192a = m6192a();
        f1199a = m6192a;
        f1202d = m6189d(m6192a);
        f1203e = m6190c(m6192a);
        f1204f = m6188e(m6192a);
    }

    /* renamed from: a */
    private static Class<?> m6192a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    private static Field m6191b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    private static Method m6190c(Class<?> cls) {
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
    private static Method m6189d(Class<?> cls) {
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
    private static Method m6188e(Class<?> cls) {
        if (!m6186g() || cls == null) {
            return null;
        }
        try {
            Class<?> cls2 = Integer.TYPE;
            Class<?> cls3 = Boolean.TYPE;
            Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, cls2, cls3, Configuration.class, Configuration.class, cls3, cls3);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: f */
    private static Field m6187f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: g */
    private static boolean m6186g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* renamed from: h */
    protected static boolean m6185h(Object obj, Activity activity) {
        try {
            Object obj2 = f1201c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            f1205g.postAtFrontOfQueue(new RunnableC0178c(f1200b.get(activity), obj2));
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: i */
    static boolean m6184i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m6186g() && f1204f == null) {
            return false;
        } else {
            if (f1203e == null && f1202d == null) {
                return false;
            }
            try {
                Object obj2 = f1201c.get(activity);
                if (obj2 == null || (obj = f1200b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0179d c0179d = new C0179d(activity);
                application.registerActivityLifecycleCallbacks(c0179d);
                Handler handler = f1205g;
                handler.post(new RunnableC0176a(c0179d, obj2));
                if (m6186g()) {
                    Method method = f1204f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new RunnableC0177b(application, c0179d));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }
}
