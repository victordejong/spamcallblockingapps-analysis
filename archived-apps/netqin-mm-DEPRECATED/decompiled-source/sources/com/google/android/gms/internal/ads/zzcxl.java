package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzccl;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzdos;
import com.google.android.gms.internal.ads.zzdpa;
import java.util.concurrent.Executor;
import p131c.p161d.p170b.p224d.p252g.p253a.BinderC3777lq;
import p131c.p161d.p170b.p224d.p252g.p253a.C3703jq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcxl.class */
public final class zzcxl implements zzcti<zzcjg, zzdpa, zzcut> {

    /* renamed from: a */
    public final Context f26706a;

    /* renamed from: b */
    public final Executor f26707b;

    /* renamed from: c */
    public final zzcjj f26708c;

    public zzcxl(Context context, Executor executor, zzcjj zzcjjVar) {
        this.f26706a = context;
        this.f26707b = executor;
        this.f26708c = zzcjjVar;
    }

    /* renamed from: c */
    public static void m13805c(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcut> zzctcVar) {
        try {
            zzctcVar.f26497b.m13359a(zzdogVar.f27633a.f27632a.f27642d, zzdnvVar.f27605u.toString());
        } catch (Exception e) {
            String valueOf = String.valueOf(zzctcVar.f26496a);
            zzbbq.m15853c(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcjg mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, final zzctc<zzdpa, zzcut> zzctcVar) throws zzdos, zzcwn {
        zzcji a = this.f26708c.mo14139a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzcjh(new zzccm(zzctcVar) { // from class: c.d.b.d.g.a.kq

            /* renamed from: a */
            public final zzctc f13906a;

            {
                this.f13906a = zzctcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzccm
            /* renamed from: a */
            public final void mo14809a(boolean z, Context context) {
                zzctc zzctcVar2 = this.f13906a;
                try {
                    ((zzdpa) zzctcVar2.f26497b).m13358a(z);
                    ((zzdpa) zzctcVar2.f26497b).m13348h();
                } catch (zzdos e) {
                    zzbbq.m15853c("Cannot show rewarded video.", e);
                    throw new zzccl(e.getCause());
                }
            }
        }));
        a.mo15163a().m14939a((zzbvb) new zzbmf(zzctcVar.f26497b), this.f26707b);
        zzbvh b = a.mo15162b();
        zzbuc c = a.mo15161c();
        zzctcVar.f26498c.m13846a((zzaur) new BinderC3777lq(this, a.mo14145j(), c, b, a.mo14143l()));
        return a.mo14144k();
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcut> zzctcVar) throws zzdos {
        if (!zzctcVar.f26497b.m13352d()) {
            zzctcVar.f26498c.m13845a(new C3703jq(this, zzdogVar, zzdnvVar, zzctcVar));
            zzctcVar.f26497b.m13364a(this.f26706a, zzdogVar.f27633a.f27632a.f27642d, (String) null, zzctcVar.f26498c, zzdnvVar.f27605u.toString());
            return;
        }
        m13805c(zzdogVar, zzdnvVar, zzctcVar);
    }
}
