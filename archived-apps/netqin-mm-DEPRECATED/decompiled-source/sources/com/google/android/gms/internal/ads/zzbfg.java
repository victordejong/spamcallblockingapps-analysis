package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3984r8;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfg.class */
public final class zzbfg extends zzayl {

    /* renamed from: c */
    public final zzbdu f24927c;

    /* renamed from: d */
    public final zzbfl f24928d;

    /* renamed from: e */
    public final String f24929e;

    /* renamed from: f */
    public final String[] f24930f;

    public zzbfg(zzbdu zzbduVar, zzbfl zzbflVar, String str, String[] strArr) {
        this.f24927c = zzbduVar;
        this.f24928d = zzbflVar;
        this.f24929e = str;
        this.f24930f = strArr;
        zzp.m17947y().m15671a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    /* renamed from: a */
    public final void mo15673a() {
        try {
            this.f24928d.mo15653a(this.f24929e, this.f24930f);
            zzayu.f24665h.post(new RunnableC3984r8(this));
        } catch (Throwable th) {
            zzayu.f24665h.post(new RunnableC3984r8(this));
            throw th;
        }
    }
}
