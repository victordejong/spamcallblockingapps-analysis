package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.TransformedResult;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/OptionalPendingResultImpl.class */
public final class OptionalPendingResultImpl<R extends Result> extends OptionalPendingResult<R> {

    /* renamed from: a */
    private final BasePendingResult<R> f6316a;

    public OptionalPendingResultImpl(PendingResult<R> pendingResult) {
        this.f6316a = (BasePendingResult) pendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void addStatusListener(PendingResult.StatusListener statusListener) {
        this.f6316a.addStatusListener(statusListener);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        return this.f6316a.await();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        return this.f6316a.await(j, timeUnit);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void cancel() {
        this.f6316a.cancel();
    }

    @Override // com.google.android.gms.common.api.OptionalPendingResult
    public final R get() {
        if (isDone()) {
            return await(0L, TimeUnit.MILLISECONDS);
        }
        throw new IllegalStateException("Result is not available. Check that isDone() returns true before calling get().");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final boolean isCanceled() {
        return this.f6316a.isCanceled();
    }

    @Override // com.google.android.gms.common.api.OptionalPendingResult
    public final boolean isDone() {
        return this.f6316a.isReady();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        this.f6316a.setResultCallback(resultCallback);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        this.f6316a.setResultCallback(resultCallback, j, timeUnit);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        return this.f6316a.then(resultTransform);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final Integer zal() {
        return this.f6316a.zal();
    }
}
