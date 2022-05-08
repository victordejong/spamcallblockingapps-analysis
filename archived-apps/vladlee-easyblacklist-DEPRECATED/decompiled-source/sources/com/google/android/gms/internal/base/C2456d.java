package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.base.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/base/d.class */
final class C2456d implements zal {
    private C2456d() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2456d(byte b) {
        this();
    }

    @Override // com.google.android.gms.internal.base.zal
    public final ExecutorService zaa(int i, int i2) {
        return zaa(4, Executors.defaultThreadFactory(), i2);
    }

    @Override // com.google.android.gms.internal.base.zal
    public final ExecutorService zaa(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
