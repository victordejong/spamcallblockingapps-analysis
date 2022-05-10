package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzcoi;
import com.google.android.gms.internal.ads.zzcqm;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C4145vl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoi.class */
public final class zzcoi {

    /* renamed from: a */
    public final zzdzb f26340a;

    /* renamed from: b */
    public final zzdzb f26341b;

    /* renamed from: c */
    public final zzcpt f26342c;

    /* renamed from: d */
    public final zzeos<zzcqv> f26343d;

    public zzcoi(zzdzb zzdzbVar, zzdzb zzdzbVar2, zzcpt zzcptVar, zzeos<zzcqv> zzeosVar) {
        this.f26340a = zzdzbVar;
        this.f26341b = zzdzbVar2;
        this.f26342c = zzcptVar;
        this.f26343d = zzeosVar;
    }

    /* renamed from: a */
    public final zzdzc<InputStream> m13976a(final zzatc zzatcVar) {
        String str = zzatcVar.f24450d;
        zzp.m17969c();
        zzdzc a = zzayu.m16091e(str) ? zzdyq.m12987a((Throwable) new zzcqm(zzdpg.INTERNAL_ERROR)) : zzdyq.m12990a(this.f26340a.mo12977a(new Callable(this, zzatcVar) { // from class: c.d.b.d.g.a.tl

            /* renamed from: a */
            public final zzcoi f15413a;

            /* renamed from: b */
            public final zzatc f15414b;

            {
                this.f15413a = this;
                this.f15414b = zzatcVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15413a.m13974b(this.f15414b);
            }
        }), ExecutionException.class, C4145vl.f15871a, this.f26341b);
        final int callingUid = Binder.getCallingUid();
        return zzdyq.m12990a(a, zzcqm.class, new zzdya(this, zzatcVar, callingUid) { // from class: c.d.b.d.g.a.ul

            /* renamed from: a */
            public final zzcoi f15653a;

            /* renamed from: b */
            public final zzatc f15654b;

            /* renamed from: c */
            public final int f15655c;

            {
                this.f15653a = this;
                this.f15654b = zzatcVar;
                this.f15655c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f15653a.m13975a(this.f15654b, this.f15655c, (zzcqm) obj);
            }
        }, this.f26341b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13975a(zzatc zzatcVar, int i, zzcqm zzcqmVar) throws Exception {
        return this.f26343d.get().m13923a(zzatcVar, i);
    }

    /* renamed from: b */
    public final /* synthetic */ InputStream m13974b(zzatc zzatcVar) throws Exception {
        return this.f26342c.m13944a(zzatcVar).get(((Integer) zzwm.m11166e().m16921a(zzabb.f23676F2)).intValue(), TimeUnit.SECONDS);
    }
}
