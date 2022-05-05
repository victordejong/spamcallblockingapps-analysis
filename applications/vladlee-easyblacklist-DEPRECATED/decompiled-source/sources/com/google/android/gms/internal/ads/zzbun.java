package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbun.class */
public final class zzbun implements zzo {

    /* renamed from: a */
    private final zzbqj f12418a;

    /* renamed from: b */
    private final zzbsq f12419b;

    public zzbun(zzbqj zzbqjVar, zzbsq zzbsqVar) {
        this.f12418a = zzbqjVar;
        this.f12419b = zzbsqVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        this.f12418a.onPause();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        this.f12418a.onResume();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        this.f12418a.zzte();
        this.f12419b.onHide();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        this.f12418a.zztf();
        this.f12419b.zzahy();
    }
}
