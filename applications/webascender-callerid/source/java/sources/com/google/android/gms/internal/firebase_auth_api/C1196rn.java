package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.in;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.rn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/rn.class */
public final class C1196rn implements Parcelable.Creator<qn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ qn createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        in inVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 2) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 3) {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 4) {
                str3 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                inVar = (in) SafeParcelReader.m3298c(parcel, m3283r, in.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new qn(str, str2, str3, inVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ qn[] newArray(int i) {
        return new qn[i];
    }
}
