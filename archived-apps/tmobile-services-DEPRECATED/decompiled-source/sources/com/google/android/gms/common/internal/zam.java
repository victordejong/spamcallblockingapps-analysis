package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zam.class */
public final class zam implements Parcelable.Creator<ResolveAccountRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                account = (Account) SafeParcelReader.m14476n(parcel, B, Account.CREATOR);
            } else if (u == 3) {
                i2 = SafeParcelReader.m14498D(parcel, B);
            } else if (u != 4) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m14476n(parcel, B, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new ResolveAccountRequest(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
