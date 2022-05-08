package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zan.class */
public final class zan implements Parcelable.Creator<ResolveAccountResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                iBinder = SafeParcelReader.m14499C(parcel, B);
            } else if (u == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.m14476n(parcel, B, ConnectionResult.CREATOR);
            } else if (u == 4) {
                z = SafeParcelReader.m14468v(parcel, B);
            } else if (u != 5) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                z2 = SafeParcelReader.m14468v(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new ResolveAccountResponse(i, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
