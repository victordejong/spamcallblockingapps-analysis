package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/v.class */
public final class C1433v implements Parcelable.Creator<u> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ u createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 65535;
        char c2 = 65535;
        int i = 1;
        int i2 = 1;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 2) {
                i2 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 3) {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            } else if (m3291j != 4) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                c2 = SafeParcelReader.m3280u(parcel, m3283r);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new u(i, i2, c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ u[] newArray(int i) {
        return new u[i];
    }
}
