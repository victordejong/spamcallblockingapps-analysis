package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcx.class */
public final class zzbcx extends zzbcn {
    public zzbcx(zzbaz zzbazVar) {
        super(zzbazVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final void abort() {
    }

    @Override // com.google.android.gms.internal.ads.zzbcn
    public final boolean zzfi(String str) {
        zzbaz zzbazVar = this.f11714c.get();
        if (zzbazVar != null) {
            zzbazVar.zza(mo4122a(str), this);
        }
        zzavs.zzez("VideoStreamNoopCache is doing nothing.");
        zza(str, mo4122a(str), "noop", "Noop cache is a noop.");
        return false;
    }
}
