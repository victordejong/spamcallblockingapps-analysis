package com.google.android.gms.internal.ads;

import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.kk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kk.class */
final class C2008kk implements zzczd {

    /* renamed from: a */
    private zzdxp<Context> f9819a;

    /* renamed from: b */
    private zzdxp<zzcxt<zzcbi, zzcbb>> f9820b;

    /* renamed from: c */
    private zzdxp<zzcxz> f9821c;

    /* renamed from: d */
    private zzdxp<zzczs> f9822d;

    /* renamed from: e */
    private zzdxp<zzcyt> f9823e;

    /* renamed from: f */
    private zzdxp<zzczf> f9824f;

    /* renamed from: g */
    private zzdxp<String> f9825g;

    /* renamed from: h */
    private zzdxp<zzcyz> f9826h;

    /* renamed from: i */
    private final /* synthetic */ zzbgr f9827i;

    private C2008kk(zzbgr zzbgrVar, Context context, String str) {
        zzdxp zzdxpVar;
        zzdxp zzdxpVar2;
        zzdxp zzdxpVar3;
        zzdxp zzdxpVar4;
        zzdxp zzdxpVar5;
        this.f9827i = zzbgrVar;
        this.f9819a = zzdxf.zzbe(context);
        zzdxp<Context> zzdxpVar6 = this.f9819a;
        zzdxpVar = this.f9827i.f11856P;
        zzdxpVar2 = this.f9827i.f11857Q;
        this.f9820b = new zzcxx(zzdxpVar6, zzdxpVar, zzdxpVar2);
        zzdxpVar3 = this.f9827i.f11856P;
        this.f9821c = zzdxd.zzan(new zzcyr(zzdxpVar3));
        this.f9822d = zzdxd.zzan(zzczv.zzaop());
        zzdxp<Context> zzdxpVar7 = this.f9819a;
        zzdxpVar4 = this.f9827i.f11860b;
        zzdxpVar5 = this.f9827i.f11879u;
        this.f9823e = zzdxd.zzan(new zzcyw(zzdxpVar7, zzdxpVar4, zzdxpVar5, this.f9820b, this.f9821c, zzczz.zzaot(), this.f9822d));
        this.f9824f = zzdxd.zzan(new zzczg(this.f9823e, this.f9821c, this.f9822d));
        this.f9825g = zzdxf.zzbf(str);
        this.f9826h = zzdxd.zzan(new zzcza(this.f9825g, this.f9823e, this.f9821c, this.f9822d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2008kk(zzbgr zzbgrVar, Context context, String str, byte b) {
        this(zzbgrVar, context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzczd
    public final zzczf zzaep() {
        return this.f9824f.get();
    }

    @Override // com.google.android.gms.internal.ads.zzczd
    public final zzcyz zzaeq() {
        return this.f9826h.get();
    }
}
