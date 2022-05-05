package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegistrationMethods.class */
public class RegistrationMethods<A extends Api.AnyClient, L> {
    public final RegisterListenerMethod<A, L> zaka;
    public final UnregisterListenerMethod<A, L> zakb;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegistrationMethods$Builder.class */
    public static class Builder<A extends Api.AnyClient, L> {

        /* renamed from: a */
        private RemoteCall<A, TaskCompletionSource<Void>> f6320a;

        /* renamed from: b */
        private RemoteCall<A, TaskCompletionSource<Boolean>> f6321b;

        /* renamed from: c */
        private ListenerHolder<L> f6322c;

        /* renamed from: d */
        private Feature[] f6323d;

        /* renamed from: e */
        private boolean f6324e;

        private Builder() {
            this.f6324e = true;
        }

        /* synthetic */ Builder(byte b) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final /* synthetic */ void m5918a(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
            this.f6320a.accept(anyClient, taskCompletionSource);
        }

        public RegistrationMethods<A, L> build() {
            boolean z = true;
            Preconditions.checkArgument(this.f6320a != null, "Must set register function");
            Preconditions.checkArgument(this.f6321b != null, "Must set unregister function");
            if (this.f6322c == null) {
                z = false;
            }
            Preconditions.checkArgument(z, "Must set holder");
            return new RegistrationMethods<>(new C1586ai(this, this.f6322c, this.f6323d, this.f6324e), new C1585ah(this, this.f6322c.getListenerKey()), (byte) 0);
        }

        public Builder<A, L> register(RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.f6320a = remoteCall;
            return this;
        }

        @Deprecated
        public Builder<A, L> register(final BiConsumer<A, TaskCompletionSource<Void>> biConsumer) {
            this.f6320a = new RemoteCall(biConsumer) { // from class: com.google.android.gms.common.api.internal.ag

                /* renamed from: a */
                private final BiConsumer f6342a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6342a = biConsumer;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.f6342a.accept((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        public Builder<A, L> setAutoResolveMissingFeatures(boolean z) {
            this.f6324e = z;
            return this;
        }

        public Builder<A, L> setFeatures(Feature... featureArr) {
            this.f6323d = featureArr;
            return this;
        }

        public Builder<A, L> unregister(RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.f6321b = remoteCall;
            return this;
        }

        @Deprecated
        public Builder<A, L> unregister(BiConsumer<A, TaskCompletionSource<Boolean>> biConsumer) {
            this.f6320a = new RemoteCall(this) { // from class: com.google.android.gms.common.api.internal.af

                /* renamed from: a */
                private final RegistrationMethods.Builder f6341a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6341a = this;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.f6341a.m5918a((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        public Builder<A, L> withHolder(ListenerHolder<L> listenerHolder) {
            this.f6322c = listenerHolder;
            return this;
        }
    }

    private RegistrationMethods(RegisterListenerMethod<A, L> registerListenerMethod, UnregisterListenerMethod<A, L> unregisterListenerMethod) {
        this.zaka = registerListenerMethod;
        this.zakb = unregisterListenerMethod;
    }

    /* synthetic */ RegistrationMethods(RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, byte b) {
        this(registerListenerMethod, unregisterListenerMethod);
    }

    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        return new Builder<>((byte) 0);
    }
}
