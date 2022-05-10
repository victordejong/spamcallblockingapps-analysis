package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/zzk.class */
public final class zzk implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        long j = 0;
        double d = 0.0d;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    j = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 4:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 5:
                    d = SafeParcelReader.m17240v(parcel, a);
                    break;
                case 6:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 7:
                    bArr = SafeParcelReader.m17255g(parcel, a);
                    break;
                case 8:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 9:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzi(str, j, z, d, str2, bArr, i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i) {
        return new zzi[i];
    }
}
