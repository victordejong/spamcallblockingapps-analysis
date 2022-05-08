package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxp.class */
public final class zzcxp {
    public static <T> void zza(AtomicReference<T> atomicReference, zzcxo<T> zzcxoVar) {
        T t = atomicReference.get();
        if (t != null) {
            try {
                zzcxoVar.zzt(t);
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
