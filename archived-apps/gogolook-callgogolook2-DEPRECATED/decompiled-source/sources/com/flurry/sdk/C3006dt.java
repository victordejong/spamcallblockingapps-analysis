package com.flurry.sdk;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.util.SparseArray;
import android.util.SparseIntArray;
/* renamed from: com.flurry.sdk.dt */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dt.class */
public final class C3006dt {

    /* renamed from: a */
    public static final String f4689a = "dt";

    /* renamed from: b */
    public static final SparseArray<SparseIntArray> f4690b;

    static {
        SparseArray<SparseIntArray> sparseArray = new SparseArray<>();
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(-1, 7);
        sparseIntArray.put(2, 7);
        sparseIntArray.put(3, 7);
        sparseIntArray.put(4, 7);
        sparseIntArray.put(1, 1);
        sparseIntArray.put(5, 5);
        sparseIntArray.put(7, 7);
        sparseIntArray.put(9, 9);
        sparseIntArray.put(10, 7);
        sparseArray.put(1, sparseIntArray);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        sparseIntArray2.put(-1, 6);
        sparseIntArray2.put(2, 6);
        sparseIntArray2.put(3, 6);
        sparseIntArray2.put(4, 6);
        sparseIntArray2.put(0, 0);
        sparseIntArray2.put(5, 5);
        sparseIntArray2.put(6, 6);
        sparseIntArray2.put(8, 8);
        sparseIntArray2.put(10, 6);
        sparseArray.put(2, sparseIntArray2);
        f4690b = sparseArray;
    }

    /* renamed from: a */
    public static int m33329a() {
        return 7;
    }

    /* renamed from: a */
    public static int m33326a(Activity activity, int i, int i2) {
        int i3 = -1;
        if (activity == null) {
            return -1;
        }
        SparseIntArray sparseIntArray = f4690b.get(i2);
        if (sparseIntArray != null) {
            i3 = sparseIntArray.get(i, -1);
        }
        return i3;
    }

    /* renamed from: a */
    public static int m33325a(Activity activity, EnumC2923ct ctVar) {
        return m33326a(activity, -1, EnumC2923ct.PORTRAIT.equals(ctVar) ? 1 : EnumC2923ct.LANDSCAPE.equals(ctVar) ? 2 : 0);
    }

    /* renamed from: a */
    public static ActivityInfo m33323a(PackageManager packageManager, ComponentName componentName) {
        ActivityInfo activityInfo = null;
        if (packageManager != null) {
            if (componentName == null) {
                activityInfo = null;
            } else {
                try {
                    activityInfo = packageManager.getActivityInfo(componentName, 0);
                } catch (PackageManager.NameNotFoundException e) {
                    C3356jq.m32615a(5, f4689a, "cannot find info for activity: " + componentName);
                    activityInfo = null;
                }
            }
        }
        return activityInfo;
    }

    /* renamed from: a */
    public static void m33328a(Activity activity) {
        int i = activity.getResources().getConfiguration().orientation;
        if (i == 1) {
            activity.setRequestedOrientation(7);
        } else if (i == 2) {
            activity.setRequestedOrientation(6);
        }
    }

    /* renamed from: a */
    public static void m33327a(Activity activity, int i) {
        if (activity == null) {
            C3356jq.m32609b(f4689a, "Context is null. Cannot set requested orientation.");
        } else if (m33324a((Context) activity)) {
            C3356jq.m32609b(f4689a, "setOrientation SCREEN_ORIENTATION_SENSOR");
            activity.setRequestedOrientation(4);
        } else {
            String str = f4689a;
            C3356jq.m32609b(str, "setOrientation " + i);
            activity.setRequestedOrientation(i);
        }
    }

    /* renamed from: a */
    public static boolean m33324a(Context context) {
        boolean z = (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        String str = f4689a;
        C3356jq.m32609b(str, "isTablet " + z);
        return z;
    }

    /* renamed from: b */
    public static boolean m33322b(Activity activity, int i) {
        int i2;
        if (activity == null) {
            return false;
        }
        ActivityInfo a = activity == null ? null : m33323a(activity.getPackageManager(), activity.getComponentName());
        if (a == null) {
            i2 = 0;
        } else {
            i2 = a.configChanges;
            if (a.applicationInfo.targetSdkVersion < 13) {
                i2 |= 3072;
            }
        }
        boolean z = ((i2 & 128) == 0 || (i2 & 1024) == 0) ? false : true;
        int i3 = i;
        if (!z) {
            i3 = activity == null ? -1 : m33326a(activity, i, activity.getResources().getConfiguration().orientation);
            if (-1 == i3) {
                String str = f4689a;
                C3356jq.m32615a(5, str, "cannot set requested orientation without restarting activity, requestedOrientation = " + i);
                String str2 = f4689a;
                C3356jq.m32609b(str2, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: " + activity.getComponentName().getClassName());
                return false;
            }
        }
        activity.setRequestedOrientation(i3);
        return true;
    }
}
