package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfc.class */
public final class zzfc extends zzfw {

    /* renamed from: d */
    private static volatile Long f14768d;

    /* renamed from: e */
    private static final Object f14769e = new Object();

    public zzfc(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (f14768d == null) {
            synchronized (f14769e) {
                if (f14768d == null) {
                    f14768d = (Long) this.f14796c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14795b) {
            this.f14795b.zzbh(f14768d.longValue());
        }
    }
}
