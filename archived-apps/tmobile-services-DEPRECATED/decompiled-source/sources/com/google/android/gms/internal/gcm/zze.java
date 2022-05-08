package com.google.android.gms.internal.gcm;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/gcm/zze.class */
public class zze {
    static {
        zze.class.getClassLoader();
    }

    private zze() {
    }

    /* renamed from: a */
    public static void m14068a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
