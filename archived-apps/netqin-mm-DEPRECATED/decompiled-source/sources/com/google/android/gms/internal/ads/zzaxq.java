package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaxq.class */
public final class zzaxq implements Parcelable.Creator<zzaxr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxr createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        zzvn zzvnVar = null;
        zzvg zzvgVar = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 2) {
                str2 = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                zzvnVar = (zzvn) SafeParcelReader.m17264a(parcel, a, zzvn.CREATOR);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                zzvgVar = (zzvg) SafeParcelReader.m17264a(parcel, a, zzvg.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaxr(str, str2, zzvnVar, zzvgVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaxr[] newArray(int i) {
        return new zzaxr[i];
    }
}
