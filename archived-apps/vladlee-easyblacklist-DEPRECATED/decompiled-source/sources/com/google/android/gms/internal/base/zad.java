package com.google.android.gms.internal.base;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/zad.class */
public class zad {

    /* renamed from: a */
    private static final ClassLoader f15790a = zad.class.getClassLoader();

    private zad() {
    }

    public static void writeBoolean(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static <T extends Parcelable> T zaa(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    public static void zaa(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    public static void zaa(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
