package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.sn;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ff */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ff.class */
public final class C1057ff implements Parcelable.Creator<df> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ df createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        sn snVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                snVar = (sn) SafeParcelReader.m3298c(parcel, m3283r, sn.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new df(snVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ df[] newArray(int i) {
        return new df[i];
    }
}
