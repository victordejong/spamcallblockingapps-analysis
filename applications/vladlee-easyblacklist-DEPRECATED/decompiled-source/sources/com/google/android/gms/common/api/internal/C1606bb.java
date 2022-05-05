package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.bb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bb.class */
public final class C1606bb implements zabs {

    /* renamed from: a */
    private final /* synthetic */ C1602ay f6382a;

    private C1606bb(C1602ay ayVar) {
        this.f6382a = ayVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1606bb(C1602ay ayVar, byte b) {
        this(ayVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zab(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        zabe zabeVar;
        lock = this.f6382a.f6376m;
        lock.lock();
        try {
            z2 = this.f6382a.f6375l;
            if (z2) {
                this.f6382a.f6375l = false;
                C1602ay.m5901a(this.f6382a, i, z);
            } else {
                this.f6382a.f6375l = true;
                zabeVar = this.f6382a.f6367d;
                zabeVar.onConnectionSuspended(i);
            }
        } finally {
            lock2 = this.f6382a.f6376m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zab(Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f6382a.f6376m;
        lock.lock();
        try {
            this.f6382a.f6374k = ConnectionResult.RESULT_SUCCESS;
            C1602ay.m5895b(this.f6382a);
        } finally {
            lock2 = this.f6382a.f6376m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zac(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f6382a.f6376m;
        lock.lock();
        try {
            this.f6382a.f6374k = connectionResult;
            C1602ay.m5895b(this.f6382a);
        } finally {
            lock2 = this.f6382a.f6376m;
            lock2.unlock();
        }
    }
}
