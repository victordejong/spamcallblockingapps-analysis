package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c.class */
public final class c implements Parcelable.Creator<ResolveAccountRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ResolveAccountRequest resolveAccountRequest, Parcel parcel, int i) {
        int a2 = b.a(parcel, 20293);
        b.b(parcel, 1, resolveAccountRequest.f3988a);
        b.a(parcel, 2, resolveAccountRequest.f3989b, i);
        b.b(parcel, 3, resolveAccountRequest.c);
        b.a(parcel, 4, resolveAccountRequest.d, i);
        b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        Account account = null;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i2 = a.d(parcel, readInt);
                    break;
                case 2:
                    account = (Account) a.a(parcel, readInt, Account.CREATOR);
                    break;
                case 3:
                    i = a.d(parcel, readInt);
                    break;
                case 4:
                    googleSignInAccount = (GoogleSignInAccount) a.a(parcel, readInt, GoogleSignInAccount.CREATOR);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new ResolveAccountRequest(i2, account, i, googleSignInAccount);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountRequest[] newArray(int i) {
        return new ResolveAccountRequest[i];
    }
}
