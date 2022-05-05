package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.az */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/az.class */
public final class C1603az implements zabs {

    /* renamed from: a */
    private final /* synthetic */ C1602ay f6378a;

    private C1603az(C1602ay ayVar) {
        this.f6378a = ayVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1603az(C1602ay ayVar, byte b) {
        this(ayVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zab(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        zabe zabeVar;
        lock = this.f6378a.f6376m;
        lock.lock();
        try {
            z2 = this.f6378a.f6375l;
            if (!z2) {
                connectionResult = this.f6378a.f6374k;
                if (connectionResult != null) {
                    connectionResult2 = this.f6378a.f6374k;
                    if (connectionResult2.isSuccess()) {
                        this.f6378a.f6375l = true;
                        zabeVar = this.f6378a.f6368e;
                        zabeVar.onConnectionSuspended(i);
                    }
                }
            }
            this.f6378a.f6375l = false;
            C1602ay.m5901a(this.f6378a, i, z);
        } finally {
            lock2 = this.f6378a.f6376m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zab(Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f6378a.f6376m;
        lock.lock();
        try {
            C1602ay.m5900a(this.f6378a, bundle);
            this.f6378a.f6373j = ConnectionResult.RESULT_SUCCESS;
            C1602ay.m5895b(this.f6378a);
        } finally {
            lock2 = this.f6378a.f6376m;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    public final void zac(ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f6378a.f6376m;
        lock.lock();
        try {
            this.f6378a.f6373j = connectionResult;
            C1602ay.m5895b(this.f6378a);
        } finally {
            lock2 = this.f6378a.f6376m;
            lock2.unlock();
        }
    }
}
