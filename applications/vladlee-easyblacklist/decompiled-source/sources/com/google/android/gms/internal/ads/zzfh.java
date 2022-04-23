package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfh.class */
public final class zzfh extends zzfw {

    /* renamed from: d */
    private static volatile String f14774d;

    /* renamed from: e */
    private static final Object f14775e = new Object();

    public zzfh(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        this.f14795b.zzaf("E");
        if (f14774d == null) {
            synchronized (f14775e) {
                if (f14774d == null) {
                    f14774d = (String) this.f14796c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f14795b) {
            this.f14795b.zzaf(f14774d);
        }
    }
}
