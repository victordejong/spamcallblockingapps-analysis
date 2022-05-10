package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgk.class */
public final class zzdgk implements zzeoy<zzdgi> {

    /* renamed from: a */
    public final zzeph<zzdzb> f27292a;

    /* renamed from: b */
    public final zzeph<Context> f27293b;

    /* renamed from: c */
    public final zzeph<zzbbx> f27294c;

    public zzdgk(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2, zzeph<zzbbx> zzephVar3) {
        this.f27292a = zzephVar;
        this.f27293b = zzephVar2;
        this.f27294c = zzephVar3;
    }

    /* renamed from: a */
    public static zzdgk m13609a(zzeph<zzdzb> zzephVar, zzeph<Context> zzephVar2, zzeph<zzbbx> zzephVar3) {
        return new zzdgk(zzephVar, zzephVar2, zzephVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzdgi(this.f27292a.get(), this.f27293b.get(), this.f27294c.get());
    }
}
