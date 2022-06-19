package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public final class C0181e {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.core.app.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/e$a.class */
    public static class C0182a {

        /* renamed from: a */
        private static Method f1217a;

        /* renamed from: b */
        private static boolean f1218b;

        /* renamed from: c */
        private static Method f1219c;

        /* renamed from: d */
        private static boolean f1220d;

        /* renamed from: a */
        public static IBinder m6179a(Bundle bundle, String str) {
            if (!f1218b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f1217a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e);
                }
                f1218b = true;
            }
            Method method2 = f1217a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e2);
                    f1217a = null;
                    return null;
                }
            }
            return null;
        }

        /* renamed from: b */
        public static void m6178b(Bundle bundle, String str, IBinder iBinder) {
            if (!f1220d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1219c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e);
                }
                f1220d = true;
            }
            Method method2 = f1219c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e2);
                    f1219c = null;
                }
            }
        }
    }

    /* renamed from: a */
    public static IBinder m6181a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : C0182a.m6179a(bundle, str);
    }

    /* renamed from: b */
    public static void m6180b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            C0182a.m6178b(bundle, str, iBinder);
        }
    }
}
