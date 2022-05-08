package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zat.class */
public final class zat implements Runnable {
    private final /* synthetic */ zas zaep;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zat(zas zasVar) {
        this.zaep = zasVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.zaep.zaen;
        lock.lock();
        try {
            this.zaep.zax();
        } finally {
            lock2 = this.zaep.zaen;
            lock2.unlock();
        }
    }
}
