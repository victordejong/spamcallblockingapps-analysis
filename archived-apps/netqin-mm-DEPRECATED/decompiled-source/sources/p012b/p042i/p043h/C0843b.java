package p012b.p042i.p043h;

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
/* renamed from: b.i.h.b */
/* loaded from: classes-dex2jar.jar:b/i/h/b.class */
public final class C0843b {

    /* renamed from: g */
    public static final Handler f3960g = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public static final Class<?> f3954a = m35794a();

    /* renamed from: b */
    public static final Field f3955b = m35790b();

    /* renamed from: c */
    public static final Field f3956c = m35788c();

    /* renamed from: d */
    public static final Method f3957d = m35789b(f3954a);

    /* renamed from: e */
    public static final Method f3958e = m35792a(f3954a);

    /* renamed from: f */
    public static final Method f3959f = m35787c(f3954a);

    /* renamed from: b.i.h.b$a */
    /* loaded from: classes-dex2jar.jar:b/i/h/b$a.class */
    public class RunnableC0844a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C0847d f3961a;

        /* renamed from: b */
        public final /* synthetic */ Object f3962b;

        public RunnableC0844a(C0847d dVar, Object obj) {
            this.f3961a = dVar;
            this.f3962b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3961a.f3967a = this.f3962b;
        }
    }

    /* renamed from: b.i.h.b$b */
    /* loaded from: classes-dex2jar.jar:b/i/h/b$b.class */
    public class RunnableC0845b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Application f3963a;

        /* renamed from: b */
        public final /* synthetic */ C0847d f3964b;

        public RunnableC0845b(Application application, C0847d dVar) {
            this.f3963a = application;
            this.f3964b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3963a.unregisterActivityLifecycleCallbacks(this.f3964b);
        }
    }

    /* renamed from: b.i.h.b$c */
    /* loaded from: classes-dex2jar.jar:b/i/h/b$c.class */
    public class RunnableC0846c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Object f3965a;

        /* renamed from: b */
        public final /* synthetic */ Object f3966b;

        public RunnableC0846c(Object obj, Object obj2) {
            this.f3965a = obj;
            this.f3966b = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (C0843b.f3957d != null) {
                    C0843b.f3957d.invoke(this.f3965a, this.f3966b, false, "AppCompat recreation");
                } else {
                    C0843b.f3958e.invoke(this.f3965a, this.f3966b, false);
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

    /* renamed from: b.i.h.b$d */
    /* loaded from: classes-dex2jar.jar:b/i/h/b$d.class */
    public static final class C0847d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a */
        public Object f3967a;

        /* renamed from: b */
        public Activity f3968b;

        /* renamed from: c */
        public boolean f3969c = false;

        /* renamed from: d */
        public boolean f3970d = false;

        /* renamed from: e */
        public boolean f3971e = false;

        public C0847d(Activity activity) {
            this.f3968b = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f3968b == activity) {
                this.f3968b = null;
                this.f3970d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (this.f3970d && !this.f3971e && !this.f3969c && C0843b.m35791a(this.f3967a, activity)) {
                this.f3971e = true;
                this.f3967a = null;
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
            if (this.f3968b == activity) {
                this.f3969c = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    public static Class<?> m35794a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static Method m35792a(Class<?> cls) {
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

    /* renamed from: a */
    public static boolean m35793a(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (m35786d() && f3959f == null) {
            return false;
        } else {
            if (f3958e == null && f3957d == null) {
                return false;
            }
            try {
                Object obj2 = f3956c.get(activity);
                if (obj2 == null || (obj = f3955b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0847d dVar = new C0847d(activity);
                application.registerActivityLifecycleCallbacks(dVar);
                f3960g.post(new RunnableC0844a(dVar, obj2));
                if (m35786d()) {
                    f3959f.invoke(obj, obj2, null, null, 0, false, null, null, false, false);
                } else {
                    activity.recreate();
                }
                f3960g.post(new RunnableC0845b(application, dVar));
                return true;
            } catch (Throwable th) {
                return false;
            }
        }
    }

    /* renamed from: a */
    public static boolean m35791a(Object obj, Activity activity) {
        try {
            Object obj2 = f3956c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            f3960g.postAtFrontOfQueue(new RunnableC0846c(f3955b.get(activity), obj2));
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* renamed from: b */
    public static Field m35790b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Method m35789b(Class<?> cls) {
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

    /* renamed from: c */
    public static Field m35788c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    public static Method m35787c(Class<?> cls) {
        if (!m35786d() || cls == null) {
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
    public static boolean m35786d() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }
}
