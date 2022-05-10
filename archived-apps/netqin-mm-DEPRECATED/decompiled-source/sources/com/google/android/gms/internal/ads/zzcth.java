package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzazd;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzckj;
import com.google.android.gms.internal.ads.zzcth;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.C3775lo;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3626ho;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcth.class */
public final class zzcth implements zzcta<zzboh> {

    /* renamed from: a */
    public final zzbob f26502a;

    /* renamed from: b */
    public final Context f26503b;

    /* renamed from: c */
    public final zzcjt f26504c;

    /* renamed from: d */
    public final zzdok f26505d;

    /* renamed from: e */
    public final Executor f26506e;

    /* renamed from: f */
    public final zzbbx f26507f;

    public zzcth(zzbob zzbobVar, Context context, Executor executor, zzcjt zzcjtVar, zzdok zzdokVar, zzbbx zzbbxVar) {
        this.f26503b = context;
        this.f26502a = zzbobVar;
        this.f26506e = executor;
        this.f26504c = zzcjtVar;
        this.f26505d = zzdokVar;
        this.f26507f = zzbbxVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13863a(final zzdnv zzdnvVar, zzdog zzdogVar, zzckj zzckjVar, Object obj) throws Exception {
        zzdzc<?> zzdzcVar;
        zzdoq.m13403a(this.f26503b, zzdnvVar.f27604t);
        final zzbgj a = this.f26504c.m14128a(this.f26505d.f27643e, zzdnvVar, zzdogVar.f27634b.f27630b, zzdnvVar.f27573T);
        a.mo15561f(zzdnvVar.f27570Q);
        zzckjVar.m14114a(this.f26503b, a.getView());
        zzbcg zzbcgVar = new zzbcg();
        final zzbnx a2 = this.f26502a.mo15246a(new zzbre(zzdogVar, zzdnvVar, null), new zzcbf(new C3775lo(this.f26503b, this.f26507f, zzbcgVar, zzdnvVar, a, this.f26505d), a), new zzboa(a.getView(), a, zzdnvVar.f27575V, zzdnvVar.f27579Z, zzdnvVar.f27563J));
        a2.mo15253i().m14122a(a, false);
        zzbcgVar.m15835a((zzbcg) a2);
        a2.mo15160d().m14939a(new zzbuz(a) { // from class: c.d.b.d.g.a.ko

            /* renamed from: a */
            public final zzbgj f13901a;

            {
                this.f13901a = a;
            }

            @Override // com.google.android.gms.internal.ads.zzbuz
            /* renamed from: M */
            public final void mo13728M() {
                zzbgj zzbgjVar = this.f13901a;
                if (zzbgjVar.mo15543z() != null) {
                    zzbgjVar.mo15543z().mo15475e();
                }
            }
        }, zzbbz.f24769f);
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23860n3)).booleanValue() || !zzdnvVar.f27573T) {
            a2.mo15253i();
            zzdny zzdnyVar = zzdnvVar.f27602r;
            zzdzcVar = zzcjv.m14123a(a, zzdnyVar.f27620b, zzdnyVar.f27619a);
        } else {
            zzdzcVar = zzdyq.m12988a((Object) null);
        }
        return zzdyq.m12993a(zzdzcVar, new zzdvu(this, a, zzdnvVar, a2) { // from class: c.d.b.d.g.a.jo

            /* renamed from: a */
            public final zzbgj f13801a;

            /* renamed from: b */
            public final zzdnv f13802b;

            /* renamed from: c */
            public final zzbnx f13803c;

            {
                this.f13801a = a;
                this.f13802b = zzdnvVar;
                this.f13803c = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj2) {
                zzbgj zzbgjVar = this.f13801a;
                zzdnv zzdnvVar2 = this.f13802b;
                zzbnx zzbnxVar = this.f13803c;
                if (zzdnvVar2.f27561H) {
                    zzbgjVar.mo15606C();
                }
                zzbgjVar.mo15603F();
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23827i0)).booleanValue()) {
                    zzp.m17967e();
                    zzazd.m16046a(zzbgjVar);
                }
                return zzbnxVar.mo15254h();
            }
        }, this.f26506e);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return (zzdnyVar == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzboh> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        final zzckj zzckjVar = new zzckj();
        zzdzc<zzboh> a = zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, zzdnvVar, zzdogVar, zzckjVar) { // from class: c.d.b.d.g.a.io

            /* renamed from: a */
            public final zzcth f13552a;

            /* renamed from: b */
            public final zzdnv f13553b;

            /* renamed from: c */
            public final zzdog f13554c;

            /* renamed from: d */
            public final zzckj f13555d;

            {
                this.f13552a = this;
                this.f13553b = zzdnvVar;
                this.f13554c = zzdogVar;
                this.f13555d = zzckjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f13552a.m13863a(this.f13553b, this.f13554c, this.f13555d, obj);
            }
        }, this.f26506e);
        zzckjVar.getClass();
        a.mo12976a(RunnableC3626ho.m26807a(zzckjVar), this.f26506e);
        return a;
    }
}
