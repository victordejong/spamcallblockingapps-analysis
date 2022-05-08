package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/UnregisterListenerMethod.class */
public abstract class UnregisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a */
    private final ListenerHolder.ListenerKey<L> f6331a;

    /* JADX INFO: Access modifiers changed from: protected */
    public UnregisterListenerMethod(ListenerHolder.ListenerKey<L> listenerKey) {
        this.f6331a = listenerKey;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo5913a(A a, TaskCompletionSource<Boolean> taskCompletionSource);

    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.f6331a;
    }
}
