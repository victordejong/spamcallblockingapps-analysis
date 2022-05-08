package com.google.android.gms.internal.ads;

import androidx.p026b.C0529a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyc.class */
public final class zzbyc implements zzbpe {

    /* renamed from: a */
    private final zzbws f12687a;

    /* renamed from: b */
    private final zzbww f12688b;

    public zzbyc(zzbws zzbwsVar, zzbww zzbwwVar) {
        this.f12687a = zzbwsVar;
        this.f12688b = zzbwwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        if (this.f12687a.zzajh() != null) {
            zzbdi zzajg = this.f12687a.zzajg();
            zzbdi zzajf = this.f12687a.zzajf();
            if (zzajg == null) {
                zzajg = zzajf != null ? zzajf : null;
            }
            if (this.f12688b.zzaiw() && zzajg != null) {
                zzajg.zza("onSdkImpression", new C0529a());
            }
        }
    }
}
