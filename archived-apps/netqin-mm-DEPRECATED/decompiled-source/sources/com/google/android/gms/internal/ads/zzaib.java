package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaib.class */
public final class zzaib implements Parcelable.Creator<zzaic> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaic createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 2) {
                strArr = SafeParcelReader.m17245q(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                strArr2 = SafeParcelReader.m17245q(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaic(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaic[] newArray(int i) {
        return new zzaic[i];
    }
}
