package com.google.android.gms.internal.clearcut;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzc.class */
public class zzc {
    static {
        zzc.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m10734a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m10735a(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    /* renamed from: a */
    public static void m10733a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
