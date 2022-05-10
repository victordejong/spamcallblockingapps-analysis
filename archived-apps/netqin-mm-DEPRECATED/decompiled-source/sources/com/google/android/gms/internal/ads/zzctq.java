package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzbnk;
import com.google.android.gms.internal.ads.zzctq;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzctq.class */
public final class zzctq implements zzcta<zzbnv> {

    /* renamed from: a */
    public final zzbnq f26514a;

    /* renamed from: b */
    public final Context f26515b;

    /* renamed from: c */
    public final zzcjt f26516c;

    /* renamed from: d */
    public final Executor f26517d;

    public zzctq(zzbnq zzbnqVar, Context context, Executor executor, zzcjt zzcjtVar) {
        this.f26515b = context;
        this.f26514a = zzbnqVar;
        this.f26517d = executor;
        this.f26516c = zzcjtVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13862a(zzdog zzdogVar, zzdnv zzdnvVar, Object obj) throws Exception {
        zzvn a = zzdoq.m13403a(this.f26515b, zzdnvVar.f27604t);
        final zzbgj a2 = this.f26516c.m14128a(a, zzdnvVar, zzdogVar.f27634b.f27630b, zzdnvVar.f27573T);
        final zzbnk a3 = this.f26514a.mo15270a(new zzbre(zzdogVar, zzdnvVar, null), new zzbnj(a2.getView(), a2, zzdoq.m13402a(a), zzdnvVar.f27575V, zzdnvVar.f27579Z, zzdnvVar.f27563J));
        a3.mo15277h().m14122a(a2, false);
        a3.mo15160d().m14939a(new zzbuz(a2) { // from class: c.d.b.d.g.a.oo

            /* renamed from: a */
            public final zzbgj f14348a;

            {
                this.f14348a = a2;
            }

            @Override // com.google.android.gms.internal.ads.zzbuz
            /* renamed from: M */
            public final void mo13728M() {
                zzbgj zzbgjVar = this.f14348a;
                if (zzbgjVar.mo15543z() != null) {
                    zzbgjVar.mo15543z().mo15475e();
                }
            }
        }, zzbbz.f24769f);
        a3.mo15277h();
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return zzdyq.m12993a(zzcjv.m14123a(a2, zzdnyVar.f27620b, zzdnyVar.f27619a), new zzdvu(a3) { // from class: c.d.b.d.g.a.no

            /* renamed from: a */
            public final zzbnk f14263a;

            {
                this.f14263a = a3;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj2) {
                return this.f14263a.mo15276i();
            }
        }, zzbbz.f24769f);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return (zzdnyVar == null || zzdnyVar.f27619a == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<zzbnv> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        return zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(this, zzdogVar, zzdnvVar) { // from class: c.d.b.d.g.a.mo

            /* renamed from: a */
            public final zzctq f14189a;

            /* renamed from: b */
            public final zzdog f14190b;

            /* renamed from: c */
            public final zzdnv f14191c;

            {
                this.f14189a = this;
                this.f14190b = zzdogVar;
                this.f14191c = zzdnvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14189a.m13862a(this.f14190b, this.f14191c, obj);
            }
        }, this.f26517d);
    }
}
