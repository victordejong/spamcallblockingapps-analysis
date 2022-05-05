package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdcd.class */
public abstract class zzdcd<E> {

    /* renamed from: a */
    private static final zzdhe<?> f14173a = zzdgs.zzaj(null);

    /* renamed from: b */
    private final zzdhd f14174b;

    /* renamed from: c */
    private final ScheduledExecutorService f14175c;

    /* renamed from: d */
    private final zzdcp<E> f14176d;

    public zzdcd(zzdhd zzdhdVar, ScheduledExecutorService scheduledExecutorService, zzdcp<E> zzdcpVar) {
        this.f14174b = zzdhdVar;
        this.f14175c = scheduledExecutorService;
        this.f14176d = zzdcpVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract String mo3617a(E e);

    public final zzdcf zza(E e, zzdhe<?>... zzdheVarArr) {
        return new zzdcf(this, e, Arrays.asList(zzdheVarArr), (byte) 0);
    }

    public final <I> zzdcj<I> zza(E e, zzdhe<I> zzdheVar) {
        return new zzdcj<>(this, e, zzdheVar, Collections.singletonList(zzdheVar), zzdheVar);
    }

    public final zzdch zzu(E e) {
        return new zzdch(this, e, (byte) 0);
    }
}
