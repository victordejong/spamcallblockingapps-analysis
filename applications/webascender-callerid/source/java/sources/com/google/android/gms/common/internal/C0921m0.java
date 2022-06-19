package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.m0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m0.class */
public final class C0921m0 implements Parcelable.Creator<n0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ n0 createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        Bundle bundle = null;
        d[] dVarArr = null;
        int i = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                bundle = SafeParcelReader.m3300a(parcel, m3283r);
            } else if (m3291j == 2) {
                dVarArr = (d[]) SafeParcelReader.m3294g(parcel, m3283r, d.CREATOR);
            } else if (m3291j != 3) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new n0(bundle, dVarArr, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ n0[] newArray(int i) {
        return new n0[i];
    }
}
