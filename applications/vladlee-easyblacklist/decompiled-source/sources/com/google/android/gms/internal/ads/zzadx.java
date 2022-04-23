package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadx.class */
public final class zzadx extends zzgc implements zzadv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzadv
    public final void zza(zzaeg zzaegVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaegVar);
        m3256b(1, a);
    }
}
