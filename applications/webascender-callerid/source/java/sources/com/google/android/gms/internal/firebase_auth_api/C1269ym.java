package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.firebase-auth-api.nn;
import com.google.firebase.auth.i0;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.ym */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/ym.class */
public final class C1269ym implements Parcelable.Creator<xm> {
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ xm createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        nn nnVar = null;
        String str5 = null;
        String str6 = null;
        i0 i0Var = null;
        ArrayList arrayList = null;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 2:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 3:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 4:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 5:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 6:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 7:
                    nnVar = (nn) SafeParcelReader.m3298c(parcel, m3283r, nn.CREATOR);
                    break;
                case 8:
                    str5 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 9:
                    str6 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 10:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 11:
                    c2 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 12:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 13:
                    i0Var = (i0) SafeParcelReader.m3298c(parcel, m3283r, i0.CREATOR);
                    break;
                case 14:
                    arrayList = SafeParcelReader.m3293h(parcel, m3283r, in.CREATOR);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new xm(str, str2, z, str3, str4, nnVar, str5, str6, c, c2, z2, i0Var, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ xm[] newArray(int i) {
        return new xm[i];
    }
}
