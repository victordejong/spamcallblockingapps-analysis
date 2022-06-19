package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.mn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/mn.class */
public final class C1150mn implements Parcelable.Creator<ln> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ln createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
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
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new ln(str, str2, str3, str4, str5, str6, str7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ln[] newArray(int i) {
        return new ln[i];
    }
}
