package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzar.class */
public final class zzar implements Parcelable.Creator<zzap> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzap createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                bundle = SafeParcelReader.m17256f(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzap(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzap[] newArray(int i) {
        return new zzap[i];
    }
}
