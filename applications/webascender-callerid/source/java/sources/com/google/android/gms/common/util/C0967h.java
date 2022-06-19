package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.util.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/h.class */
public final class C0967h {
    /* renamed from: a */
    public static boolean m3161a(Context context, Throwable th) {
        return m3160b(context, th, 536870912);
    }

    /* renamed from: b */
    private static boolean m3160b(Context context, Throwable th, int i) {
        try {
            C0931r.m3308k(context);
            C0931r.m3308k(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
