package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawj.class */
public final class zzawj implements Parcelable.Creator<zzawg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzawg createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 4:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 5:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 6:
                    arrayList = SafeParcelReader.m17244r(parcel, a);
                    break;
                case 7:
                    z3 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 8:
                    z4 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.m17244r(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzawg(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzawg[] newArray(int i) {
        return new zzawg[i];
    }
}
