package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegistrationMethods.class */
public class RegistrationMethods<A extends Api.AnyClient, L> {

    /* renamed from: a */
    public final RegisterListenerMethod<A, L> f7119a;

    /* renamed from: b */
    public final UnregisterListenerMethod<A, L> f7120b;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegistrationMethods$Builder.class */
    public static class Builder<A extends Api.AnyClient, L> {

        /* renamed from: a */
        private RemoteCall<A, TaskCompletionSource<Void>> f7121a;

        /* renamed from: b */
        private RemoteCall<A, TaskCompletionSource<Boolean>> f7122b;

        private Builder() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public final /* synthetic */ void m14866b(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) throws RemoteException {
            this.f7121a.mo14761a(anyClient, taskCompletionSource);
        }
    }
}
