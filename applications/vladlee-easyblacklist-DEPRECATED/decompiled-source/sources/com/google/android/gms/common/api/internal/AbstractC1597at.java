package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.at */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/at.class */
public abstract class AbstractC1597at<T> extends zab {

    /* renamed from: a */
    protected final TaskCompletionSource<T> f6357a;

    public AbstractC1597at(int i, TaskCompletionSource<T> taskCompletionSource) {
        super(i);
        this.f6357a = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public void zaa(Status status) {
        this.f6357a.trySetException(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public void zaa(zaz zazVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public void zaa(RuntimeException runtimeException) {
        this.f6357a.trySetException(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zac(GoogleApiManager.zaa<?> zaaVar) {
        try {
            zad(zaaVar);
        } catch (DeadObjectException e) {
            zaa(zac.m5828a(e));
            throw e;
        } catch (RemoteException e2) {
            zaa(zac.m5828a(e2));
        } catch (RuntimeException e3) {
            zaa(e3);
        }
    }

    protected abstract void zad(GoogleApiManager.zaa<?> zaaVar);
}
