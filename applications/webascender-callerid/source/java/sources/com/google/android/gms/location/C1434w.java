package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/w.class */
public final class C1434w implements Parcelable.Creator<x> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ x createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = '2';
        char c2 = 65535;
        boolean z = true;
        float f = 0.0f;
        int i = Integer.MAX_VALUE;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                z = SafeParcelReader.m3290k(parcel, m3283r);
            } else if (m3291j == 2) {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            } else if (m3291j == 3) {
                f = SafeParcelReader.m3285p(parcel, m3283r);
            } else if (m3291j == 4) {
                c2 = SafeParcelReader.m3280u(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new x(z, c, f, c2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ x[] newArray(int i) {
        return new x[i];
    }
}
