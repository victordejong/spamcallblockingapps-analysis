package com.google.android.gms.internal.ads;

import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.C3471dh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcct.class */
public final class zzcct implements zzeoy<C3471dh> {

    /* renamed from: a */
    public final zzeph<Map<String, zzcta<zzbqu>>> f25727a;

    /* renamed from: b */
    public final zzeph<Map<String, zzcta<zzcdx>>> f25728b;

    /* renamed from: c */
    public final zzeph<Map<String, zzcvl<zzcdx>>> f25729c;

    /* renamed from: d */
    public final zzeph<zzbqp<zzboq>> f25730d;

    /* renamed from: e */
    public final zzeph<zzcep> f25731e;

    public zzcct(zzeph<Map<String, zzcta<zzbqu>>> zzephVar, zzeph<Map<String, zzcta<zzcdx>>> zzephVar2, zzeph<Map<String, zzcvl<zzcdx>>> zzephVar3, zzeph<zzbqp<zzboq>> zzephVar4, zzeph<zzcep> zzephVar5) {
        this.f25727a = zzephVar;
        this.f25728b = zzephVar2;
        this.f25729c = zzephVar3;
        this.f25730d = zzephVar4;
        this.f25731e = zzephVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new C3471dh(this.f25727a.get(), this.f25728b.get(), this.f25729c.get(), this.f25730d, this.f25731e.get());
    }
}
