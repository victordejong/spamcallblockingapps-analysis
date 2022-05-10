package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvo.class */
public final class zzvo implements Parcelable.Creator<zzvp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvp createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 3) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                j = SafeParcelReader.m17274B(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzvp(i, i2, str, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvp[] newArray(int i) {
        return new zzvp[i];
    }
}
