package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BatchResult.class */
public final class BatchResult implements Result {

    /* renamed from: a */
    private final Status f6181a;

    /* renamed from: b */
    private final PendingResult<?>[] f6182b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.f6181a = status;
        this.f6182b = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f6181a;
    }

    public final <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        Preconditions.checkArgument(batchResultToken.f6183a < this.f6182b.length, "The result token does not belong to this batch");
        return (R) this.f6182b[batchResultToken.f6183a].await(0L, TimeUnit.MILLISECONDS);
    }
}
