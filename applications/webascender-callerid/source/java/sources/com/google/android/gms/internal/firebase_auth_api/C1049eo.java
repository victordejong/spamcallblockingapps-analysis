package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.eo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/eo.class */
public final class C1049eo implements Parcelable.Creator<do> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ do createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        int i = 0;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                arrayList = SafeParcelReader.m3295f(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new do(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ do[] newArray(int i) {
        return new do[i];
    }
}
