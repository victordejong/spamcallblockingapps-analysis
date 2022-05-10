package com.google.android.gms.internal.clearcut;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.clearcut.zze;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzo.class */
public final class zzo extends zza implements zzn {
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.clearcut.internal.IClearcutLoggerService");
    }

    @Override // com.google.android.gms.internal.clearcut.zzn
    /* renamed from: a */
    public final void mo10542a(zzl zzlVar, zze zzeVar) throws RemoteException {
        Parcel W = m10875W();
        zzc.m10735a(W, zzlVar);
        zzc.m10733a(W, zzeVar);
        m10874a(1, W);
    }
}
