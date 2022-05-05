package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: com.google.android.gms.common.api.internal.am */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/am.class */
final class C1590am extends TaskApiCall<A, ResultT> {

    /* renamed from: a */
    private final /* synthetic */ TaskApiCall.Builder f6349a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1590am(TaskApiCall.Builder builder, Feature[] featureArr, boolean z) {
        super(featureArr, z, (byte) 0);
        this.f6349a = builder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Lcom/google/android/gms/tasks/TaskCompletionSource<TResultT;>;)V */
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    /* renamed from: a */
    public final void mo5911a(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
        RemoteCall remoteCall;
        remoteCall = this.f6349a.f6328a;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
