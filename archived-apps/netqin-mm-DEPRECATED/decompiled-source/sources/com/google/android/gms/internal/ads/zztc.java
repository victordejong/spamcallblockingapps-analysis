package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztc.class */
public final class zztc implements Parcelable.Creator<zzsz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzsz createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m17264a(parcel, a, ParcelFileDescriptor.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzsz(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzsz[] newArray(int i) {
        return new zzsz[i];
    }
}
