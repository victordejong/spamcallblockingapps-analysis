package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/s.class */
public final class C1585s implements Parcelable.Creator<r> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ r createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 2) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                bundle = SafeParcelReader.m3300a(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new r(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ r[] newArray(int i) {
        return new r[i];
    }
}
