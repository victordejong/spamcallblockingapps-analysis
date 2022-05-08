package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.internal.OptionalPendingResultImpl;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults.class */
public final class PendingResults {

    /* renamed from: com.google.android.gms.common.api.PendingResults$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults$a.class */
    private static final class C1569a<R extends Result> extends BasePendingResult<R> {

        /* renamed from: b */
        private final R f6219b;

        public C1569a(R r) {
            super(Looper.getMainLooper());
            this.f6219b = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public final R createFailedResult(Status status) {
            if (status.getStatusCode() == this.f6219b.getStatus().getStatusCode()) {
                return this.f6219b;
            }
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    /* renamed from: com.google.android.gms.common.api.PendingResults$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults$b.class */
    private static final class C1570b<R extends Result> extends BasePendingResult<R> {
        public C1570b(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public final R createFailedResult(Status status) {
            throw new UnsupportedOperationException("Creating failed results is not supported");
        }
    }

    /* renamed from: com.google.android.gms.common.api.PendingResults$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults$c.class */
    private static final class C1571c<R extends Result> extends BasePendingResult<R> {

        /* renamed from: b */
        private final R f6220b;

        public C1571c(GoogleApiClient googleApiClient, R r) {
            super(googleApiClient);
            this.f6220b = r;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        public final R createFailedResult(Status status) {
            return this.f6220b;
        }
    }

    private PendingResults() {
    }

    public static PendingResult<Status> canceledPendingResult() {
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.cancel();
        return statusPendingResult;
    }

    public static <R extends Result> PendingResult<R> canceledPendingResult(R r) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(r.getStatus().getStatusCode() == 16, "Status code must be CommonStatusCodes.CANCELED");
        C1569a aVar = new C1569a(r);
        aVar.cancel();
        return aVar;
    }

    public static <R extends Result> PendingResult<R> immediateFailedResult(R r, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        Preconditions.checkArgument(!r.getStatus().isSuccess(), "Status code must not be SUCCESS");
        C1571c cVar = new C1571c(googleApiClient, r);
        cVar.setResult(r);
        return cVar;
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r) {
        Preconditions.checkNotNull(r, "Result must not be null");
        C1570b bVar = new C1570b(null);
        bVar.setResult(r);
        return new OptionalPendingResultImpl(bVar);
    }

    public static <R extends Result> OptionalPendingResult<R> immediatePendingResult(R r, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(r, "Result must not be null");
        C1570b bVar = new C1570b(googleApiClient);
        bVar.setResult(r);
        return new OptionalPendingResultImpl(bVar);
    }

    public static PendingResult<Status> immediatePendingResult(Status status) {
        Preconditions.checkNotNull(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(Looper.getMainLooper());
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }

    public static PendingResult<Status> immediatePendingResult(Status status, GoogleApiClient googleApiClient) {
        Preconditions.checkNotNull(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.setResult(status);
        return statusPendingResult;
    }
}
