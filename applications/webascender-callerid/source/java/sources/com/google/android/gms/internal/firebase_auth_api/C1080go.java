package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.go */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/go.class */
public final class C1080go implements Parcelable.Creator<fo> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ fo createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 2:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 4:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 6:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 7:
                    str6 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 8:
                    str7 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 9:
                    str8 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 10:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 11:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 12:
                    str9 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 13:
                    str10 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 14:
                    str11 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 15:
                    str12 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 16:
                    z3 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 17:
                    str13 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new fo(str, str2, str3, str4, str5, str6, str7, str8, z, z2, str9, str10, str11, str12, z3, str13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ fo[] newArray(int i) {
        return new fo[i];
    }
}
