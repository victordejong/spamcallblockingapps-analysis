package com.google.android.gms.internal.firebase_messaging;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.firebase_messaging.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_messaging/a.class */
final class C2457a implements zzb {
    private C2457a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2457a(byte b) {
        this();
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzb
    public final ExecutorService zza(ThreadFactory threadFactory, int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzb
    public final ScheduledExecutorService zza(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
