package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.signin.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/h.class */
public final class C0771h implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 4) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m3298c(parcel, m3283r, GoogleSignInAccount.CREATOR);
            } else if (m3291j != 8) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str2 = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
