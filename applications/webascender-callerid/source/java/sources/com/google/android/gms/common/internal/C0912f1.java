package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.f1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f1.class */
public final class C0912f1 implements Parcelable.Creator<g1> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ g1 createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        int i = 0;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new g1(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ g1[] newArray(int i) {
        return new g1[i];
    }
}
