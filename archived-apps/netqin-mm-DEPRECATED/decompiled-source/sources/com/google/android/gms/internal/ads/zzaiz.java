package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaiz.class */
public final class zzaiz implements Parcelable.Creator<zzaja> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        Bundle bundle = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                bundle = SafeParcelReader.m17256f(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaja(str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaja[] newArray(int i) {
        return new zzaja[i];
    }
}
