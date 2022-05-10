package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaid.class */
public final class zzaid implements Parcelable.Creator<zzaie> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaie createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        byte[] bArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        long j = 0;
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 4:
                    bArr = SafeParcelReader.m17255g(parcel, a);
                    break;
                case 5:
                    strArr = SafeParcelReader.m17245q(parcel, a);
                    break;
                case 6:
                    strArr2 = SafeParcelReader.m17245q(parcel, a);
                    break;
                case 7:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 8:
                    j = SafeParcelReader.m17274B(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaie(z, str, i, bArr, strArr, strArr2, z2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaie[] newArray(int i) {
        return new zzaie[i];
    }
}
