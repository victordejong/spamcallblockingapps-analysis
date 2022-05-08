package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzy.class */
public final class zzy extends zza implements zzw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzw
    public final void zza(Bundle bundle) throws RemoteException {
        Parcel a = m13467a();
        zzb.m13402c(a, bundle);
        m13465c(1, a);
    }
}
