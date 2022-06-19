package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/r.class */
public final class C1431r implements Parcelable.Creator<LocationRequest> {
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 61056;
        char c2 = 10176;
        char c3 = 65535;
        char c4 = 0;
        int i = 102;
        boolean z = false;
        int i2 = Integer.MAX_VALUE;
        float f = 0.0f;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    i = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 2:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 3:
                    c2 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 4:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 5:
                    c3 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 6:
                    i2 = SafeParcelReader.m3281t(parcel, m3283r);
                    break;
                case 7:
                    f = SafeParcelReader.m3285p(parcel, m3283r);
                    break;
                case 8:
                    c4 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new LocationRequest(i, c, c2, z, c3, i2, f, c4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest[] newArray(int i) {
        return new LocationRequest[i];
    }
}
