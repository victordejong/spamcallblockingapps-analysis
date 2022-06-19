package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/p.class */
public final class C0952p implements Parcelable.Creator<d> {
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        String str = null;
        int i = 0;
        char c = 65535;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            } else if (m3291j == 2) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j != 3) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new d(str, i, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d[] newArray(int i) {
        return new d[i];
    }
}
