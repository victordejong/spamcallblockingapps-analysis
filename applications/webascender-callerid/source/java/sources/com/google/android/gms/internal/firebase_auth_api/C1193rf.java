package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.d;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.rf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/rf.class */
public final class C1193rf implements Parcelable.Creator<qf> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ qf createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        d dVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                dVar = (d) SafeParcelReader.m3298c(parcel, m3283r, d.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new qf(dVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ qf[] newArray(int i) {
        return new qf[i];
    }
}
