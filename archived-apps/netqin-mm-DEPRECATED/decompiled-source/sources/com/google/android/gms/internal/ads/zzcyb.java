package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzabr;
import com.google.android.gms.internal.ads.zzcyb;
import p131c.p161d.p170b.p224d.p252g.p253a.C4002rq;
import p131c.p161d.p170b.p224d.p252g.p253a.C4039sq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyb.class */
public final class zzcyb implements zzcta<zzboq> {

    /* renamed from: a */
    public final Context f26735a;

    /* renamed from: b */
    public final zzbpm f26736b;

    /* renamed from: c */
    public final zzaby f26737c;

    /* renamed from: d */
    public final zzdzb f26738d;

    /* renamed from: e */
    public final zzdsi f26739e;

    public zzcyb(Context context, zzbpm zzbpmVar, zzdsi zzdsiVar, zzdzb zzdzbVar, zzaby zzabyVar) {
        this.f26735a = context;
        this.f26736b = zzbpmVar;
        this.f26739e = zzdsiVar;
        this.f26738d = zzdzbVar;
        this.f26737c = zzabyVar;
    }

    /* renamed from: a */
    public final /* synthetic */ void m13797a(zzabr zzabrVar) throws Exception {
        this.f26737c.mo16874a(zzabrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar;
        return (this.f26737c == null || (zzdnyVar = zzdnvVar.f27602r) == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzboq> mo13769b(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzbop a = this.f26736b.mo15206a(new zzbre(zzdogVar, zzdnvVar, null), new C4039sq(this, new View(this.f26735a), null, C4002rq.f15040a, zzdnvVar.f27604t.get(0)));
        zzcyf k = a.mo15229k();
        zzdny zzdnyVar = zzdnvVar.f27602r;
        final zzabr zzabrVar = new zzabr(k, zzdnyVar.f27620b, zzdnyVar.f27619a);
        return this.f26739e.m13273a((zzdsi) zzdsf.CUSTOM_RENDER_SYN).m13267a(new zzdrs(this, zzabrVar) { // from class: c.d.b.d.g.a.qq

            /* renamed from: a */
            public final zzcyb f14835a;

            /* renamed from: b */
            public final zzabr f14836b;

            {
                this.f14835a = this;
                this.f14836b = zzabrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdrs
            public final void run() {
                this.f14835a.m13797a(this.f14836b);
            }
        }, this.f26738d).m13255a((zzdsa<?>) zzdsf.CUSTOM_RENDER_ACK).m13258a((zzdzc) zzdyq.m12988a(a.mo15231i())).m13263a();
    }
}
