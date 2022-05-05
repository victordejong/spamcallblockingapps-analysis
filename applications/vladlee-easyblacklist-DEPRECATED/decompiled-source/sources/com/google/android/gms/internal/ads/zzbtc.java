package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtc.class */
public final class zzbtc implements zzbsz {

    /* renamed from: a */
    private final List<String> f12376a;

    /* renamed from: b */
    private final zzdda f12377b;

    /* renamed from: c */
    private boolean f12378c;

    public zzbtc(zzczl zzczlVar, zzdda zzddaVar) {
        this.f12376a = zzczlVar.zzdkm;
        this.f12377b = zzddaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsz
    public final void zzaia() {
        if (!this.f12378c) {
            this.f12377b.zzg(this.f12376a);
            this.f12378c = true;
        }
    }
}
