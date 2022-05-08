package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzk.class */
public final class zzk {
    private final boolean zzaha = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(Context context) {
    }

    public static boolean isMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }
}
