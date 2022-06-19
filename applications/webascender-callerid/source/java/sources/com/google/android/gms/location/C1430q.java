package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/q.class */
public final class C1430q implements Parcelable.Creator<LocationAvailability> {
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 0;
        u[] uVarArr = null;
        int i = 1000;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 1) {
                i2 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 2) {
                i3 = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j == 3) {
                c = SafeParcelReader.m3280u(parcel, m3283r);
            } else if (m3291j == 4) {
                i = SafeParcelReader.m3281t(parcel, m3283r);
            } else if (m3291j != 5) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                uVarArr = (u[]) SafeParcelReader.m3294g(parcel, m3283r, u.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new LocationAvailability(i, i2, i3, c, uVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
