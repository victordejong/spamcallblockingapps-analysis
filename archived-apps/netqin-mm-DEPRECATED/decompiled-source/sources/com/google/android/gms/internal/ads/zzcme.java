package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcme.class */
public final class zzcme implements zzdso {

    /* renamed from: a */
    public Map<zzdsf, zzcmg> f26226a;

    /* renamed from: b */
    public zzts f26227b;

    public zzcme(zzts zztsVar, Map<zzdsf, zzcmg> map) {
        this.f26226a = map;
        this.f26227b = zztsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13247a(zzdsf zzdsfVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: a */
    public final void mo13246a(zzdsf zzdsfVar, String str, Throwable th) {
        if (this.f26226a.containsKey(zzdsfVar)) {
            this.f26227b.m11424a(this.f26226a.get(zzdsfVar).f26232c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: b */
    public final void mo13245b(zzdsf zzdsfVar, String str) {
        if (this.f26226a.containsKey(zzdsfVar)) {
            this.f26227b.m11424a(this.f26226a.get(zzdsfVar).f26230a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdso
    /* renamed from: c */
    public final void mo13244c(zzdsf zzdsfVar, String str) {
        if (this.f26226a.containsKey(zzdsfVar)) {
            this.f26227b.m11424a(this.f26226a.get(zzdsfVar).f26231b);
        }
    }
}
