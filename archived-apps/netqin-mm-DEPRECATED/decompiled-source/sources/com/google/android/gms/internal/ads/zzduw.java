package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduw.class */
public final class zzduw implements Parcelable.Creator<zzdut> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdut createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 3) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 4) {
                str2 = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                i3 = SafeParcelReader.m17275A(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzdut(i, i2, i3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdut[] newArray(int i) {
        return new zzdut[i];
    }
}
