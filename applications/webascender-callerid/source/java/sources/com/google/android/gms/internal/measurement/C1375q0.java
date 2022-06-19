package com.google.android.gms.internal.measurement;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.measurement.q0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q0.class */
public final class C1375q0 {

    /* renamed from: a */
    private static final ClassLoader f3951a = C1375q0.class.getClassLoader();

    private C1375q0() {
    }

    /* renamed from: a */
    public static boolean m2003a(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    /* renamed from: b */
    public static void m2002b(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: c */
    public static <T extends Parcelable> T m2001c(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: d */
    public static void m2000d(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: e */
    public static void m1999e(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: f */
    public static HashMap m1998f(Parcel parcel) {
        return parcel.readHashMap(f3951a);
    }
}
