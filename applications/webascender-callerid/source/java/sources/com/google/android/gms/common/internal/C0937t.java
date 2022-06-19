package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/t.class */
public final class C0937t implements Parcelable.Creator<d> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                str = SafeParcelReader.m3297d(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new d(i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d[] newArray(int i) {
        return new d[i];
    }
}
