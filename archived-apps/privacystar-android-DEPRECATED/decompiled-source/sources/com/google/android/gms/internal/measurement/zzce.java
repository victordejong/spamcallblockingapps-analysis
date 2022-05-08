package com.google.android.gms.internal.measurement;

import android.os.Build;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzce.class */
public final class zzce {
    public static int version() {
        int i;
        try {
            i = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            zzco.zzf("Invalid version number", Build.VERSION.SDK);
            i = 0;
        }
        return i;
    }
}
