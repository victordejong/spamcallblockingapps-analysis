package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaau.class */
abstract class zaau implements Runnable {
    private final /* synthetic */ zaak zagi;

    private zaau(zaak zaakVar) {
        this.zagi = zaakVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zaau(zaak zaakVar, zaal zaalVar) {
        this(zaakVar);
    }

    @Override // java.lang.Runnable
    @WorkerThread
    public void run() {
        Lock lock;
        zabe zabeVar;
        Lock lock2;
        lock = this.zagi.zaen;
        lock.lock();
        try {
            if (!Thread.interrupted()) {
                zaan();
            }
        } catch (RuntimeException e) {
            zabeVar = this.zagi.zafs;
            zabeVar.zab(e);
        } finally {
            lock2 = this.zagi.zaen;
            lock2.unlock();
        }
    }

    @WorkerThread
    protected abstract void zaan();
}
