package com.google.android.gms.gcm;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
@ShowFirstParty
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/gcm/PendingCallback.class */
public class PendingCallback implements Parcelable, ReflectedParcelable {
    public static final Parcelable.Creator<PendingCallback> CREATOR = new zzj();

    /* renamed from: f */
    final IBinder f7737f;

    public PendingCallback(Parcel parcel) {
        this.f7737f = parcel.readStrongBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.f7737f);
    }
}
