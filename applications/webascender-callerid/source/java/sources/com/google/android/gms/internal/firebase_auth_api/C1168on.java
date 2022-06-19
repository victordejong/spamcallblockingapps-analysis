package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.on */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/on.class */
public final class C1168on implements Parcelable.Creator<nn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ nn createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                arrayList = SafeParcelReader.m3293h(parcel, m3283r, ln.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new nn(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ nn[] newArray(int i) {
        return new nn[i];
    }
}
