package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zas.class */
public final class zas implements zabs {

    /* renamed from: a */
    private final /* synthetic */ zaq f7335a;

    private zas(zaq zaqVar) {
        this.f7335a = zaqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zas(zaq zaqVar, zat zatVar) {
        this(zaqVar);
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    /* renamed from: a */
    public final void mo14688a(@NonNull ConnectionResult connectionResult) {
        Lock lock;
        Lock lock2;
        lock = this.f7335a.f7333l;
        lock.lock();
        try {
            this.f7335a.f7330i = connectionResult;
            this.f7335a.m14693t();
        } finally {
            lock2 = this.f7335a.f7333l;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    /* renamed from: b */
    public final void mo14687b(@Nullable Bundle bundle) {
        Lock lock;
        Lock lock2;
        lock = this.f7335a.f7333l;
        lock.lock();
        try {
            this.f7335a.m14706g(bundle);
            this.f7335a.f7330i = ConnectionResult.f6965j;
            this.f7335a.m14693t();
        } finally {
            lock2 = this.f7335a.f7333l;
            lock2.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabs
    /* renamed from: c */
    public final void mo14686c(int i, boolean z) {
        Lock lock;
        Lock lock2;
        boolean z2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        zabe zabeVar;
        lock = this.f7335a.f7333l;
        lock.lock();
        try {
            z2 = this.f7335a.f7332k;
            if (!z2) {
                connectionResult = this.f7335a.f7331j;
                if (connectionResult != null) {
                    connectionResult2 = this.f7335a.f7331j;
                    if (connectionResult2.m15090d0()) {
                        this.f7335a.f7332k = true;
                        zabeVar = this.f7335a.f7325d;
                        zabeVar.mo14715a(i);
                        return;
                    }
                }
            }
            this.f7335a.f7332k = false;
            this.f7335a.m14707f(i, z);
        } finally {
            lock2 = this.f7335a.f7333l;
            lock2.unlock();
        }
    }
}
