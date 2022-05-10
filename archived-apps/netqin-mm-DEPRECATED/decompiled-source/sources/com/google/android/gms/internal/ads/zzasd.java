package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasd.class */
public final class zzasd implements Parcelable.Creator<zzasa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasa createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                iBinder = SafeParcelReader.m17236z(parcel, a);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                iBinder2 = SafeParcelReader.m17236z(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzasa(iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasa[] newArray(int i) {
        return new zzasa[i];
    }
}
