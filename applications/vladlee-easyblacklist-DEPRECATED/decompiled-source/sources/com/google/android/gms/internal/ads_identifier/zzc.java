package com.google.android.gms.internal.ads_identifier;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads_identifier/zzc.class */
public class zzc {

    /* renamed from: a */
    private static final ClassLoader f15782a = zzc.class.getClassLoader();

    private zzc() {
    }

    public static void zza(Parcel parcel, boolean z) {
        parcel.writeInt(1);
    }

    public static boolean zza(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
