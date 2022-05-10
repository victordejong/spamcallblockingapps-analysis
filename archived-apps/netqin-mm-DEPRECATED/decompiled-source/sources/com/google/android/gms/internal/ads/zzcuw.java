package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcbg;
import com.google.android.gms.internal.ads.zzckj;
import com.google.android.gms.internal.ads.zzcuw;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3702jp;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3590gp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuw.class */
public final class zzcuw implements zzcta<zzcbe> {

    /* renamed from: a */
    public final Context f26571a;

    /* renamed from: b */
    public final zzcjt f26572b;

    /* renamed from: c */
    public final zzcce f26573c;

    /* renamed from: d */
    public final zzdok f26574d;

    /* renamed from: e */
    public final Executor f26575e;

    /* renamed from: f */
    public final zzbbx f26576f;

    public zzcuw(Context context, zzbbx zzbbxVar, zzdok zzdokVar, Executor executor, zzcce zzcceVar, zzcjt zzcjtVar) {
        this.f26571a = context;
        this.f26574d = zzdokVar;
        this.f26573c = zzcceVar;
        this.f26575e = executor;
        this.f26576f = zzbbxVar;
        this.f26572b = zzcjtVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13834a(final zzdnv zzdnvVar, zzdog zzdogVar, zzckj zzckjVar, Object obj) throws Exception {
        zzdzc<?> zzdzcVar;
        final zzbgj a = this.f26572b.m14128a(this.f26574d.f27643e, zzdnvVar, zzdogVar.f27634b.f27630b, zzdnvVar.f27573T);
        a.mo15561f(zzdnvVar.f27570Q);
        zzckjVar.m14114a(this.f26571a, a.getView());
        zzbcg zzbcgVar = new zzbcg();
        final zzcbg a2 = this.f26573c.mo14814a(new zzbre(zzdogVar, zzdnvVar, null), new zzcbf(new C3702jp(this.f26571a, this.f26576f, zzbcgVar, zzdnvVar, a), a));
        zzbcgVar.m15835a((zzbcg) a2);
        a2.mo15160d().m14939a(new zzbuz(a) { // from class: c.d.b.d.g.a.fp

            /* renamed from: a */
            public final zzbgj f12989a;

            {
                this.f12989a = a;
            }

            @Override // com.google.android.gms.internal.ads.zzbuz
            /* renamed from: M */
            public final void mo13728M() {
                zzbgj zzbgjVar = this.f12989a;
                if (zzbgjVar.mo15543z() != null) {
                    zzbgjVar.mo15543z().mo15475e();
                }
            }
        }, zzbbz.f24769f);
        a2.mo14841h().m14122a(a, true);
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23860n3)).booleanValue() || !zzdnvVar.f27573T) {
            a2.mo14841h();
            zzdny zzdnyVar = zzdnvVar.f27602r;
            zzdzcVar = zzcjv.m14123a(a, zzdnyVar.f27620b, zzdnyVar.f27619a);
        } else {
            zzdzcVar = zzdyq.m12988a((Object) null);
        }
        return zzdyq.m12993a(zzdzcVar, new zzdvu(this, a, zzdnvVar, a2) { // from class: c.d.b.d.g.a.ip

            /* renamed from: a */
            public final zzbgj f13556a;

            /* renamed from: b */
            public final zzdnv f13557b;

            /* renamed from: c */
            public final zzcbg f13558c;

            {
                this.f13556a = a;
                this.f13557b = zzdnvVar;
                this.f13558c = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj2) {
                zzbgj zzbgjVar = this.f13556a;
                zzdnv zzdnvVar2 = this.f13557b;
                zzcbg zzcbgVar = this.f13558c;
                if (zzdnvVar2.f27561H) {
                    zzbgjVar.mo15606C();
                }
                zzbgjVar.mo15603F();
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23827i0)).booleanValue()) {
                    zzp.m17967e();
                    zzazd.m16046a(zzbgjVar);
                }
                return zzcbgVar.mo14839j();
            }
        }, this.f26575e);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return (zzdnyVar == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzcbe> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        final zzckj zzckjVar = new zzckj();
        zzdzc<zzcbe> a = zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, zzdnvVar, zzdogVar, zzckjVar) { // from class: c.d.b.d.g.a.ep

            /* renamed from: a */
            public final zzcuw f12850a;

            /* renamed from: b */
            public final zzdnv f12851b;

            /* renamed from: c */
            public final zzdog f12852c;

            /* renamed from: d */
            public final zzckj f12853d;

            {
                this.f12850a = this;
                this.f12851b = zzdnvVar;
                this.f12852c = zzdogVar;
                this.f12853d = zzckjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12850a.m13834a(this.f12851b, this.f12852c, this.f12853d, obj);
            }
        }, this.f26575e);
        zzckjVar.getClass();
        a.mo12976a(RunnableC3590gp.m26936a(zzckjVar), this.f26575e);
        return a;
    }
}
