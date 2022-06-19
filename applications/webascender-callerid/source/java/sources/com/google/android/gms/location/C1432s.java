package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/s.class */
public final class C1432s implements Parcelable.Creator<LocationResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        ArrayList arrayList = LocationResult.g;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            if (SafeParcelReader.m3291j(m3283r) != 1) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                arrayList = SafeParcelReader.m3293h(parcel, m3283r, Location.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new LocationResult(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult[] newArray(int i) {
        return new LocationResult[i];
    }
}
