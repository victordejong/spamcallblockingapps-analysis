package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zab.class */
public final class zab implements Parcelable.Creator<GoogleSignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 4:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 5:
                    str4 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m17264a(parcel, a, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 8:
                    j = SafeParcelReader.m17274B(parcel, a);
                    break;
                case 9:
                    str6 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 10:
                    arrayList = SafeParcelReader.m17259c(parcel, a, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 12:
                    str8 = SafeParcelReader.m17246p(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
