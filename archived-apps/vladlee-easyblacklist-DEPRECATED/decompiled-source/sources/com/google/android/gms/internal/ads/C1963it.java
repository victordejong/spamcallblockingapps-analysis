package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzo;
/* renamed from: com.google.android.gms.internal.ads.it */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/it.class */
final class C1963it implements zzo {

    /* renamed from: a */
    private zzbdi f8646a;

    /* renamed from: b */
    private zzo f8647b;

    public C1963it(zzbdi zzbdiVar, zzo zzoVar) {
        this.f8646a = zzbdiVar;
        this.f8647b = zzoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        this.f8647b.zzte();
        this.f8646a.zzzt();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        this.f8647b.zztf();
        this.f8646a.zztr();
    }
}
