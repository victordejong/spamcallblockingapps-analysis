package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.measurement.cd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cd.class */
public final class C1304cd implements Parcelable.Creator<bd> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bd createFromParcel(Parcel parcel) {
        int m3276y = SafeParcelReader.m3276y(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        boolean z = false;
        while (parcel.dataPosition() < m3276y) {
            int m3283r = SafeParcelReader.m3283r(parcel);
            switch (SafeParcelReader.m3291j(m3283r)) {
                case 1:
                    c = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 2:
                    c2 = SafeParcelReader.m3280u(parcel, m3283r);
                    break;
                case 3:
                    z = SafeParcelReader.m3290k(parcel, m3283r);
                    break;
                case 4:
                    str = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 5:
                    str2 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 6:
                    str3 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                case 7:
                    bundle = SafeParcelReader.m3300a(parcel, m3283r);
                    break;
                case 8:
                    str4 = SafeParcelReader.m3297d(parcel, m3283r);
                    break;
                default:
                    SafeParcelReader.m3277x(parcel, m3283r);
                    break;
            }
        }
        SafeParcelReader.m3292i(parcel, m3276y);
        return new bd(c, c2, z, str, str2, str3, bundle, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ bd[] newArray(int i) {
        return new bd[i];
    }
}
