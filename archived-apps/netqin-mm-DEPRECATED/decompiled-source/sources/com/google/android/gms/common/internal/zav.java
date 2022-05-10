package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zav.class */
public final class zav implements Parcelable.Creator<zaw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaw createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 3) {
                i3 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.m17261b(parcel, a, Scope.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zaw(i, i2, i3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaw[] newArray(int i) {
        return new zaw[i];
    }
}
