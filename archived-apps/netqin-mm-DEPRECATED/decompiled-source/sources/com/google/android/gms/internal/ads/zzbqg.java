package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqg.class */
public final class zzbqg implements zzeoy<zzbqd> {

    /* renamed from: a */
    public final zzeph<Context> f25362a;

    /* renamed from: b */
    public final zzeph<zzbgj> f25363b;

    /* renamed from: c */
    public final zzeph<zzdnv> f25364c;

    /* renamed from: d */
    public final zzeph<zzbbx> f25365d;

    public zzbqg(zzeph<Context> zzephVar, zzeph<zzbgj> zzephVar2, zzeph<zzdnv> zzephVar3, zzeph<zzbbx> zzephVar4) {
        this.f25362a = zzephVar;
        this.f25363b = zzephVar2;
        this.f25364c = zzephVar3;
        this.f25365d = zzephVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzbqd(this.f25362a.get(), this.f25363b.get(), this.f25364c.get(), this.f25365d.get());
    }
}
