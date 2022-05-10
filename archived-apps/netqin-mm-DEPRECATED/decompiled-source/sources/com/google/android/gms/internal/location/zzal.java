package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzal.class */
public final class zzal extends zza implements zzaj {
    public zzal(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzaj
    /* renamed from: a */
    public final void mo10505a(zzad zzadVar) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10484a(W, zzadVar);
        m10506c(1, W);
    }
}
