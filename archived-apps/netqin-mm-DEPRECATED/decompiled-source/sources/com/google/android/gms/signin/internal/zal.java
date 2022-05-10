package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zau;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/zal.class */
public final class zal implements Parcelable.Creator<zam> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        ConnectionResult connectionResult = null;
        zau zauVar = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.m17264a(parcel, a, ConnectionResult.CREATOR);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                zauVar = (zau) SafeParcelReader.m17264a(parcel, a, zau.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zam(i, connectionResult, zauVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zam[] newArray(int i) {
        return new zam[i];
    }
}
