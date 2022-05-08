package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaca.class */
final class zaca extends RegisterListenerMethod<A, L> {

    /* renamed from: d */
    private final /* synthetic */ RegistrationMethods.Builder f7254d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;)V */
    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    /* renamed from: d */
    public final void mo14775d(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        RemoteCall remoteCall;
        remoteCall = this.f7254d.f7121a;
        remoteCall.mo14761a(anyClient, taskCompletionSource);
    }
}
