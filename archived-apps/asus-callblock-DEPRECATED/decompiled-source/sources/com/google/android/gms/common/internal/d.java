package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d.class */
public final class d implements Parcelable.Creator<ResolveAccountResponse> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ResolveAccountResponse resolveAccountResponse, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, resolveAccountResponse.f3990a);
        b.a(parcel, 2, resolveAccountResponse.f3991b);
        b.a(parcel, 3, resolveAccountResponse.c, i);
        b.a(parcel, 4, resolveAccountResponse.d);
        b.a(parcel, 5, resolveAccountResponse.e);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        boolean z = false;
        boolean z2 = false;
        ConnectionResult connectionResult = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    iBinder = a.l(parcel, readInt);
                    break;
                case 3:
                    connectionResult = (ConnectionResult) a.a(parcel, readInt, ConnectionResult.CREATOR);
                    break;
                case 4:
                    z2 = a.c(parcel, readInt);
                    break;
                case 5:
                    z = a.c(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new ResolveAccountResponse(i, iBinder, connectionResult, z2, z);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
