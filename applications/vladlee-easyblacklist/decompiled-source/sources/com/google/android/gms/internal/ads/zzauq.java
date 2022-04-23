package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauq.class */
public final class zzauq extends zzgc implements zzauo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzauq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zza(IObjectWrapper iObjectWrapper, zzauu zzauuVar, zzaun zzaunVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzauuVar);
        zzge.zza(a, zzaunVar);
        m3256b(1, a);
    }
}
