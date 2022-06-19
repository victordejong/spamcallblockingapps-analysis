package com.google.android.gms.internal.firebase_auth_api;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.firebase-auth-api.x3;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.x3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/x3.class */
public final class C1249x3 {
    static {
        x3.class.getClassLoader();
    }

    private C1249x3() {
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m2330a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: b */
    public static void m2329b(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    public static void m2328c(Parcel parcel, IInterface iInterface) {
        if (iInterface == 0) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface);
        }
    }
}
