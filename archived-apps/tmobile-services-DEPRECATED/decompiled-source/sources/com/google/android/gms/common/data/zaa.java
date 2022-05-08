package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/data/zaa.class */
public final class zaa implements Parcelable.Creator<BitmapTeleporter> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BitmapTeleporter createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        int i = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i2 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m14476n(parcel, B, ParcelFileDescriptor.CREATOR);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                i2 = SafeParcelReader.m14498D(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new BitmapTeleporter(i, parcelFileDescriptor, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BitmapTeleporter[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}
