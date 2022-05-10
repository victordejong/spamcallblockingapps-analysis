package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzatc;
import com.google.android.gms.internal.ads.zzcpc;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpc.class */
public final class zzcpc {

    /* renamed from: a */
    public final ScheduledExecutorService f26360a;

    /* renamed from: b */
    public final zzdzb f26361b;

    /* renamed from: c */
    public final zzcpx f26362c;

    /* renamed from: d */
    public final zzeos<zzcqv> f26363d;

    public zzcpc(ScheduledExecutorService scheduledExecutorService, zzdzb zzdzbVar, zzcpx zzcpxVar, zzeos<zzcqv> zzeosVar) {
        this.f26360a = scheduledExecutorService;
        this.f26361b = zzdzbVar;
        this.f26362c = zzcpxVar;
        this.f26363d = zzeosVar;
    }

    /* renamed from: a */
    public final zzdzc<InputStream> m13958a(final zzatc zzatcVar) {
        String str = zzatcVar.f24450d;
        zzp.m17969c();
        zzdzc<InputStream> a = zzayu.m16091e(str) ? zzdyq.m12987a((Throwable) new zzcqm(zzdpg.INTERNAL_ERROR)) : this.f26362c.m13942a(zzatcVar);
        final int callingUid = Binder.getCallingUid();
        return zzdyl.m12999d(a).m13004a(((Integer) zzwm.m11166e().m16921a(zzabb.f23676F2)).intValue(), TimeUnit.SECONDS, this.f26360a).m13000a(Throwable.class, new zzdya(this, zzatcVar, callingUid) { // from class: c.d.b.d.g.a.cm

            /* renamed from: a */
            public final zzcpc f12568a;

            /* renamed from: b */
            public final zzatc f12569b;

            /* renamed from: c */
            public final int f12570c;

            {
                this.f12568a = this;
                this.f12569b = zzatcVar;
                this.f12570c = callingUid;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12568a.m13957a(this.f12569b, this.f12570c, (Throwable) obj);
            }
        }, this.f26361b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13957a(zzatc zzatcVar, int i, Throwable th) throws Exception {
        return this.f26363d.get().m13914c(zzatcVar, i);
    }
}
