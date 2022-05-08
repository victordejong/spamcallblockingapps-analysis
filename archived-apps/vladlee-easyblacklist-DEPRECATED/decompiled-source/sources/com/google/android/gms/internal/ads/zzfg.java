package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfg.class */
public final class zzfg extends zzfw {

    /* renamed from: d */
    private static volatile Long f14772d;

    /* renamed from: e */
    private static final Object f14773e = new Object();

    public zzfg(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 22);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (f14772d == null) {
            synchronized (f14773e) {
                if (f14772d == null) {
                    f14772d = (Long) this.f14796c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14795b) {
            this.f14795b.zzav(f14772d.longValue());
        }
    }
}
