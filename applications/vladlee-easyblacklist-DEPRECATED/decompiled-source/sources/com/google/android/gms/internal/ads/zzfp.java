package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfp.class */
public final class zzfp extends zzfw {

    /* renamed from: d */
    private static volatile Long f14780d;

    /* renamed from: e */
    private static final Object f14781e = new Object();

    public zzfp(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (f14780d == null) {
            synchronized (f14781e) {
                if (f14780d == null) {
                    f14780d = (Long) this.f14796c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14795b) {
            this.f14795b.zzaz(f14780d.longValue());
        }
    }
}
