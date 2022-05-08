package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzez.class */
public final class zzez extends zzfw {
    public zzez(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2) {
        super(zzeiVar, str, str2, zzbVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        this.f14795b.zzam(-1L);
        this.f14795b.zzan(-1L);
        int[] iArr = (int[]) this.f14796c.invoke(null, this.f14794a.getContext());
        synchronized (this.f14795b) {
            this.f14795b.zzam(iArr[0]);
            this.f14795b.zzan(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f14795b.zzbm(iArr[2]);
            }
        }
    }
}
