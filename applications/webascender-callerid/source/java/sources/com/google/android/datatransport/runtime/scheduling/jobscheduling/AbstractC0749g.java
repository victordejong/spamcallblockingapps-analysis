package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.d;
import g.f.a.b.d;
import g.f.a.b.i.y.a;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g.class */
public abstract class AbstractC0749g {

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$a.class */
    public static class C0750a {

        /* renamed from: a */
        private a f3215a;

        /* renamed from: b */
        private Map<d, AbstractC0751b> f3216b = new HashMap();

        /* renamed from: a */
        public C0750a m3813a(d dVar, AbstractC0751b abstractC0751b) {
            this.f3216b.put(dVar, abstractC0751b);
            return this;
        }

        /* renamed from: b */
        public AbstractC0749g m3812b() {
            Objects.requireNonNull(this.f3215a, "missing required property: clock");
            if (this.f3216b.keySet().size() >= d.values().length) {
                Map<d, AbstractC0751b> map = this.f3216b;
                this.f3216b = new HashMap();
                return AbstractC0749g.m3820d(this.f3215a, map);
            }
            throw new IllegalStateException("Not all priorities have been configured");
        }

        /* renamed from: c */
        public C0750a m3811c(a aVar) {
            this.f3215a = aVar;
            return this;
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$b.class */
    public static abstract class AbstractC0751b {

        /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a.class */
        public static abstract class AbstractC0752a {
            /* renamed from: a */
            public abstract AbstractC0751b m3806a();

            /* renamed from: b */
            public abstract AbstractC0752a m3805b(long j);

            /* renamed from: c */
            public abstract AbstractC0752a m3804c(Set<EnumC0753c> set);

            /* renamed from: d */
            public abstract AbstractC0752a m3803d(long j);
        }

        /* renamed from: a */
        public static AbstractC0752a m3810a() {
            d.b bVar = new d.b();
            bVar.c(Collections.emptySet());
            return bVar;
        }

        /* renamed from: b */
        abstract long m3809b();

        /* renamed from: c */
        abstract Set<EnumC0753c> m3808c();

        /* renamed from: d */
        abstract long m3807d();
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$c.class */
    public enum EnumC0753c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    private long m3823a(int i, long j) {
        int i2;
        return (long) (Math.pow(3.0d, i - 1) * ((double) j) * Math.max(1.0d, Math.log(10000.0d) / Math.log((((j > 1L ? 1 : (j == 1L ? 0 : -1)) > 0 ? j : true) == true ? 1L : 0L) * i2)));
    }

    /* renamed from: b */
    public static C0750a m3822b() {
        return new C0750a();
    }

    /* renamed from: d */
    static AbstractC0749g m3820d(a aVar, Map<g.f.a.b.d, AbstractC0751b> map) {
        return new c(aVar, map);
    }

    /* renamed from: f */
    public static AbstractC0749g m3818f(a aVar) {
        C0750a m3822b = m3822b();
        g.f.a.b.d dVar = g.f.a.b.d.DEFAULT;
        AbstractC0751b.AbstractC0752a m3810a = AbstractC0751b.m3810a();
        m3810a.m3805b(30000L);
        m3810a.m3803d(86400000L);
        m3822b.m3813a(dVar, m3810a.m3806a());
        g.f.a.b.d dVar2 = g.f.a.b.d.HIGHEST;
        AbstractC0751b.AbstractC0752a m3810a2 = AbstractC0751b.m3810a();
        m3810a2.m3805b(1000L);
        m3810a2.m3803d(86400000L);
        m3822b.m3813a(dVar2, m3810a2.m3806a());
        g.f.a.b.d dVar3 = g.f.a.b.d.VERY_LOW;
        AbstractC0751b.AbstractC0752a m3810a3 = AbstractC0751b.m3810a();
        m3810a3.m3805b(86400000L);
        m3810a3.m3803d(86400000L);
        m3810a3.m3804c(m3815i(EnumC0753c.NETWORK_UNMETERED, EnumC0753c.DEVICE_IDLE));
        m3822b.m3813a(dVar3, m3810a3.m3806a());
        m3822b.m3811c(aVar);
        return m3822b.m3812b();
    }

    /* renamed from: i */
    private static <T> Set<T> m3815i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    /* renamed from: j */
    private void m3814j(JobInfo.Builder builder, Set<EnumC0753c> set) {
        if (set.contains(EnumC0753c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(EnumC0753c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(EnumC0753c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    /* renamed from: c */
    public JobInfo.Builder m3821c(JobInfo.Builder builder, g.f.a.b.d dVar, long j, int i) {
        builder.setMinimumLatency(m3817g(dVar, j, i));
        m3814j(builder, m3816h().get(dVar).m3808c());
        return builder;
    }

    /* renamed from: e */
    abstract a m3819e();

    /* renamed from: g */
    public long m3817g(g.f.a.b.d dVar, long j, int i) {
        long a = m3819e().a();
        AbstractC0751b abstractC0751b = m3816h().get(dVar);
        return Math.min(Math.max(m3823a(i, abstractC0751b.m3809b()), j - a), abstractC0751b.m3807d());
    }

    /* renamed from: h */
    abstract Map<g.f.a.b.d, AbstractC0751b> m3816h();
}
