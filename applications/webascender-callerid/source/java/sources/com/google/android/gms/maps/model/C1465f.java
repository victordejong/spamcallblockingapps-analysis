package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.maps.model.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/model/f.class */
public final class C1465f implements Parcelable.Creator<LatLngBounds> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            int m3291j = SafeParcelReader.m3291j(m3283r);
            if (m3291j == 2) {
                latLng = (LatLng) SafeParcelReader.m3298c(parcel, m3283r, LatLng.CREATOR);
            } else if (m3291j != 3) {
                SafeParcelReader.m3277x(parcel, m3283r);
            } else {
                latLng2 = (LatLng) SafeParcelReader.m3298c(parcel, m3283r, LatLng.CREATOR);
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
