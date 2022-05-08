package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclu.class */
public final class zzclu<AdT> implements zzdgf<zzczt, AdT> {

    /* renamed from: a */
    private final zzdcr f13332a;

    /* renamed from: b */
    private final zzbou f13333b;

    /* renamed from: c */
    private final zzdda f13334c;

    /* renamed from: d */
    private final Executor f13335d;

    /* renamed from: e */
    private final ScheduledExecutorService f13336e;

    /* renamed from: f */
    private final zzbmi<AdT> f13337f;

    /* renamed from: g */
    private final zzclp f13338g;

    public zzclu(zzdcr zzdcrVar, zzclp zzclpVar, zzbou zzbouVar, zzdda zzddaVar, zzbmi<AdT> zzbmiVar, Executor executor, ScheduledExecutorService scheduledExecutorService) {
        this.f13332a = zzdcrVar;
        this.f13338g = zzclpVar;
        this.f13333b = zzbouVar;
        this.f13334c = zzddaVar;
        this.f13337f = zzbmiVar;
        this.f13335d = executor;
        this.f13336e = scheduledExecutorService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3736a(zzczl zzczlVar, zzcio zzcioVar, zzczt zzcztVar) {
        return this.f13338g.zza(zzczlVar, zzdgs.zza(zzcioVar.zzb(zzcztVar, zzczlVar), zzczlVar.zzglx, TimeUnit.MILLISECONDS, this.f13336e));
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final /* synthetic */ zzdhe zzf(zzczt zzcztVar) {
        final zzczt zzcztVar2 = zzcztVar;
        zzdca zzaqg = this.f13332a.zzu(zzdco.RENDER_CONFIG_INIT).zzc(zzdgs.zzk(new zzclr("No ad configs", 3))).zzaqg();
        this.f13333b.zza(new zzbit(zzcztVar2, this.f13334c), this.f13335d);
        int i = 0;
        for (final zzczl zzczlVar : zzcztVar2.zzgmi.zzgme) {
            Iterator<String> it = zzczlVar.zzgli.iterator();
            while (true) {
                zzaqg = zzaqg;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                final zzcio<AdT> zzd = this.f13337f.zzd(zzczlVar.zzfjj, next);
                if (zzd != null && zzd.zza(zzcztVar2, zzczlVar)) {
                    zzdcj<I> zza = this.f13332a.zza((zzdcr) zzdco.RENDER_CONFIG_WATERFALL, (zzdhe) zzaqg);
                    StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 26);
                    sb.append("render-config-");
                    sb.append(i);
                    sb.append("-");
                    sb.append(next);
                    zzaqg = zza.zzgn(sb.toString()).zza(Throwable.class, new zzdgf(this, zzczlVar, zzd, zzcztVar2) { // from class: com.google.android.gms.internal.ads.ty

                        /* renamed from: a */
                        private final zzclu f10542a;

                        /* renamed from: b */
                        private final zzczl f10543b;

                        /* renamed from: c */
                        private final zzcio f10544c;

                        /* renamed from: d */
                        private final zzczt f10545d;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10542a = this;
                            this.f10543b = zzczlVar;
                            this.f10544c = zzd;
                            this.f10545d = zzcztVar2;
                        }

                        @Override // com.google.android.gms.internal.ads.zzdgf
                        public final zzdhe zzf(Object obj) {
                            return this.f10542a.m3736a(this.f10543b, this.f10544c, this.f10545d);
                        }
                    }).zzaqg();
                    break;
                }
            }
            i++;
        }
        return zzaqg;
    }
}
