package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatf.class */
public final class zzatf implements Parcelable.Creator<zzatc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatc createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        Bundle bundle = null;
        zzbbx zzbbxVar = null;
        ApplicationInfo applicationInfo = null;
        String str = null;
        ArrayList<String> arrayList = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        zzdqg zzdqgVar = null;
        String str4 = null;
        boolean z = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    bundle = SafeParcelReader.m17256f(parcel, a);
                    break;
                case 2:
                    zzbbxVar = (zzbbx) SafeParcelReader.m17264a(parcel, a, zzbbx.CREATOR);
                    break;
                case 3:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m17264a(parcel, a, ApplicationInfo.CREATOR);
                    break;
                case 4:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 5:
                    arrayList = SafeParcelReader.m17244r(parcel, a);
                    break;
                case 6:
                    packageInfo = (PackageInfo) SafeParcelReader.m17264a(parcel, a, PackageInfo.CREATOR);
                    break;
                case 7:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 8:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 9:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 10:
                    zzdqgVar = (zzdqg) SafeParcelReader.m17264a(parcel, a, zzdqg.CREATOR);
                    break;
                case 11:
                    str4 = SafeParcelReader.m17246p(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzatc(bundle, zzbbxVar, applicationInfo, str, arrayList, packageInfo, str2, z, str3, zzdqgVar, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatc[] newArray(int i) {
        return new zzatc[i];
    }
}
