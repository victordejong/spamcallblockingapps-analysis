package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvi.class */
public final class zzvi implements Parcelable.Creator<zzvg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvg createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        Bundle bundle = null;
        ArrayList<String> arrayList = null;
        String str = null;
        zzaag zzaagVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        zzuy zzuyVar = null;
        String str5 = null;
        ArrayList<String> arrayList3 = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    j = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 3:
                    bundle = SafeParcelReader.m17256f(parcel, a);
                    break;
                case 4:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m17244r(parcel, a);
                    break;
                case 6:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 7:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 8:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 9:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 10:
                    zzaagVar = (zzaag) SafeParcelReader.m17264a(parcel, a, zzaag.CREATOR);
                    break;
                case 11:
                    location = (Location) SafeParcelReader.m17264a(parcel, a, Location.CREATOR);
                    break;
                case 12:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 13:
                    bundle2 = SafeParcelReader.m17256f(parcel, a);
                    break;
                case 14:
                    bundle3 = SafeParcelReader.m17256f(parcel, a);
                    break;
                case 15:
                    arrayList2 = SafeParcelReader.m17244r(parcel, a);
                    break;
                case 16:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 17:
                    str4 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 18:
                    z3 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 19:
                    zzuyVar = (zzuy) SafeParcelReader.m17264a(parcel, a, zzuy.CREATOR);
                    break;
                case 20:
                    i4 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 21:
                    str5 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 22:
                    arrayList3 = SafeParcelReader.m17244r(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzvg(i, j, bundle, i2, arrayList, z, i3, z2, str, zzaagVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3, zzuyVar, i4, str5, arrayList3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvg[] newArray(int i) {
        return new zzvg[i];
    }
}
