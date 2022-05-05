package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* renamed from: com.google.android.gms.internal.ads.jl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jl.class */
final class C1982jl implements zzo {

    /* renamed from: a */
    private zzbdi f8740a;

    /* renamed from: b */
    private zzo f8741b;

    public C1982jl(zzbdi zzbdiVar, zzo zzoVar) {
        this.f8740a = zzbdiVar;
        this.f8741b = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        this.f8741b.zzte();
        this.f8740a.zzzt();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        this.f8741b.zztf();
        this.f8740a.zztr();
    }
}
