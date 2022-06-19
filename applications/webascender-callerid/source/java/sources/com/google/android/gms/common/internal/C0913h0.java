package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.h0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/h0.class */
public final class C0913h0 implements Parcelable.Creator<i0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ i0 createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 2) {
                account = (Account) SafeParcelReader.m3298c(parcel, m3283r, Account.CREATOR);
            } else if (m3291j == 3) {
                i2 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j != 4) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m3298c(parcel, m3283r, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new i0(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ i0[] newArray(int i) {
        return new i0[i];
    }
}
