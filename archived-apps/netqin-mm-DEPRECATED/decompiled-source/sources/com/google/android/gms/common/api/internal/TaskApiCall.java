package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall.class */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {

    /* renamed from: a */
    public final Feature[] f23178a = null;

    /* renamed from: b */
    public final boolean f23179b = false;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall$Builder.class */
    public static class Builder<A extends Api.AnyClient, ResultT> {
    }

    @KeepForSdk
    /* renamed from: a */
    public abstract void mo17595a(A a, TaskCompletionSource<ResultT> taskCompletionSource) throws RemoteException;

    @KeepForSdk
    /* renamed from: a */
    public boolean m17596a() {
        return this.f23179b;
    }

    /* renamed from: b */
    public final Feature[] m17594b() {
        return this.f23178a;
    }
}
