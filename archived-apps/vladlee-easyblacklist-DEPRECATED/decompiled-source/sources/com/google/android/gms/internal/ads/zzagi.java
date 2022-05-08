package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagi.class */
public final class zzagi extends zzgc implements zzagf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.zzagf
    public final void zza(zzafz zzafzVar, zzagd zzagdVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzafzVar);
        zzge.zza(a, zzagdVar);
        m3257a(a);
    }
}
