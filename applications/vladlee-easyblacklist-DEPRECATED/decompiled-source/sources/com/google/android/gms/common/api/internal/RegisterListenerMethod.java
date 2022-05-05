package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegisterListenerMethod.class */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {

    /* renamed from: a */
    private final ListenerHolder<L> f6317a;

    /* renamed from: b */
    private final Feature[] f6318b;

    /* renamed from: c */
    private final boolean f6319c;

    /* JADX INFO: Access modifiers changed from: protected */
    public RegisterListenerMethod(ListenerHolder<L> listenerHolder, Feature[] featureArr, boolean z) {
        this.f6317a = listenerHolder;
        this.f6318b = featureArr;
        this.f6319c = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo5912a(A a, TaskCompletionSource<Void> taskCompletionSource);

    public void clearListener() {
        this.f6317a.clear();
    }

    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.f6317a.getListenerKey();
    }

    public Feature[] getRequiredFeatures() {
        return this.f6318b;
    }

    public final boolean shouldAutoResolveMissingFeatures() {
        return this.f6319c;
    }
}
