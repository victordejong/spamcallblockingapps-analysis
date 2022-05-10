package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvm.class */
public final class zzvm implements Parcelable.Creator<zzvn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvn createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        zzvn[] zzvnVarArr = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 4:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 5:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 6:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 7:
                    i4 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 8:
                    zzvnVarArr = (zzvn[]) SafeParcelReader.m17261b(parcel, a, zzvn.CREATOR);
                    break;
                case 9:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 10:
                    z3 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 11:
                    z4 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 12:
                    z5 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 13:
                    z6 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 14:
                    z7 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 15:
                    z8 = SafeParcelReader.m17242t(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzvn(str, i, i2, z, i3, i4, zzvnVarArr, z2, z3, z4, z5, z6, z7, z8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvn[] newArray(int i) {
        return new zzvn[i];
    }
}
