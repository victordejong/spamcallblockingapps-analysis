package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcj.class */
public final class zzdcj<O> {

    /* renamed from: a */
    final /* synthetic */ zzdcd f14182a;

    /* renamed from: b */
    private final E f14183b;

    /* renamed from: c */
    private final String f14184c;

    /* renamed from: d */
    private final zzdhe<?> f14185d;

    /* renamed from: e */
    private final List<zzdhe<?>> f14186e;

    /* renamed from: f */
    private final zzdhe<O> f14187f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdcj(zzdcd zzdcdVar, Object obj, zzdhe zzdheVar, List list, zzdhe zzdheVar2) {
        this(zzdcdVar, obj, null, zzdheVar, list, zzdheVar2);
    }

    private zzdcj(zzdcd zzdcdVar, E e, String str, zzdhe<?> zzdheVar, List<zzdhe<?>> list, zzdhe<O> zzdheVar2) {
        this.f14182a = zzdcdVar;
        this.f14183b = e;
        this.f14184c = str;
        this.f14185d = zzdheVar;
        this.f14186e = list;
        this.f14187f = zzdheVar2;
    }

    /* renamed from: a */
    private final <O2> zzdcj<O2> m3619a(zzdgf<O, O2> zzdgfVar, Executor executor) {
        return new zzdcj<>(this.f14182a, this.f14183b, this.f14184c, this.f14185d, this.f14186e, zzdgs.zzb(this.f14187f, zzdgfVar, executor));
    }

    public final zzdcj<O> zza(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzdcd zzdcdVar = this.f14182a;
        E e = this.f14183b;
        String str = this.f14184c;
        zzdhe<?> zzdheVar = this.f14185d;
        List<zzdhe<?>> list = this.f14186e;
        zzdhe<O> zzdheVar2 = this.f14187f;
        scheduledExecutorService = zzdcdVar.f14175c;
        return new zzdcj<>(zzdcdVar, e, str, zzdheVar, list, zzdgs.zza(zzdheVar2, j, timeUnit, scheduledExecutorService));
    }

    public final <O2> zzdcj<O2> zza(zzdgf<O, O2> zzdgfVar) {
        zzdhd zzdhdVar;
        zzdhdVar = this.f14182a.f14174b;
        return m3619a(zzdgfVar, zzdhdVar);
    }

    public final <T extends Throwable> zzdcj<O> zza(Class<T> cls, final zzdby<T, O> zzdbyVar) {
        return zza(cls, new zzdgf(zzdbyVar) { // from class: com.google.android.gms.internal.ads.aaf

            /* renamed from: a */
            private final zzdby f7128a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7128a = zzdbyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return zzdgs.zzaj(this.f7128a.apply((Throwable) obj));
            }
        });
    }

    public final <T extends Throwable> zzdcj<O> zza(Class<T> cls, zzdgf<T, O> zzdgfVar) {
        zzdhd zzdhdVar;
        zzdcd zzdcdVar = this.f14182a;
        E e = this.f14183b;
        String str = this.f14184c;
        zzdhe<?> zzdheVar = this.f14185d;
        List<zzdhe<?>> list = this.f14186e;
        zzdhe<O> zzdheVar2 = this.f14187f;
        zzdhdVar = zzdcdVar.f14174b;
        return new zzdcj<>(zzdcdVar, e, str, zzdheVar, list, zzdgs.zzb(zzdheVar2, cls, zzdgfVar, zzdhdVar));
    }

    public final zzdca<E, O> zzaqg() {
        zzdcp zzdcpVar;
        E e = this.f14183b;
        String str = this.f14184c;
        String str2 = str;
        if (str == null) {
            str2 = this.f14182a.mo3617a((zzdcd) e);
        }
        final zzdca<E, O> zzdcaVar = new zzdca<>(e, str2, this.f14187f);
        zzdcpVar = this.f14182a.f14176d;
        zzdcpVar.zza(zzdcaVar);
        this.f14185d.addListener(new Runnable(this, zzdcaVar) { // from class: com.google.android.gms.internal.ads.aai

            /* renamed from: a */
            private final zzdcj f7132a;

            /* renamed from: b */
            private final zzdca f7133b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7132a = this;
                this.f7133b = zzdcaVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzdcp zzdcpVar2;
                zzdcj zzdcjVar = this.f7132a;
                zzdca zzdcaVar2 = this.f7133b;
                zzdcpVar2 = zzdcjVar.f14182a.f14176d;
                zzdcpVar2.zzb(zzdcaVar2);
            }
        }, zzazd.zzdwj);
        zzdgs.zza(zzdcaVar, new aah(this, zzdcaVar), zzazd.zzdwj);
        return zzdcaVar;
    }

    public final <O2> zzdcj<O2> zzb(final zzdby<O, O2> zzdbyVar) {
        return zza(new zzdgf(zzdbyVar) { // from class: com.google.android.gms.internal.ads.aae

            /* renamed from: a */
            private final zzdby f7127a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7127a = zzdbyVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return zzdgs.zzaj(this.f7127a.apply(obj));
            }
        });
    }

    public final <O2> zzdcj<O2> zzc(final zzdhe<O2> zzdheVar) {
        return m3619a(new zzdgf(zzdheVar) { // from class: com.google.android.gms.internal.ads.aag

            /* renamed from: a */
            private final zzdhe f7129a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7129a = zzdheVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f7129a;
            }
        }, zzazd.zzdwj);
    }

    public final zzdcj<O> zzgn(String str) {
        return new zzdcj<>(this.f14182a, this.f14183b, str, this.f14185d, this.f14186e, this.f14187f);
    }

    public final zzdcj<O> zzw(E e) {
        return this.f14182a.zza((zzdcd) e, zzaqg());
    }
}
