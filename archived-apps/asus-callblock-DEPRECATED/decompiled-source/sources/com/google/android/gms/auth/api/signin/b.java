package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/b.class */
public final class b implements Parcelable.Creator<GoogleSignInOptions> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(GoogleSignInOptions googleSignInOptions, Parcel parcel, int i) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20293);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 1, googleSignInOptions.e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, googleSignInOptions.a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, googleSignInOptions.f, i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, googleSignInOptions.g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, googleSignInOptions.h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, googleSignInOptions.i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, googleSignInOptions.j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, googleSignInOptions.k);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int a2 = a.a(parcel);
        String str = null;
        String str2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch (65535 & readInt) {
                case 1:
                    i = a.d(parcel, readInt);
                    break;
                case 2:
                    arrayList = a.c(parcel, readInt, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) a.a(parcel, readInt, Account.CREATOR);
                    break;
                case 4:
                    z3 = a.c(parcel, readInt);
                    break;
                case 5:
                    z2 = a.c(parcel, readInt);
                    break;
                case 6:
                    z = a.c(parcel, readInt);
                    break;
                case 7:
                    str2 = a.k(parcel, readInt);
                    break;
                case 8:
                    str = a.k(parcel, readInt);
                    break;
                default:
                    a.b(parcel, readInt);
                    break;
            }
        }
        if (parcel.dataPosition() == a2) {
            return new GoogleSignInOptions(i, arrayList, account, z3, z2, z, str2, str);
        }
        throw new a.C0116a(new StringBuilder(37).append("Overread allowed size end=").append(a2).toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
