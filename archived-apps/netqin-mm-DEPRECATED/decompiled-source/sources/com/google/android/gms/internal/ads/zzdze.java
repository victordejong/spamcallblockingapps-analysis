package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import p131c.p161d.p170b.p224d.p252g.p253a.h20;
import p131c.p161d.p170b.p224d.p252g.p253a.i20;
import p131c.p161d.p170b.p224d.p252g.p253a.l20;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdze.class */
public final class zzdze {
    /* renamed from: a */
    public static zzdzb m12973a(ExecutorService executorService) {
        return executorService instanceof zzdzb ? (zzdzb) executorService : executorService instanceof ScheduledExecutorService ? new l20((ScheduledExecutorService) executorService) : new i20(executorService);
    }

    /* renamed from: a */
    public static Executor m12975a() {
        return zzdyj.INSTANCE;
    }

    /* renamed from: a */
    public static Executor m12974a(Executor executor, zzdxq<?> zzdxqVar) {
        zzdwd.m13096a(executor);
        zzdwd.m13096a(zzdxqVar);
        return executor == zzdyj.INSTANCE ? executor : new h20(executor, zzdxqVar);
    }
}
