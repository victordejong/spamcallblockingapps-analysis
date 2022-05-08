package com.apptentive.android.sdk.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import androidx.annotation.NonNull;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.debug.ErrorMetrics;
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
            ApptentiveLog.m15641e(e, "Unable to get class with name '%s'", str);
            ErrorMetrics.logException(e);
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
                if (context != null) {
                    if (cachedApplicationInfo == null) {
                        try {
                            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                            ApplicationInfo applicationInfo2 = packageInfo.applicationInfo;
                            ApplicationInfo applicationInfo3 = new ApplicationInfo(packageInfo.versionName, packageInfo.versionCode, applicationInfo2 != null ? applicationInfo2.targetSdkVersion : 0, (applicationInfo2 == null || (applicationInfo2.flags & 2) == 0) ? false : true);
                            cachedApplicationInfo = applicationInfo3;
                            ApptentiveLog.m15636v("Resolved application info: %s", applicationInfo3);
                        } catch (Exception e) {
                            ApptentiveLog.m15641e(e, "Exception while getting app info", new Object[0]);
                            ErrorMetrics.logException(e);
                            cachedApplicationInfo = ApplicationInfo.NULL;
                        }
                    }
                    applicationInfo = cachedApplicationInfo;
                } else {
                    throw new IllegalArgumentException("Context is null");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return applicationInfo;
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
}
