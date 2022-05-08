package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zat.class */
public final class zat implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zaq f7336f;

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.f7336f.f7333l;
        lock.lock();
        try {
            this.f7336f.m14693t();
        } finally {
            lock2 = this.f7336f.f7333l;
            lock2.unlock();
        }
    }
}
