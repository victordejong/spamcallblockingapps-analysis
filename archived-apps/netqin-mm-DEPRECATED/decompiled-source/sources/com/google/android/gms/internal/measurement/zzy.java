package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzy.class */
public final class zzy extends zza implements zzw {
    public zzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zzw
    /* renamed from: d */
    public final void mo9452d(Bundle bundle) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        m10479b(1, W);
    }
}
