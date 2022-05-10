package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcta;
import com.google.android.gms.internal.ads.zzcwq;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwq.class */
public final class zzcwq<AdT> implements zzdya<zzdog, AdT> {

    /* renamed from: a */
    public final zzdsi f26668a;

    /* renamed from: b */
    public final zzbug f26669b;

    /* renamed from: c */
    public final zzdsr f26670c;

    /* renamed from: d */
    public final zzdst f26671d;

    /* renamed from: e */
    public final Executor f26672e;

    /* renamed from: f */
    public final ScheduledExecutorService f26673f;

    /* renamed from: g */
    public final zzbqp<AdT> f26674g;

    /* renamed from: h */
    public final zzcwj f26675h;

    /* renamed from: i */
    public final zzctd f26676i;

    public zzcwq(zzdsi zzdsiVar, zzcwj zzcwjVar, zzbug zzbugVar, zzdsr zzdsrVar, zzdst zzdstVar, zzbqp<AdT> zzbqpVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzctd zzctdVar) {
        this.f26668a = zzdsiVar;
        this.f26675h = zzcwjVar;
        this.f26669b = zzbugVar;
        this.f26670c = zzdsrVar;
        this.f26671d = zzdstVar;
        this.f26674g = zzbqpVar;
        this.f26672e = executor;
        this.f26673f = scheduledExecutorService;
        this.f26676i = zzctdVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13812a(zzdog zzdogVar, zzdnv zzdnvVar, zzcta zzctaVar, Throwable th) throws Exception {
        zzcwj zzcwjVar = this.f26675h;
        zzdnw zzdnwVar = zzdogVar.f27634b.f27630b;
        zzdzc a = zzdyq.m12994a(zzctaVar.mo13769b(zzdogVar, zzdnvVar), zzdnvVar.f27566M, TimeUnit.MILLISECONDS, this.f26673f);
        zzcwjVar.m13819a(zzdnwVar, zzdnvVar, a);
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzdya
    /* renamed from: d */
    public final /* synthetic */ zzdzc mo13006d(zzdog zzdogVar) throws Exception {
        boolean z;
        final zzdog zzdogVar2 = zzdogVar;
        zzdnx zzdnxVar = zzdogVar2.f27634b.f27630b.f27617g;
        zzdrr a = this.f26668a.m13273a((zzdsi) zzdsf.RENDER_CONFIG_INIT).m13266a(zzdyq.m12987a((Throwable) new zzcwn(zzdpg.NO_FILL, zzdnxVar != null ? zzdnxVar.m13450a() : "No ad config."))).m13263a();
        this.f26669b.m14939a(new zzbmi(zzdogVar2, this.f26671d, this.f26670c), this.f26672e);
        int i = 0;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23861n4)).booleanValue()) {
            for (zzdnv zzdnvVar : zzdogVar2.f27634b.f27629a) {
                this.f26676i.m13867a(zzdnvVar);
                Iterator<String> it = zzdnvVar.f27580a.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    zzcta<AdT> a2 = this.f26674g.mo15155a(zzdnvVar.f27582b, it.next());
                    if (a2 != null && a2.mo13770a(zzdogVar2, zzdnvVar)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    this.f26676i.m13866a(zzdnvVar, 0L, zzdpe.m13339a(zzdpg.INTERNAL_ERROR, null, null));
                }
            }
        }
        for (final zzdnv zzdnvVar2 : zzdogVar2.f27634b.f27629a) {
            Iterator<String> it2 = zzdnvVar2.f27580a.iterator();
            while (true) {
                a = a;
                if (!it2.hasNext()) {
                    break;
                }
                String next = it2.next();
                final zzcta<AdT> a3 = this.f26674g.mo15155a(zzdnvVar2.f27582b, next);
                if (a3 != null && a3.mo13770a(zzdogVar2, zzdnvVar2)) {
                    zzdsa<I> a4 = this.f26668a.m13272a((zzdsi) zzdsf.RENDER_CONFIG_WATERFALL, (zzdzc) a);
                    StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 26);
                    sb.append("render-config-");
                    sb.append(i);
                    sb.append("-");
                    sb.append(next);
                    a = a4.m13254a(sb.toString()).m13256a(Throwable.class, new zzdya(this, zzdogVar2, zzdnvVar2, a3) { // from class: c.d.b.d.g.a.wp

                        /* renamed from: a */
                        public final zzcwq f15966a;

                        /* renamed from: b */
                        public final zzdog f15967b;

                        /* renamed from: c */
                        public final zzdnv f15968c;

                        /* renamed from: d */
                        public final zzcta f15969d;

                        {
                            this.f15966a = this;
                            this.f15967b = zzdogVar2;
                            this.f15968c = zzdnvVar2;
                            this.f15969d = a3;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdya
                        /* renamed from: d */
                        public final zzdzc mo13006d(Object obj) {
                            return this.f15966a.m13812a(this.f15967b, this.f15968c, this.f15969d, (Throwable) obj);
                        }
                    }).m13263a();
                    break;
                }
            }
            i++;
        }
        return a;
    }
}
