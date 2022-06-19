package com.google.android.gms.internal.firebase_auth_api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.firebase.auth.i0;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.mg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/mg.class */
public final class C1148mg implements Parcelable.Creator<lg> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ lg createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        ArrayList arrayList = null;
        i0 i0Var = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 2) {
                arrayList = SafeParcelReader.m3293h(parcel, m3283r, in.CREATOR);
            } else if (m3291j != 3) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                i0Var = (i0) SafeParcelReader.m3298c(parcel, m3283r, i0.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new lg(str, arrayList, i0Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ lg[] newArray(int i) {
        return new lg[i];
    }
}
