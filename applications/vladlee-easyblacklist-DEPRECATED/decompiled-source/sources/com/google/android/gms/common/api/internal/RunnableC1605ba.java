package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* renamed from: com.google.android.gms.common.api.internal.ba */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ba.class */
final class RunnableC1605ba implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C1602ay f6381a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1605ba(C1602ay ayVar) {
        this.f6381a = ayVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.f6381a.f6376m;
        lock.lock();
        try {
            C1602ay.m5895b(this.f6381a);
        } finally {
            lock2 = this.f6381a.f6376m;
            lock2.unlock();
        }
    }
}
