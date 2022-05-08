package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzb.class */
public class zzb {

    /* renamed from: a */
    private static final ClassLoader f8238a = zzb.class.getClassLoader();

    private zzb() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m13404a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m13403b(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: c */
    public static void m13402c(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: d */
    public static void m13401d(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: e */
    public static boolean m13400e(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: f */
    public static HashMap m13399f(Parcel parcel) {
        return parcel.readHashMap(f8238a);
    }
}
