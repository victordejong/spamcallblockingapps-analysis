package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmr.class */
public final class zzbmr implements zzeoy<zzbms> {

    /* renamed from: a */
    public final zzeph<Context> f25189a;

    /* renamed from: b */
    public final zzeph<zzqo> f25190b;

    public zzbmr(zzeph<Context> zzephVar, zzeph<zzqo> zzephVar2) {
        this.f25189a = zzephVar;
        this.f25190b = zzephVar2;
    }

    /* renamed from: a */
    public static zzbmr m15310a(zzeph<Context> zzephVar, zzeph<zzqo> zzephVar2) {
        return new zzbmr(zzephVar, zzephVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbms(this.f25189a.get(), this.f25190b.get());
    }
}
