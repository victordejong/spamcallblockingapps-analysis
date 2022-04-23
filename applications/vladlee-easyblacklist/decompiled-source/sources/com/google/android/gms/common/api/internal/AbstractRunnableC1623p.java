package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* renamed from: com.google.android.gms.common.api.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/p.class */
abstract class AbstractRunnableC1623p implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zaak f6411a;

    private AbstractRunnableC1623p(zaak zaakVar) {
        this.f6411a = zaakVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ AbstractRunnableC1623p(zaak zaakVar, byte b) {
        this(zaakVar);
    }

    /* renamed from: a */
    protected abstract void mo5885a();

    @Override // java.lang.Runnable
    public void run() {
        Lock lock;
        zabe zabeVar;
        Lock lock2;
        lock = this.f6411a.f6435b;
        lock.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    mo5885a();
                }
            } catch (RuntimeException e) {
                zabeVar = this.f6411a.f6434a;
                zabeVar.m5831a(e);
            }
        } finally {
            lock2 = this.f6411a.f6435b;
            lock2.unlock();
        }
    }
}
