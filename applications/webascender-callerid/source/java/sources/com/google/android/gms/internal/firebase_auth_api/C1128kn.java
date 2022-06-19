package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.kn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/kn.class */
public final class C1128kn implements Parcelable.Creator<in> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ in createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        char c = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 2) {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 3) {
                str3 = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j != 4) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new in(str, str2, str3, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ in[] newArray(int i) {
        return new in[i];
    }
}
