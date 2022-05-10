package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdzb.class */
public interface zzdzb extends ExecutorService {
    /* renamed from: a */
    zzdzc<?> mo12978a(Runnable runnable);

    /* renamed from: a */
    <T> zzdzc<T> mo12977a(Callable<T> callable);
}
