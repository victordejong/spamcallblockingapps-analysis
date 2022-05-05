package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfq.class */
public final class zzfq extends zzfw {

    /* renamed from: d */
    private final zzer f14782d;

    /* renamed from: e */
    private long f14783e;

    public zzfq(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2, zzer zzerVar) {
        super(zzeiVar, str, str2, zzbVar, i, 53);
        this.f14782d = zzerVar;
        if (zzerVar != null) {
            this.f14783e = zzerVar.zzcl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (this.f14782d != null) {
            this.f14795b.zzbl(((Long) this.f14796c.invoke(null, Long.valueOf(this.f14783e))).longValue());
        }
    }
}
