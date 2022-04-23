package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbor.class */
public final class zzbor implements zzdxg<zzato> {

    /* renamed from: a */
    private final zzboo f12244a;

    /* renamed from: b */
    private final zzdxp<Context> f12245b;

    /* renamed from: c */
    private final zzdxp<zzazb> f12246c;

    /* renamed from: d */
    private final zzdxp<zzczl> f12247d;

    /* renamed from: e */
    private final zzdxp<zzatq> f12248e;

    private zzbor(zzboo zzbooVar, zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzatq> zzdxpVar4) {
        this.f12244a = zzbooVar;
        this.f12245b = zzdxpVar;
        this.f12246c = zzdxpVar2;
        this.f12247d = zzdxpVar3;
        this.f12248e = zzdxpVar4;
    }

    public static zzbor zza(zzboo zzbooVar, zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzatq> zzdxpVar4) {
        return new zzbor(zzbooVar, zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        Context context = this.f12245b.get();
        zzazb zzazbVar = this.f12246c.get();
        zzczl zzczlVar = this.f12247d.get();
        zzatq zzatqVar = this.f12248e.get();
        if (zzczlVar.zzgls != null) {
            return new zzatf(context, zzazbVar, zzczlVar.zzgls, zzczlVar.zzglo.zzdhr, zzatqVar);
        }
        return null;
    }
}
