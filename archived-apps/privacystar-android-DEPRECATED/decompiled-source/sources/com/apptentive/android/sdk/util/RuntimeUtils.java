package com.apptentive.android.sdk.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.support.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/RuntimeUtils.class */
public class RuntimeUtils {
    private static ApplicationInfo cachedApplicationInfo;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/RuntimeUtils$FieldFilter.class */
    public interface FieldFilter {
        boolean accept(Field field);
    }

    public static boolean classExists(@NonNull String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static Class<?> classForName(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Unable to get class with name '%s'", str);
            return null;
        }
    }

    public static int getAppVersionCode(Context context) {
        return getApplicationInfo(context).getVersionCode();
    }

    public static String getAppVersionName(Context context) {
        return getApplicationInfo(context).getVersionName();
    }

    @NonNull
    public static ApplicationInfo getApplicationInfo(Context context) {
        ApplicationInfo applicationInfo;
        synchronized (RuntimeUtils.class) {
            try {
                if (context == null) {
                    throw new IllegalArgumentException("Context is null");
                }
                if (cachedApplicationInfo == null) {
                    try {
                        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                        ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
                        cachedApplicationInfo = new ApplicationInfo(packageInfo.versionName, packageInfo.versionCode, applicationInfo2 != null ? applicationInfo2.targetSdkVersion : 0, (applicationInfo2 == null || (applicationInfo2.flags & 2) == 0) ? false : true);
                        ApptentiveLog.m401v("Resolved application info: %s", cachedApplicationInfo);
                    } catch (Exception e) {
                        ApptentiveLog.m408e(e, "Exception while getting app info", new Object[0]);
                        cachedApplicationInfo = ApplicationInfo.NULL;
                    }
                }
                applicationInfo = cachedApplicationInfo;
            } catch (Throwable th) {
                throw th;
            }
        }
        return applicationInfo;
    }

    private static Field getFieldModifiers() throws NoSuchFieldException {
        try {
            return Field.class.getDeclaredField("modifiers");
        } catch (Exception e) {
            return Field.class.getDeclaredField("accessFlags");
        }
    }

    public static boolean isAppDebuggable(Context context) {
        return getApplicationInfo(context).isDebuggable();
    }

    public static List<Field> listFields(Class<?> cls, FieldFilter fieldFilter) {
        Field[] declaredFields;
        ArrayList arrayList = new ArrayList();
        while (cls != null) {
            for (Field field : cls.getDeclaredFields()) {
                if (fieldFilter.accept(field)) {
                    arrayList.add(field);
                }
            }
            cls = cls.getSuperclass();
        }
        return arrayList;
    }

    public static void overrideStaticFinalField(Class<?> cls, String str, Object obj) throws NoSuchFieldException, IllegalAccessException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        Field fieldModifiers = getFieldModifiers();
        fieldModifiers.setAccessible(true);
        fieldModifiers.setInt(declaredField, declaredField.getModifiers() & (-17));
        declaredField.set(null, obj);
    }
}
