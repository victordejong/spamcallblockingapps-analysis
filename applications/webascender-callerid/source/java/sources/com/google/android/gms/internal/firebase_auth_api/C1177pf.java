package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.pf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/pf.class */
public final class C1177pf implements Parcelable.Creator<of> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ of createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 2) {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 3) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str3 = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new of(str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ of[] newArray(int i) {
        return new of[i];
    }
}
