package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.app.g */
/* loaded from: classes-dex2jar.jar:androidx/core/app/g.class */
public final class C0608g {

    /* renamed from: androidx.core.app.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/g$a.class */
    static final class C0609a {

        /* renamed from: a */
        private static Method f2801a;

        /* renamed from: b */
        private static boolean f2802b;

        /* renamed from: c */
        private static Method f2803c;

        /* renamed from: d */
        private static boolean f2804d;

        /* renamed from: a */
        public static IBinder m8743a(Bundle bundle, String str) {
            if (!f2802b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f2801a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f2802b = true;
            }
            Method method2 = f2801a;
            if (method2 == null) {
                return null;
            }
            try {
                return (IBinder) method2.invoke(bundle, str);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                f2801a = null;
                return null;
            }
        }

        /* renamed from: a */
        public static void m8742a(Bundle bundle, String str, IBinder iBinder) {
            if (!f2804d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f2803c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f2804d = true;
            }
            Method method2 = f2803c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f2803c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static IBinder m8745a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0609a.m8743a(bundle, str);
    }

    /* renamed from: a */
    public static void m8744a(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0609a.m8742a(bundle, str, iBinder);
        }
    }
}
