package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.zm;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.wm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/wm.class */
public final class C1242wm implements Parcelable.Creator<vm> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ vm createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        zm zmVar = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                zmVar = (zm) SafeParcelReader.m3298c(parcel, m3283r, zm.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new vm(zmVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ vm[] newArray(int i) {
        return new vm[i];
    }
}
