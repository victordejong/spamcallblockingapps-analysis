package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/signin/internal/h.class */
public final class h implements Parcelable.Creator<SignInResponse> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(SignInResponse signInResponse, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, signInResponse.f4258a);
        b.a(parcel, 2, signInResponse.f4259b, i);
        b.a(parcel, 3, signInResponse.c, i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInResponse createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        int i = 0;
        ResolveAccountResponse resolveAccountResponse = null;
        ConnectionResult connectionResult = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    connectionResult = (ConnectionResult) a.a(parcel, readInt, ConnectionResult.CREATOR);
                    break;
                case 3:
                    resolveAccountResponse = (ResolveAccountResponse) a.a(parcel, readInt, ResolveAccountResponse.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new SignInResponse(i, connectionResult, resolveAccountResponse);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInResponse[] newArray(int i) {
        return new SignInResponse[i];
    }
}
