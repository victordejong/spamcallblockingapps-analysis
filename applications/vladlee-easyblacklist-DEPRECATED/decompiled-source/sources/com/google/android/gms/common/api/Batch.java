package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch.class */
public final class Batch extends BasePendingResult<BatchResult> {

    /* renamed from: b */
    private int f6174b;

    /* renamed from: c */
    private boolean f6175c;

    /* renamed from: d */
    private boolean f6176d;

    /* renamed from: e */
    private final PendingResult<?>[] f6177e;

    /* renamed from: f */
    private final Object f6178f;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private List<PendingResult<?>> f6179a = new ArrayList();

        /* renamed from: b */
        private GoogleApiClient f6180b;

        public Builder(GoogleApiClient googleApiClient) {
            this.f6180b = googleApiClient;
        }

        public final <R extends Result> BatchResultToken<R> add(PendingResult<R> pendingResult) {
            BatchResultToken<R> batchResultToken = new BatchResultToken<>(this.f6179a.size());
            this.f6179a.add(pendingResult);
            return batchResultToken;
        }

        public final Batch build() {
            return new Batch(this.f6179a, this.f6180b, (byte) 0);
        }
    }

    private Batch(List<PendingResult<?>> list, GoogleApiClient googleApiClient) {
        super(googleApiClient);
        this.f6178f = new Object();
        this.f6174b = list.size();
        this.f6177e = new PendingResult[this.f6174b];
        if (list.isEmpty()) {
            setResult(new BatchResult(Status.RESULT_SUCCESS, this.f6177e));
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            PendingResult<?> pendingResult = list.get(i);
            this.f6177e[i] = pendingResult;
            pendingResult.addStatusListener(new C1572a(this));
        }
    }

    /* synthetic */ Batch(List list, GoogleApiClient googleApiClient, byte b) {
        this(list, googleApiClient);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static /* synthetic */ int m5983d(Batch batch) {
        int i = batch.f6174b;
        batch.f6174b = i - 1;
        return i;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    public final void cancel() {
        super.cancel();
        for (PendingResult<?> pendingResult : this.f6177e) {
            pendingResult.cancel();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final BatchResult createFailedResult(Status status) {
        return new BatchResult(status, this.f6177e);
    }
}
