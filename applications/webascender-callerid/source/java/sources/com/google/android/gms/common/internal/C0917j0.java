package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.j0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j0.class */
public final class C0917j0 implements Parcelable.Creator<k0> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ k0 createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        IBinder iBinder = null;
        b bVar = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 2) {
                iBinder = SafeParcelReader.m3282s(parcel, m3283r);
            } else if (m3291j == 3) {
                bVar = (b) SafeParcelReader.m3298c(parcel, m3283r, b.CREATOR);
            } else if (m3291j == 4) {
                z = SafeParcelReader.m3290k(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                z2 = SafeParcelReader.m3290k(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new k0(i, iBinder, bVar, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ k0[] newArray(int i) {
        return new k0[i];
    }
}
