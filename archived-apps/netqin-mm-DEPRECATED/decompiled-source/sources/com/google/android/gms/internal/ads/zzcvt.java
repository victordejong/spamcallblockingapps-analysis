package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvt.class */
public final class zzcvt implements zzcti<zzcdx, zzdpa, zzcuu> {

    /* renamed from: a */
    public final Context f26600a;

    /* renamed from: b */
    public final zzcda f26601b;

    /* renamed from: c */
    public final Executor f26602c;

    public zzcvt(Context context, zzcda zzcdaVar, Executor executor) {
        this.f26600a = context;
        this.f26601b = zzcdaVar;
        this.f26602c = executor;
    }

    /* renamed from: a */
    public static boolean m13826a(zzdog zzdogVar, int i) {
        return zzdogVar.f27633a.f27632a.f27645g.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: a */
    public final /* synthetic */ zzcdx mo13807a(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos, zzcwn {
        zzcei zzceiVar;
        zzano i = zzctcVar.f26497b.m13347i();
        zzanp j = zzctcVar.f26497b.m13346j();
        zzanu l = zzctcVar.f26497b.m13344l();
        if (l != null && m13826a(zzdogVar, 6)) {
            zzceiVar = zzcei.m14713a(l);
        } else if (i != null && m13826a(zzdogVar, 6)) {
            zzceiVar = zzcei.m14700b(i);
        } else if (i != null && m13826a(zzdogVar, 2)) {
            zzceiVar = zzcei.m14715a(i);
        } else if (j != null && m13826a(zzdogVar, 6)) {
            zzceiVar = zzcei.m14699b(j);
        } else if (j == null || !m13826a(zzdogVar, 1)) {
            throw new zzcwn(zzdpg.INTERNAL_ERROR, "No native ad mappers");
        } else {
            zzceiVar = zzcei.m14714a(j);
        }
        if (zzdogVar.f27633a.f27632a.f27645g.contains(Integer.toString(zzceiVar.m14682o()))) {
            zzcej a = this.f26601b.mo14790a(new zzbre(zzdogVar, zzdnvVar, zzctcVar.f26496a), new zzceu(zzceiVar), new zzcgf(j, i, l));
            zzctcVar.f26498c.m13836a((zzanh) a.mo15158f());
            a.mo15163a().m14939a((zzbvb) new zzbmf(zzctcVar.f26497b), this.f26602c);
            return a.mo14727h();
        }
        throw new zzcwn(zzdpg.INTERNAL_ERROR, "No corresponding native ad listener");
    }

    @Override // com.google.android.gms.internal.ads.zzcti
    /* renamed from: b */
    public final void mo13806b(zzdog zzdogVar, zzdnv zzdnvVar, zzctc<zzdpa, zzcuu> zzctcVar) throws zzdos {
        zzdpa zzdpaVar = zzctcVar.f26497b;
        Context context = this.f26600a;
        zzvg zzvgVar = zzdogVar.f27633a.f27632a.f27642d;
        String jSONObject = zzdnvVar.f27605u.toString();
        String a = zzbao.m15960a((zzbat) zzdnvVar.f27602r);
        zzcuu zzcuuVar = zzctcVar.f26498c;
        zzdok zzdokVar = zzdogVar.f27633a.f27632a;
        zzdpaVar.m13362a(context, zzvgVar, jSONObject, a, zzcuuVar, zzdokVar.f27647i, zzdokVar.f27645g);
    }
}
