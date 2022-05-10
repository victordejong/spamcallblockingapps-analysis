package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavs.class */
public final class zzavs implements Parcelable.Creator<zzavt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str2 = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzavt(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt[] newArray(int i) {
        return new zzavt[i];
    }
}
