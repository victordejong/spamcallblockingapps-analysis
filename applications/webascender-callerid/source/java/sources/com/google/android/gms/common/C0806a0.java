package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.a0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a0.class */
public final class C0806a0 implements Parcelable.Creator<x> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ x createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        boolean z = false;
        String str = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 2) {
                iBinder = SafeParcelReader.m3282s(parcel, m3283r);
            } else if (m3291j == 3) {
                z = SafeParcelReader.m3290k(parcel, m3283r);
            } else if (m3291j != 4) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                z2 = SafeParcelReader.m3290k(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new x(str, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ x[] newArray(int i) {
        return new x[i];
    }
}
