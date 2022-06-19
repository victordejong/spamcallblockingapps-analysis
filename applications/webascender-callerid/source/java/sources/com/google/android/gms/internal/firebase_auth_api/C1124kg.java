package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.i0;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.kg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/kg.class */
public final class C1124kg implements Parcelable.Creator<jg> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ jg createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        Status status = null;
        i0 i0Var = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                status = (Status) SafeParcelReader.m3298c(parcel, m3283r, Status.CREATOR);
            } else if (m3291j == 2) {
                i0Var = (i0) SafeParcelReader.m3298c(parcel, m3283r, i0.CREATOR);
            } else if (m3291j == 3) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 4) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new jg(status, i0Var, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ jg[] newArray(int i) {
        return new jg[i];
    }
}
