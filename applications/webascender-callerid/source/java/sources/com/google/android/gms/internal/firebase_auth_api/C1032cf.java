package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.a;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.cf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/cf.class */
public final class C1032cf implements Parcelable.Creator<bf> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bf createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        a aVar = null;
        String str2 = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 2) {
                aVar = (a) SafeParcelReader.m3298c(parcel, m3283r, a.CREATOR);
            } else if (m3291j != 3) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new bf(str, aVar, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bf[] newArray(int i) {
        return new bf[i];
    }
}
