package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabz.class */
final class zabz extends UnregisterListenerMethod<A, L> {

    /* renamed from: b */
    private final /* synthetic */ RegistrationMethods.Builder f7253b;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Boolean;>;)V */
    @Override // com.google.android.gms.common.api.internal.UnregisterListenerMethod
    /* renamed from: b */
    public final void mo14778b(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        RemoteCall remoteCall;
        remoteCall = this.f7253b.f7122b;
        remoteCall.mo14761a(anyClient, taskCompletionSource);
    }
}
