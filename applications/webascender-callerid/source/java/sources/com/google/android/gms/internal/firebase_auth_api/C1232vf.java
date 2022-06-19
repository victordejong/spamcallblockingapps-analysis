package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.vf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/vf.class */
public final class C1232vf implements Parcelable.Creator<uf> {
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ uf createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        char c = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 2:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 4:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 5:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 6:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 7:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 8:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 9:
                    z3 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new uf(str, str2, str3, c, z, z2, str4, str5, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ uf[] newArray(int i) {
        return new uf[i];
    }
}
