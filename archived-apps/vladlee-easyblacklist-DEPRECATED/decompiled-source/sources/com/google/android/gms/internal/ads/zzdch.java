package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdch.class */
public final class zzdch {

    /* renamed from: a */
    private final E f14180a;

    /* renamed from: b */
    private final /* synthetic */ zzdcd f14181b;

    private zzdch(zzdcd zzdcdVar, E e) {
        this.f14181b = zzdcdVar;
        this.f14180a = e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdch(zzdcd zzdcdVar, Object obj, byte b) {
        this(zzdcdVar, obj);
    }

    /* renamed from: a */
    private final <O> zzdcj<O> m3620a(Callable<O> callable, zzdhd zzdhdVar) {
        zzdhe zzdheVar;
        zzdcd zzdcdVar = this.f14181b;
        E e = this.f14180a;
        zzdheVar = zzdcd.f14173a;
        return new zzdcj<>(zzdcdVar, e, zzdheVar, Collections.emptyList(), zzdhdVar.zzd(callable));
    }

    public final zzdcj<?> zza(final zzdcb zzdcbVar, zzdhd zzdhdVar) {
        return m3620a(new Callable(zzdcbVar) { // from class: com.google.android.gms.internal.ads.aad

            /* renamed from: a */
            private final zzdcb f7126a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7126a = zzdcbVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.f7126a.run();
                return null;
            }
        }, zzdhdVar);
    }

    public final <O> zzdcj<O> zzc(zzdhe<O> zzdheVar) {
        zzdhe zzdheVar2;
        zzdcd zzdcdVar = this.f14181b;
        E e = this.f14180a;
        zzdheVar2 = zzdcd.f14173a;
        return new zzdcj<>(zzdcdVar, e, zzdheVar2, Collections.emptyList(), zzdheVar);
    }

    public final <O> zzdcj<O> zzc(Callable<O> callable) {
        zzdhd zzdhdVar;
        zzdhdVar = this.f14181b.f14174b;
        return m3620a(callable, zzdhdVar);
    }
}
