package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdih.class */
public final class zzdih implements zzeoy<zzdif> {

    /* renamed from: a */
    public final zzeph<zztg> f27372a;

    /* renamed from: b */
    public final zzeph<zzdzb> f27373b;

    /* renamed from: c */
    public final zzeph<Context> f27374c;

    public zzdih(zzeph<zztg> zzephVar, zzeph<zzdzb> zzephVar2, zzeph<Context> zzephVar3) {
        this.f27372a = zzephVar;
        this.f27373b = zzephVar2;
        this.f27374c = zzephVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdif(this.f27372a.get(), this.f27373b.get(), this.f27374c.get());
    }
}
