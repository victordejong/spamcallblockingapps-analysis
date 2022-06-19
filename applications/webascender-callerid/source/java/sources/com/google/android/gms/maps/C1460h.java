package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
/* renamed from: com.google.android.gms.maps.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/h.class */
public final class C1460h implements Parcelable.Creator<GoogleMapOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        CameraPosition cameraPosition = null;
        Float f = null;
        Float f2 = null;
        LatLngBounds latLngBounds = null;
        int i = 0;
        byte b = -1;
        byte b2 = -1;
        byte b3 = -1;
        byte b4 = -1;
        byte b5 = -1;
        byte b6 = -1;
        byte b7 = -1;
        byte b8 = -1;
        byte b9 = -1;
        byte b10 = -1;
        byte b11 = -1;
        byte b12 = -1;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 2:
                    b12 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 3:
                    b11 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 4:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 5:
                    cameraPosition = (CameraPosition) SafeParcelReader.m3298c(parcel, m3283r, CameraPosition.CREATOR);
                    break;
                case 6:
                    b10 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 7:
                    b9 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 8:
                    b8 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 9:
                    b7 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 10:
                    b6 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 11:
                    b5 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 12:
                    b4 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 13:
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
                case 14:
                    b3 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 15:
                    b2 = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
                case 16:
                    f = SafeParcelReader.m3284q(parcel, m3283r);
                    break;
                case 17:
                    f2 = SafeParcelReader.m3284q(parcel, m3283r);
                    break;
                case 18:
                    latLngBounds = (LatLngBounds) SafeParcelReader.m3298c(parcel, m3283r, LatLngBounds.CREATOR);
                    break;
                case 19:
                    b = SafeParcelReader.m3288m(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new GoogleMapOptions(b12, b11, i, cameraPosition, b10, b9, b8, b7, b6, b5, b4, b3, b2, f, f2, latLngBounds, b);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleMapOptions[] newArray(int i) {
        return new GoogleMapOptions[i];
    }
}
