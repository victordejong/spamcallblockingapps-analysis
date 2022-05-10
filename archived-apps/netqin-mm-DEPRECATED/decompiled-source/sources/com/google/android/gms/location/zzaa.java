package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzaa.class */
public final class zzaa implements Parcelable.Creator<LocationAvailability> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        long j = 0;
        zzaj[] zzajVarArr = null;
        int i = 1000;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                i3 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 3) {
                j = SafeParcelReader.m17274B(parcel, a);
            } else if (a2 == 4) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                zzajVarArr = (zzaj[]) SafeParcelReader.m17261b(parcel, a, zzaj.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new LocationAvailability(i, i2, i3, j, zzajVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
