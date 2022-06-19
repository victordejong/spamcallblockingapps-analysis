package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/e.class */
public final class C0768e implements Parcelable.Creator<GoogleSignInAccount> {
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
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
        char c = 0;
        int i = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 2:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 4:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 6:
                    uri = (Uri) SafeParcelReader.m3298c(parcel, m3283r, Uri.CREATOR);
                    break;
                case 7:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 8:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 9:
                    str6 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 10:
                    arrayList = SafeParcelReader.m3293h(parcel, m3283r, Scope.CREATOR);
                    break;
                case 11:
                    str7 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 12:
                    str8 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, c, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
