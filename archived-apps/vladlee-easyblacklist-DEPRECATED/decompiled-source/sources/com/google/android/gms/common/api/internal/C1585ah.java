package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: com.google.android.gms.common.api.internal.ah */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ah.class */
final class C1585ah extends UnregisterListenerMethod<A, L> {

    /* renamed from: a */
    private final /* synthetic */ RegistrationMethods.Builder f6343a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1585ah(RegistrationMethods.Builder builder, ListenerHolder.ListenerKey listenerKey) {
        super(listenerKey);
        this.f6343a = builder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Boolean;>;)V */
    @Override // com.google.android.gms.common.api.internal.UnregisterListenerMethod
    /* renamed from: a */
    public final void mo5913a(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
        RemoteCall remoteCall;
        remoteCall = this.f6343a.f6321b;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
