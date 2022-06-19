package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.jf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/jf.class */
public final class C1114jf implements Parcelable.Creator<if> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ if createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new if(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ if[] newArray(int i) {
        return new if[i];
    }
}
