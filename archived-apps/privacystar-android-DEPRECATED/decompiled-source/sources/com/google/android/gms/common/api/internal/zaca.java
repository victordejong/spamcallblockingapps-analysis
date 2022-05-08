package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaca.class */
final class zaca extends RegisterListenerMethod<A, L> {
    private final /* synthetic */ RegistrationMethods.Builder zakg;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zaca(RegistrationMethods.Builder builder, ListenerHolder listenerHolder, Feature[] featureArr, boolean z) {
        super(listenerHolder, featureArr, z);
        this.zakg = builder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;)V */
    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    public final void registerListener(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
        RemoteCall remoteCall;
        remoteCall = this.zakg.zaka;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
