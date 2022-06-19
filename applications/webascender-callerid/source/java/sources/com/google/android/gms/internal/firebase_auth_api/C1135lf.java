package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.fo;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.lf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/lf.class */
public final class C1135lf implements Parcelable.Creator<kf> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ kf createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        fo foVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                foVar = (fo) SafeParcelReader.m3298c(parcel, m3283r, fo.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new kf(foVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ kf[] newArray(int i) {
        return new kf[i];
    }
}
