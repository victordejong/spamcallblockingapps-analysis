package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfl.class */
public final class zzfl extends zzfw {

    /* renamed from: d */
    private final boolean f14777d;

    public zzfl(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 61);
        this.f14777d = zzeiVar.zzce();
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        long longValue = ((Long) this.f14796c.invoke(null, this.f14794a.getContext(), Boolean.valueOf(this.f14777d))).longValue();
        synchronized (this.f14795b) {
            this.f14795b.zzbo(longValue);
        }
    }
}
