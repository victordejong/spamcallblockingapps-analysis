package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall.class */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {

    /* renamed from: a */
    private final Feature[] f6326a;

    /* renamed from: b */
    private final boolean f6327b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall$Builder.class */
    public static class Builder<A extends Api.AnyClient, ResultT> {

        /* renamed from: a */
        private RemoteCall<A, TaskCompletionSource<ResultT>> f6328a;

        /* renamed from: b */
        private boolean f6329b;

        /* renamed from: c */
        private Feature[] f6330c;

        private Builder() {
            this.f6329b = true;
        }

        /* synthetic */ Builder(byte b) {
            this();
        }

        public TaskApiCall<A, ResultT> build() {
            Preconditions.checkArgument(this.f6328a != null, "execute parameter required");
            return new C1590am(this, this.f6330c, this.f6329b);
        }

        @Deprecated
        public Builder<A, ResultT> execute(final BiConsumer<A, TaskCompletionSource<ResultT>> biConsumer) {
            this.f6328a = new RemoteCall(biConsumer) { // from class: com.google.android.gms.common.api.internal.al

                /* renamed from: a */
                private final BiConsumer f6348a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6348a = biConsumer;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.f6348a.accept((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        public Builder<A, ResultT> run(RemoteCall<A, TaskCompletionSource<ResultT>> remoteCall) {
            this.f6328a = remoteCall;
            return this;
        }

        public Builder<A, ResultT> setAutoResolveMissingFeatures(boolean z) {
            this.f6329b = z;
            return this;
        }

        public Builder<A, ResultT> setFeatures(Feature... featureArr) {
            this.f6330c = featureArr;
            return this;
        }
    }

    @Deprecated
    public TaskApiCall() {
        this.f6326a = null;
        this.f6327b = false;
    }

    private TaskApiCall(Feature[] featureArr, boolean z) {
        this.f6326a = featureArr;
        this.f6327b = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ TaskApiCall(Feature[] featureArr, boolean z, byte b) {
        this(featureArr, z);
    }

    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> builder() {
        return new Builder<>((byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo5911a(A a, TaskCompletionSource<ResultT> taskCompletionSource);

    public boolean shouldAutoResolveMissingFeatures() {
        return this.f6327b;
    }

    public final Feature[] zabr() {
        return this.f6326a;
    }
}
