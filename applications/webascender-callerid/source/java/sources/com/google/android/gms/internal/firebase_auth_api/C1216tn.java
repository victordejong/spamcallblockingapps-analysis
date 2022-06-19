package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.tn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/tn.class */
public final class C1216tn implements Parcelable.Creator<sn> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ sn createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        char c = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 2:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 3:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 4:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 6:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 7:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 8:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new sn(str, c, z, str2, str3, str4, z2, str5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ sn[] newArray(int i) {
        return new sn[i];
    }
}
