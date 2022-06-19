package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.do;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.km */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/km.class */
public final class C1127km implements Parcelable.Creator<jm> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ jm createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        do doVar = null;
        ArrayList<String> arrayList = null;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 2:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 4:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 6:
                    doVar = (do) SafeParcelReader.m3298c(parcel, m3283r, do.CREATOR);
                    break;
                case 7:
                    arrayList = SafeParcelReader.m3295f(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new jm(str, z, str2, z2, doVar, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ jm[] newArray(int i) {
        return new jm[i];
    }
}
