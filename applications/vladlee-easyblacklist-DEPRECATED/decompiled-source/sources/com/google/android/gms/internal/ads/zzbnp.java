package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnp.class */
public final class zzbnp implements zzdxg<zzbmg> {

    /* renamed from: a */
    private final zzdxp<zzczt> f12192a;

    /* renamed from: b */
    private final zzdxp<zzczl> f12193b;

    /* renamed from: c */
    private final zzdxp<zzbpg> f12194c;

    /* renamed from: d */
    private final zzdxp<zzbpw> f12195d;

    /* renamed from: e */
    private final zzdxp<zzcxq> f12196e;

    /* renamed from: f */
    private final zzdxp<zzbom> f12197f;

    private zzbnp(zzdxp<zzczt> zzdxpVar, zzdxp<zzczl> zzdxpVar2, zzdxp<zzbpg> zzdxpVar3, zzdxp<zzbpw> zzdxpVar4, zzdxp<zzcxq> zzdxpVar5, zzdxp<zzbom> zzdxpVar6) {
        this.f12192a = zzdxpVar;
        this.f12193b = zzdxpVar2;
        this.f12194c = zzdxpVar3;
        this.f12195d = zzdxpVar4;
        this.f12196e = zzdxpVar5;
        this.f12197f = zzdxpVar6;
    }

    public static zzbnp zzb(zzdxp<zzczt> zzdxpVar, zzdxp<zzczl> zzdxpVar2, zzdxp<zzbpg> zzdxpVar3, zzdxp<zzbpw> zzdxpVar4, zzdxp<zzcxq> zzdxpVar5, zzdxp<zzbom> zzdxpVar6) {
        return new zzbnp(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbmg(this.f12192a.get(), this.f12193b.get(), this.f12194c.get(), this.f12195d.get(), this.f12196e.get(), this.f12197f.get());
    }
}
