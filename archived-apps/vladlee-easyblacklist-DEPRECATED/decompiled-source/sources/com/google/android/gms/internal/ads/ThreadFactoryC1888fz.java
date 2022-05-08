package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.google.android.gms.internal.ads.fz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fz.class */
final class ThreadFactoryC1888fz implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f8488a = new AtomicInteger(1);

    /* renamed from: b */
    private final /* synthetic */ String f8489b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ThreadFactoryC1888fz(String str) {
        this.f8489b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f8489b;
        int andIncrement = this.f8488a.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("AdWorker(");
        sb.append(str);
        sb.append(") #");
        sb.append(andIncrement);
        return new Thread(runnable, sb.toString());
    }
}
