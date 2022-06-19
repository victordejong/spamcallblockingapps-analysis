package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.fo;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ue */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ue.class */
public final class C1222ue implements Parcelable.Creator<te> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ te createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        fo foVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                foVar = (fo) SafeParcelReader.m3298c(parcel, m3283r, fo.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new te(str, foVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ te[] newArray(int i) {
        return new te[i];
    }
}
