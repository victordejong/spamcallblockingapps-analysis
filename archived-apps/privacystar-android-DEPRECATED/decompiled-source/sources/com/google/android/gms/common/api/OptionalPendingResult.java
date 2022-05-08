package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/OptionalPendingResult.class */
public abstract class OptionalPendingResult<R extends Result> extends PendingResult<R> {
    public abstract R get();

    public abstract boolean isDone();
}
