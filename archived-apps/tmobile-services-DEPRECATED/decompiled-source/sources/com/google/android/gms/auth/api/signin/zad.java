package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zad.class */
public final class zad implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
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
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    arrayList = SafeParcelReader.m14471s(parcel, B, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.m14476n(parcel, B, Account.CREATOR);
                    break;
                case 4:
                    z = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 5:
                    z2 = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 6:
                    z3 = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 7:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 8:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.m14471s(parcel, B, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case 10:
                    str3 = SafeParcelReader.m14475o(parcel, B);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new GoogleSignInOptions(i, arrayList, account, z, z2, z3, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
