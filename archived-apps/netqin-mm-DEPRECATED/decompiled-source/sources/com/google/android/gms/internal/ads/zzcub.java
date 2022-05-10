package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.zzb;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C4148vo;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcub.class */
public final class zzcub implements zzcti<zzboq, zzdpa, zzcuu> {

    /* renamed from: a */
    public final Context f26529a;

    /* renamed from: b */
    public final zzbbx f26530b;

    /* renamed from: c */
    public final zzbpm f26531c;

    /* renamed from: d */
    public final Executor f26532d;

    public zzcub(Context context, zzbbx zzbbxVar, zzbpm zzbpmVar, Executor executor) {
        this.f26529a = context;
        this.f26530b = zzbbxVar;
        this.f26531c = zzbpmVar;
        this.f26532d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzboq mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos, zzcwn {
        zzbpm zzbpmVar = this.f26531c;
        zzbre zzbreVar = new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a);
        View c = zzctcVar.f26497b.m13354c();
        zzdpa zzdpaVar = zzctcVar.f26497b;
        zzdpaVar.getClass();
        zzbop a = zzbpmVar.mo15206a(zzbreVar, new zzbot(c, null, C4148vo.m26187a(zzdpaVar), zzdnvVar.f27604t.get(0)));
        a.mo15230j().m14866a(zzctcVar.f26497b.m13354c());
        a.mo15163a().m14939a((zzbvb) new zzbmf(zzctcVar.f26497b), this.f26532d);
        zzctcVar.f26498c.m13836a((zzanh) a.mo15158f());
        return a.mo15231i();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos {
        zzvn zzvnVar = zzdogVar.f27633a.f27632a.f27643e;
        zzvn zzvnVar2 = zzvnVar.f29048n ? new zzvn(this.f26529a, zzb.m17891a(zzvnVar.f29039e, zzvnVar.f29036b)) : zzdoq.m13403a(this.f26529a, zzdnvVar.f27604t);
        if (this.f26530b.f24761c < 4100000) {
            zzctcVar.f26497b.m13361a(this.f26529a, zzvnVar2, zzdogVar.f27633a.f27632a.f27642d, zzdnvVar.f27605u.toString(), zzctcVar.f26498c);
        } else {
            zzctcVar.f26497b.m13360a(this.f26529a, zzvnVar2, zzdogVar.f27633a.f27632a.f27642d, zzdnvVar.f27605u.toString(), zzbao.m15960a((zzbat) zzdnvVar.f27602r), zzctcVar.f26498c);
        }
    }
}
