package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.maps.model.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/maps/model/h.class */
public final class C1467h implements Parcelable.Creator<d> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        IBinder iBinder = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        float f3 = 0.0f;
        float f4 = 0.5f;
        float f5 = 0.0f;
        float f6 = 1.0f;
        float f7 = 0.0f;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 2:
                    latLng = (LatLng) SafeParcelReader.m3298c(parcel, m3283r, LatLng.CREATOR);
                    break;
                case 3:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 4:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    iBinder = SafeParcelReader.m3282s(parcel, m3283r);
                    break;
                case 6:
                    f = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 7:
                    f2 = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 8:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 9:
                    z2 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 10:
                    z3 = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 11:
                    f3 = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 12:
                    f4 = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 13:
                    f5 = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 14:
                    f6 = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 15:
                    f7 = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new d(latLng, str, str2, iBinder, f, f2, z, z2, z3, f3, f4, f5, f6, f7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ d[] newArray(int i) {
        return new d[i];
    }
}
