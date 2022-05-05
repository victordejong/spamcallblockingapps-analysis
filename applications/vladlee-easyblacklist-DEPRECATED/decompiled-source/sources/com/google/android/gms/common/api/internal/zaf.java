package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaf.class */
public final class zaf<ResultT> extends zab {

    /* renamed from: a */
    private final TaskApiCall<Api.AnyClient, ResultT> f6526a;

    /* renamed from: b */
    private final TaskCompletionSource<ResultT> f6527b;

    /* renamed from: c */
    private final StatusExceptionMapper f6528c;

    public zaf(int i, TaskApiCall<Api.AnyClient, ResultT> taskApiCall, TaskCompletionSource<ResultT> taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        super(i);
        this.f6527b = taskCompletionSource;
        this.f6526a = taskApiCall;
        this.f6528c = statusExceptionMapper;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zaa(Status status) {
        this.f6527b.trySetException(this.f6528c.getException(status));
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zaa(zaz zazVar, boolean z) {
        zazVar.m5780a(this.f6527b, z);
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zaa(RuntimeException runtimeException) {
        this.f6527b.trySetException(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final Feature[] zaa(GoogleApiManager.zaa<?> zaaVar) {
        return this.f6526a.zabr();
    }

    @Override // com.google.android.gms.common.api.internal.zab
    public final boolean zab(GoogleApiManager.zaa<?> zaaVar) {
        return this.f6526a.shouldAutoResolveMissingFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final void zac(GoogleApiManager.zaa<?> zaaVar) {
        try {
            this.f6526a.mo5911a(zaaVar.zaad(), this.f6527b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            zaa(zac.m5828a(e2));
        } catch (RuntimeException e3) {
            zaa(e3);
        }
    }
}
