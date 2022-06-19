package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.lo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/lo.class */
public final class C1138lo implements Parcelable.Creator<jo> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ jo createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        char c = 0;
        boolean z = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 2) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 3) {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 4) {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                z = SafeParcelReader.m3290k(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new jo(str, str2, c, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ jo[] newArray(int i) {
        return new jo[i];
    }
}
