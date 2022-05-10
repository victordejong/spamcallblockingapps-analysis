package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zar.class */
public final class zar implements Parcelable.Creator<zas> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zas createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                account = (Account) SafeParcelReader.m17264a(parcel, a, Account.CREATOR);
            } else if (a2 == 3) {
                i2 = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m17264a(parcel, a, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zas(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zas[] newArray(int i) {
        return new zas[i];
    }
}
