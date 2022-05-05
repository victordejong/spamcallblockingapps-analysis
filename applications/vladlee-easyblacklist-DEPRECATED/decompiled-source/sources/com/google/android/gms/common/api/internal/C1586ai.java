package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.tasks.TaskCompletionSource;
/* renamed from: com.google.android.gms.common.api.internal.ai */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ai.class */
final class C1586ai extends RegisterListenerMethod<A, L> {

    /* renamed from: a */
    private final /* synthetic */ RegistrationMethods.Builder f6344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1586ai(RegistrationMethods.Builder builder, ListenerHolder listenerHolder, Feature[] featureArr, boolean z) {
        super(listenerHolder, featureArr, z);
        this.f6344a = builder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Incorrect types in method signature: (TA;Lcom/google/android/gms/tasks/TaskCompletionSource<Ljava/lang/Void;>;)V */
    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    /* renamed from: a */
    public final void mo5912a(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
        RemoteCall remoteCall;
        remoteCall = this.f6344a.f6320a;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
