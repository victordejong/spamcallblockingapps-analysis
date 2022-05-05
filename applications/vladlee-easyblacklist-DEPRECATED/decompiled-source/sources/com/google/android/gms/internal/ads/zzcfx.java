package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcfx.class */
public final class zzcfx extends zzcfv {

    /* renamed from: f */
    private static final Pattern f13100f = Pattern.compile("Received error HTTP response code: (.*)");

    /* renamed from: a */
    private final zzcfe f13101a;

    /* renamed from: b */
    private final zzdhd f13102b;

    /* renamed from: c */
    private final zzczu f13103c;

    /* renamed from: d */
    private final ScheduledExecutorService f13104d;

    /* renamed from: e */
    private final zzchz f13105e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcfx(zzbqs zzbqsVar, zzczu zzczuVar, zzcfe zzcfeVar, zzdhd zzdhdVar, ScheduledExecutorService scheduledExecutorService, zzchz zzchzVar) {
        super(zzbqsVar);
        this.f13103c = zzczuVar;
        this.f13101a = zzcfeVar;
        this.f13102b = zzdhdVar;
        this.f13104d = scheduledExecutorService;
        this.f13105e = zzchzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3781a(InputStream inputStream) {
        return zzdgs.zzaj(new zzczt(new zzczo(this.f13103c), zzczr.zza(new InputStreamReader(inputStream))));
    }

    @Override // com.google.android.gms.internal.ads.zzcfv
    public final zzdhe<zzczt> zze(zzaqk zzaqkVar) {
        zzdhe<zzczt> zzb = zzdgs.zzb(this.f13101a.zzc(zzaqkVar), new zzdgf(this) { // from class: com.google.android.gms.internal.ads.rn

            /* renamed from: a */
            private final zzcfx f10425a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10425a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10425a.m3781a((InputStream) obj);
            }
        }, this.f13102b);
        zzdhe<zzczt> zzdheVar = zzb;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcow)).booleanValue()) {
            zzdheVar = zzdgs.zzb(zzdgs.zza(zzb, ((Integer) zzve.zzoy().zzd(zzzn.zzcox)).intValue(), TimeUnit.SECONDS, this.f13104d), TimeoutException.class, C2198rl.f10423a, zzazd.zzdwj);
        }
        zzdgs.zza(zzdheVar, new C2201ro(this), zzazd.zzdwj);
        return zzdheVar;
    }
}
