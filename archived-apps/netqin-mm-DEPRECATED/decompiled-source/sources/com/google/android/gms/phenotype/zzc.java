package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/zzc.class */
public final class zzc implements Parcelable.Creator<Configuration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzi[] zziVarArr = null;
        String[] strArr = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 3) {
                zziVarArr = (zzi[]) SafeParcelReader.m17261b(parcel, a, zzi.CREATOR);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                strArr = SafeParcelReader.m17245q(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new Configuration(i, zziVarArr, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration[] newArray(int i) {
        return new Configuration[i];
    }
}
