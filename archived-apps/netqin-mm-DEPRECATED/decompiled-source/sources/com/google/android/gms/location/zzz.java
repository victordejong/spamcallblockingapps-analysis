package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.location.zza;
import com.google.android.gms.internal.location.zzc;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzz.class */
public final class zzz extends zza implements zzx {
    public zzz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.ILocationListener");
    }

    @Override // com.google.android.gms.location.zzx
    public final void onLocationChanged(Location location) throws RemoteException {
        Parcel W = m10509W();
        zzc.m10484a(W, location);
        m10506c(1, W);
    }
}
