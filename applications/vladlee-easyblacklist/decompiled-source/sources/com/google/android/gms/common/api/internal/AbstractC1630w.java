package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/w.class */
public abstract class AbstractC1630w {

    /* renamed from: a */
    private final zabb f6423a;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC1630w(zabb zabbVar) {
        this.f6423a = zabbVar;
    }

    /* renamed from: a */
    protected abstract void mo5884a();

    /* renamed from: a */
    public final void m5883a(zabe zabeVar) {
        Lock lock;
        Lock lock2;
        zabb zabbVar;
        lock = zabeVar.f6486f;
        lock.lock();
        try {
            zabbVar = zabeVar.f6494n;
            if (zabbVar == this.f6423a) {
                mo5884a();
            }
        } finally {
            lock2 = zabeVar.f6486f;
            lock2.unlock();
        }
    }
}
