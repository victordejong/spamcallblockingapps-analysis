package com.android.contacts.util;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/CompatUtils.class */
public final class CompatUtils {
    private static final String TAG = CompatUtils.class.getSimpleName();

    public static Object invokeMethod(Object obj, String str, Class<?>[] clsArr, Object[] objArr) {
        Object obj2 = null;
        if (obj != null) {
            if (TextUtils.isEmpty(str)) {
                obj2 = null;
            } else {
                String name = obj.getClass().getName();
                try {
                    obj2 = Class.forName(name).getMethod(str, clsArr).invoke(obj, objArr);
                } catch (ClassNotFoundException e) {
                    Log.v(TAG, "Could not invoke method: " + name + "#" + str);
                    obj2 = null;
                } catch (IllegalAccessException e2) {
                    Log.v(TAG, "Could not invoke method: " + name + "#" + str);
                    obj2 = null;
                } catch (IllegalArgumentException e3) {
                    Log.v(TAG, "Could not invoke method: " + name + "#" + str);
                    obj2 = null;
                } catch (NoSuchMethodException e4) {
                    Log.v(TAG, "Could not invoke method: " + name + "#" + str);
                    obj2 = null;
                } catch (InvocationTargetException e5) {
                    Log.v(TAG, "Could not invoke method: " + name + "#" + str);
                    obj2 = null;
                } catch (Throwable th) {
                    Log.e(TAG, "Unexpected exception when invoking method: " + name + "#" + str + " at runtime", th);
                    obj2 = null;
                }
            }
        }
        return obj2;
    }

    public static boolean isClassAvailable(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            try {
                Class.forName(str);
                z = true;
            } catch (ClassNotFoundException e) {
            } catch (Throwable th) {
                Log.e(TAG, "Unexpected exception when checking if class:" + str + " exists at runtime", th);
            }
        }
        return z;
    }

    public static boolean isDefaultDialerCompatible() {
        return isMarshmallowCompatible();
    }

    public static boolean isLollipopCompatible() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean isLollipopMr1Compatible() {
        return Build.VERSION.SDK_INT >= 22;
    }

    public static boolean isMarshmallowCompatible() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean isMethodAvailable(String str, String str2, Class<?>... clsArr) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                z = false;
            } else {
                try {
                    Class.forName(str).getMethod(str2, clsArr);
                    z = true;
                } catch (ClassNotFoundException e) {
                    Log.v(TAG, "Could not find method: " + str + "#" + str2);
                    z = false;
                } catch (NoSuchMethodException e2) {
                    Log.v(TAG, "Could not find method: " + str + "#" + str2);
                    z = false;
                } catch (Throwable th) {
                    Log.e(TAG, "Unexpected exception when checking if method: " + str + "#" + str2 + " exists at runtime", th);
                    z = false;
                }
            }
        }
        return z;
    }

    public static boolean isNCompatible() {
        return Build.VERSION.SDK_INT >= 24;
    }
}
