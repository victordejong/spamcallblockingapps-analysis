package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzq.class */
final class zzq implements Parcelable.Creator<MessengerCompat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MessengerCompat createFromParcel(Parcel parcel) {
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder != null) {
            return new MessengerCompat(readStrongBinder);
        }
        return null;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ MessengerCompat[] newArray(int i) {
        return new MessengerCompat[i];
    }
}
