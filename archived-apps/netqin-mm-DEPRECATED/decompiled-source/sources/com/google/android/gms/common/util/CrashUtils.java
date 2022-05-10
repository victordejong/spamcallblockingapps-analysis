package com.google.android.gms.common.util;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CrashUtils.class */
public final class CrashUtils {
    @KeepForSdk
    /* renamed from: a */
    public static boolean m17094a(Context context, Throwable th) {
        return m17093a(context, th, 536870912);
    }

    /* renamed from: a */
    public static boolean m17093a(Context context, Throwable th, int i) {
        try {
            Preconditions.m17288a(context);
            Preconditions.m17288a(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
