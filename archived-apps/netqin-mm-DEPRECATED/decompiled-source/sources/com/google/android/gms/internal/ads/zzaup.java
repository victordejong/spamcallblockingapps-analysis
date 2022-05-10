package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaup.class */
public final class zzaup implements Parcelable.Creator<zzaum> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaum createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzvg zzvgVar = null;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                zzvgVar = (zzvg) SafeParcelReader.m17264a(parcel, a, zzvg.CREATOR);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaum(zzvgVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaum[] newArray(int i) {
        return new zzaum[i];
    }
}
