package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdvd.class */
public interface zzdvd {
    /* renamed from: a */
    ExecutorService mo13119a(int i);

    /* renamed from: a */
    ExecutorService mo13117a(ThreadFactory threadFactory, int i);

    /* renamed from: a */
    ScheduledExecutorService mo13118a(int i, ThreadFactory threadFactory, int i2);

    /* renamed from: b */
    ExecutorService mo13116b(int i);

    /* renamed from: b */
    ExecutorService mo13115b(int i, ThreadFactory threadFactory, int i2);

    /* renamed from: b */
    ExecutorService mo13114b(ThreadFactory threadFactory, int i);
}
