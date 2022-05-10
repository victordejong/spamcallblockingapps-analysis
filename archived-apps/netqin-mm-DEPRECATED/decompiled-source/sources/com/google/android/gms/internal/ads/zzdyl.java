package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.b20;
import p131c.p161d.p170b.p224d.p252g.p253a.k10;
import p131c.p161d.p170b.p224d.p252g.p253a.l10;
import p131c.p161d.p170b.p224d.p252g.p253a.m10;
import p131c.p161d.p170b.p224d.p252g.p253a.o10;
import p131c.p161d.p170b.p224d.p252g.p253a.y10;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdyl.class */
public class zzdyl<V> extends b20<V> {
    /* renamed from: d */
    public static <V> zzdyl<V> m12999d(zzdzc<V> zzdzcVar) {
        return zzdzcVar instanceof zzdyl ? (zzdyl) zzdzcVar : new y10(zzdzcVar);
    }

    /* renamed from: a */
    public final zzdyl<V> m13004a(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (zzdyl) zzdyq.m12994a(this, j, timeUnit, scheduledExecutorService);
    }

    /* renamed from: a */
    public final <T> zzdyl<T> m13003a(zzdvu<? super V, T> zzdvuVar, Executor executor) {
        zzdwd.m13096a(zzdvuVar);
        o10 o10Var = new o10(this, zzdvuVar);
        mo12976a((Runnable) o10Var, zzdze.m12974a(executor, o10Var));
        return o10Var;
    }

    /* renamed from: a */
    public final <T> zzdyl<T> m13002a(zzdya<? super V, T> zzdyaVar, Executor executor) {
        zzdwd.m13096a(executor);
        m10 m10Var = new m10(this, zzdyaVar);
        mo12976a((Runnable) m10Var, zzdze.m12974a(executor, m10Var));
        return m10Var;
    }

    /* renamed from: a */
    public final <X extends Throwable> zzdyl<V> m13001a(Class<X> cls, zzdvu<? super X, ? extends V> zzdvuVar, Executor executor) {
        k10 k10Var = new k10(this, cls, zzdvuVar);
        mo12976a((Runnable) k10Var, zzdze.m12974a(executor, k10Var));
        return k10Var;
    }

    /* renamed from: a */
    public final <X extends Throwable> zzdyl<V> m13000a(Class<X> cls, zzdya<? super X, ? extends V> zzdyaVar, Executor executor) {
        l10 l10Var = new l10(this, cls, zzdyaVar);
        mo12976a((Runnable) l10Var, zzdze.m12974a(executor, l10Var));
        return l10Var;
    }
}
