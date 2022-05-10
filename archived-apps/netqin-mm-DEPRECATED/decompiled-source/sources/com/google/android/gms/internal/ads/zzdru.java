package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdru.class */
public abstract class zzdru<E> {

    /* renamed from: d */
    public static final zzdzc<?> f27771d = zzdyq.m12988a((Object) null);

    /* renamed from: a */
    public final zzdzb f27772a;

    /* renamed from: b */
    public final ScheduledExecutorService f27773b;

    /* renamed from: c */
    public final zzdsg<E> f27774c;

    public zzdru(zzdzb zzdzbVar, ScheduledExecutorService scheduledExecutorService, zzdsg<E> zzdsgVar) {
        this.f27772a = zzdzbVar;
        this.f27773b = scheduledExecutorService;
        this.f27774c = zzdsgVar;
    }

    /* renamed from: a */
    public final zzdrw m13271a(E e, zzdzc<?>... zzdzcVarArr) {
        return new zzdrw(this, e, Arrays.asList(zzdzcVarArr), null);
    }

    /* renamed from: a */
    public final zzdry m13273a(E e) {
        return new zzdry(this, e, null);
    }

    /* renamed from: a */
    public final <I> zzdsa<I> m13272a(E e, zzdzc<I> zzdzcVar) {
        return new zzdsa<>(this, e, null, zzdzcVar, Collections.singletonList(zzdzcVar), zzdzcVar, null);
    }

    /* renamed from: b */
    public abstract String mo13249b(E e);
}
