package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.SimpleClientAdapter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation.class */
public class BaseImplementation {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl.class */
    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {

        /* renamed from: b */
        private final Api.AnyClientKey<A> f6242b;

        /* renamed from: c */
        private final Api<?> f6243c;

        /* JADX INFO: Access modifiers changed from: protected */
        public ApiMethodImpl(Api<?> api, GoogleApiClient googleApiClient) {
            super((GoogleApiClient) Preconditions.checkNotNull(googleApiClient, "GoogleApiClient must not be null"));
            Preconditions.checkNotNull(api, "Api must not be null");
            this.f6242b = (Api.AnyClientKey<A>) api.getClientKey();
            this.f6243c = api;
        }

        /* renamed from: a */
        private void m5969a(RemoteException remoteException) {
            setFailedResult(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        /* renamed from: a */
        protected abstract void mo5655a(A a);

        public final Api<?> getApi() {
            return this.f6243c;
        }

        public final Api.AnyClientKey<A> getClientKey() {
            return this.f6242b;
        }

        public final void run(A a) {
            A a2 = a;
            if (a instanceof SimpleClientAdapter) {
                a2 = ((SimpleClientAdapter) a).getClient();
            }
            try {
                mo5655a((ApiMethodImpl<R, A>) a2);
            } catch (DeadObjectException e) {
                m5969a(e);
                throw e;
            } catch (RemoteException e2) {
                m5969a(e2);
            }
        }

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        public final void setFailedResult(Status status) {
            Preconditions.checkArgument(!status.isSuccess(), "Failed result must not be success");
            setResult((ApiMethodImpl<R, A>) createFailedResult(status));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        public /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.setResult((ApiMethodImpl<R, A>) ((Result) obj));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ResultHolder.class */
    public interface ResultHolder<R> {
        void setFailedResult(Status status);

        void setResult(R r);
    }
}
