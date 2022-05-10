package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.ClientLibraryUtils;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3905p6;
import p131c.p161d.p170b.p224d.p252g.p253a.C4019s6;
import p131c.p161d.p170b.p224d.p252g.p253a.ExecutorC3942q6;
import p131c.p161d.p170b.p224d.p252g.p253a.ThreadFactoryC3982r6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbz.class */
public final class zzbbz {

    /* renamed from: a */
    public static final zzdzb f24764a;

    /* renamed from: b */
    public static final zzdzb f24765b;

    /* renamed from: c */
    public static final zzdzb f24766c;

    /* renamed from: d */
    public static final ScheduledExecutorService f24767d;

    /* renamed from: e */
    public static final zzdzb f24768e;

    /* renamed from: f */
    public static final zzdzb f24769f;

    static {
        ExecutorService executorService;
        ExecutorService executorService2;
        f24764a = m15842a(ClientLibraryUtils.m17107a() ? zzdvg.m13110a().mo13117a(m15843a("Default"), zzdvl.f27899b) : new ThreadPoolExecutor(2, (int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, 10L, TimeUnit.SECONDS, new SynchronousQueue(), m15843a("Default")));
        if (ClientLibraryUtils.m17107a()) {
            executorService = zzdvg.m13110a().mo13115b(5, m15843a("Loader"), zzdvl.f27898a);
        } else {
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m15843a("Loader"));
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            executorService = threadPoolExecutor;
        }
        f24765b = m15842a(executorService);
        if (ClientLibraryUtils.m17107a()) {
            executorService2 = zzdvg.m13110a().mo13114b(m15843a("Activeview"), zzdvl.f27898a);
        } else {
            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(1, 1, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), m15843a("Activeview"));
            threadPoolExecutor2.allowCoreThreadTimeOut(true);
            executorService2 = threadPoolExecutor2;
        }
        f24766c = m15842a(executorService2);
        f24767d = new C3905p6(3, m15843a("Schedule"));
        f24768e = m15842a(new ExecutorC3942q6());
        f24769f = m15842a(zzdze.m12975a());
    }

    /* renamed from: a */
    public static zzdzb m15842a(Executor executor) {
        return new C4019s6(executor, null);
    }

    /* renamed from: a */
    public static ThreadFactory m15843a(String str) {
        return new ThreadFactoryC3982r6(str);
    }
}
