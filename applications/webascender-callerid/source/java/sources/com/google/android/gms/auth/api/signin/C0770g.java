package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/g.class */
public final class C0770g implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 2:
                    arrayList = SafeParcelReader.m3293h(parcel, m3283r, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.m3298c(parcel, m3283r, Account.CREATOR);
                    break;
                case 4:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 5:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 6:
                    z3 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 7:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 8:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.m3293h(parcel, m3283r, a.CREATOR);
                    break;
                case 10:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new GoogleSignInOptions(i, arrayList, account, z, z2, z3, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
