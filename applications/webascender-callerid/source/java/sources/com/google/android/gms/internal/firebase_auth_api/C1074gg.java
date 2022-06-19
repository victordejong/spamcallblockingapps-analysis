package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.x;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.gg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/gg.class */
public final class C1074gg implements Parcelable.Creator<eg> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ eg createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        x xVar = null;
        String str = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                xVar = (x) SafeParcelReader.m3298c(parcel, m3283r, x.CREATOR);
            } else if (m3291j != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new eg(xVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ eg[] newArray(int i) {
        return new eg[i];
    }
}
