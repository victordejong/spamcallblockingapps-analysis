package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.a;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.af */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/af.class */
public final class C1006af implements Parcelable.Creator<ze> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ze createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        a aVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                aVar = (a) SafeParcelReader.m3298c(parcel, m3283r, a.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new ze(str, aVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ze[] newArray(int i) {
        return new ze[i];
    }
}
