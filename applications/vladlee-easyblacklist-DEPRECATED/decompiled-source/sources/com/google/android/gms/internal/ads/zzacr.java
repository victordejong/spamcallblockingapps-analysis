package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacr.class */
public final class zzacr extends zzgc implements zzacp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void unregisterNativeAd() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void zza(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void zze(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(3, a);
    }
}
