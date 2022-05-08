package com.google.android.gms.common.providers;

import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider.class */
public class PooledExecutorsProvider {

    /* renamed from: a */
    private static PooledExecutorFactory f6869a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory.class */
    public interface PooledExecutorFactory {
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    private PooledExecutorsProvider() {
    }

    public static PooledExecutorFactory getInstance() {
        PooledExecutorFactory pooledExecutorFactory;
        synchronized (PooledExecutorsProvider.class) {
            try {
                if (f6869a == null) {
                    f6869a = new C1679a();
                }
                pooledExecutorFactory = f6869a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pooledExecutorFactory;
    }
}
