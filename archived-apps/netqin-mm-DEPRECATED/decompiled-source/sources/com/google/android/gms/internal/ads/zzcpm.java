package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcpm;
import com.google.android.gms.internal.ads.zzdzc;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import p131c.p161d.p170b.p224d.p252g.p253a.C3662im;
import p131c.p161d.p170b.p224d.p252g.p253a.C3699jm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpm.class */
public final class zzcpm implements zzcqj {

    /* renamed from: f */
    public static final Pattern f26375f = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a */
    public final zzcoi f26376a;

    /* renamed from: b */
    public final zzdzb f26377b;

    /* renamed from: c */
    public final zzdok f26378c;

    /* renamed from: d */
    public final ScheduledExecutorService f26379d;

    /* renamed from: e */
    public final zzcsc f26380e;

    public zzcpm(zzdok zzdokVar, zzcoi zzcoiVar, zzdzb zzdzbVar, ScheduledExecutorService scheduledExecutorService, zzcsc zzcscVar) {
        this.f26378c = zzdokVar;
        this.f26376a = zzcoiVar;
        this.f26377b = zzdzbVar;
        this.f26379d = scheduledExecutorService;
        this.f26380e = zzcscVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcqj
    /* renamed from: a */
    public final zzdzc<zzdog> mo13935a(zzatc zzatcVar) {
        zzdzc<zzdog> a = zzdyq.m12992a(this.f26376a.m13976a(zzatcVar), new zzdya(this) { // from class: c.d.b.d.g.a.hm

            /* renamed from: a */
            public final zzcpm f13470a;

            {
                this.f13470a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f13470a.m13948a((InputStream) obj);
            }
        }, this.f26377b);
        zzdzc<zzdog> zzdzcVar = a;
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23671E2)).booleanValue()) {
            zzdzcVar = zzdyq.m12990a(zzdyq.m12994a(a, ((Integer) zzwm.m11166e().m16921a(zzabb.f23676F2)).intValue(), TimeUnit.SECONDS, this.f26379d), TimeoutException.class, C3699jm.f13798a, zzbbz.f24769f);
        }
        zzdyq.m12991a(zzdzcVar, new C3662im(this), zzbbz.f24769f);
        return zzdzcVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13948a(InputStream inputStream) throws Exception {
        return zzdyq.m12988a(new zzdog(new zzdof(this.f26378c), zzdoe.m13444a(new InputStreamReader(inputStream))));
    }
}
