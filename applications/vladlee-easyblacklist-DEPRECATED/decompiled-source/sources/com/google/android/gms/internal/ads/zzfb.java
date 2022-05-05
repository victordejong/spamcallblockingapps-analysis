package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfb.class */
public final class zzfb extends zzfw {

    /* renamed from: d */
    private long f14767d;

    public zzfb(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, long j, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 25);
        this.f14767d = j;
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        long longValue = ((Long) this.f14796c.invoke(null, new Object[0])).longValue();
        synchronized (this.f14795b) {
            this.f14795b.zzbr(longValue);
            if (this.f14767d != 0) {
                this.f14795b.zzat(longValue - this.f14767d);
                this.f14795b.zzaw(this.f14767d);
            }
        }
    }
}
