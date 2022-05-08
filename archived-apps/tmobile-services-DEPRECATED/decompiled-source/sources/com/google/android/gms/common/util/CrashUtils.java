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
    public static boolean m14337a(Context context, Throwable th) {
        return m14336b(context, th, 536870912);
    }

    /* renamed from: b */
    private static boolean m14336b(Context context, Throwable th, int i) {
        try {
            Preconditions.m14523k(context);
            Preconditions.m14523k(th);
            return false;
        } catch (Exception e) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e);
            return false;
        }
    }
}
