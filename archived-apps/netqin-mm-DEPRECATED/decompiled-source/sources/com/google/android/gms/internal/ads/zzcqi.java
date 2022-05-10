package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzcof;
import com.google.android.gms.internal.ads.zzcqj;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzeph;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.C4146vm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqi.class */
public final class zzcqi implements zzcqj {

    /* renamed from: a */
    public final Map<String, zzeph<zzcqj>> f26402a;

    /* renamed from: b */
    public final zzdzb f26403b;

    /* renamed from: c */
    public final zzbwr f26404c;

    public zzcqi(Map<String, zzeph<zzcqj>> map, zzdzb zzdzbVar, zzbwr zzbwrVar) {
        this.f26402a = map;
        this.f26403b = zzdzbVar;
        this.f26404c = zzbwrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqj
    /* renamed from: a */
    public final zzdzc<zzdog> mo13935a(final zzatc zzatcVar) {
        this.f26404c.mo14002a(zzatcVar);
        zzdzc<zzdog> a = zzdyq.m12987a((Throwable) new zzcof(zzdpg.NO_FILL));
        for (String str : ((String) zzwm.m11166e().m16921a(zzabb.f23831i4)).split(",")) {
            final zzeph<zzcqj> zzephVar = this.f26402a.get(str.trim());
            a = a;
            if (zzephVar != null) {
                a = zzdyq.m12990a(a, zzcof.class, new zzdya(zzephVar, zzatcVar) { // from class: c.d.b.d.g.a.um

                    /* renamed from: a */
                    public final zzeph f15656a;

                    /* renamed from: b */
                    public final zzatc f15657b;

                    {
                        this.f15656a = zzephVar;
                        this.f15657b = zzatcVar;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdya
                    /* renamed from: d */
                    public final zzdzc mo13006d(Object obj) {
                        zzeph zzephVar2 = this.f15656a;
                        zzcof zzcofVar = (zzcof) obj;
                        return ((zzcqj) zzephVar2.get()).mo13935a(this.f15657b);
                    }
                }, this.f26403b);
            }
        }
        zzdyq.m12991a(a, new C4146vm(this), zzbbz.f24769f);
        return a;
    }
}
