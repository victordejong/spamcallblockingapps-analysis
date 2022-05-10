package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcpf;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p253a.C3513em;
import p131c.p161d.p170b.p224d.p252g.p253a.C3587gm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpf.class */
public final class zzcpf extends zzcpd {

    /* renamed from: g */
    public static final Pattern f26369g = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: b */
    public final zzcoi f26370b;

    /* renamed from: c */
    public final zzdzb f26371c;

    /* renamed from: d */
    public final zzdok f26372d;

    /* renamed from: e */
    public final ScheduledExecutorService f26373e;

    /* renamed from: f */
    public final zzcsc f26374f;

    public zzcpf(zzbwr zzbwrVar, zzdok zzdokVar, zzcoi zzcoiVar, zzdzb zzdzbVar, ScheduledExecutorService scheduledExecutorService, zzcsc zzcscVar) {
        super(zzbwrVar);
        this.f26372d = zzdokVar;
        this.f26370b = zzcoiVar;
        this.f26371c = zzdzbVar;
        this.f26373e = scheduledExecutorService;
        this.f26374f = zzcscVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpd
    /* renamed from: a */
    public final zzdzc<zzdog> mo13954a(zzatc zzatcVar) throws zzcof {
        zzdzc<zzdog> a = zzdyq.m12992a(this.f26370b.m13976a(zzatcVar), new zzdya(this) { // from class: c.d.b.d.g.a.fm

            /* renamed from: a */
            public final zzcpf f12984a;

            {
                this.f12984a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f12984a.m13952a((InputStream) obj);
            }
        }, this.f26371c);
        zzdzc<zzdog> zzdzcVar = a;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23671E2)).booleanValue()) {
            zzdzcVar = zzdyq.m12990a(zzdyq.m12994a(a, ((Integer) zzwm.m11166e().m16921a(zzabb.f23676F2)).intValue(), TimeUnit.SECONDS, this.f26373e), TimeoutException.class, C3513em.f12848a, zzbbz.f24769f);
        }
        zzdyq.m12991a(zzdzcVar, new C3587gm(this), zzbbz.f24769f);
        return zzdzcVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13952a(InputStream inputStream) throws Exception {
        return zzdyq.m12988a(new zzdog(new zzdof(this.f26372d), zzdoe.m13444a(new InputStreamReader(inputStream))));
    }
}
