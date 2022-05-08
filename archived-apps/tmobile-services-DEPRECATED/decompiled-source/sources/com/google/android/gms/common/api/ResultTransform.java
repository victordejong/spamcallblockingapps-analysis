package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResultTransform.class */
public abstract class ResultTransform<R extends Result, S extends Result> {
    @NonNull
    /* renamed from: a */
    public Status m15003a(@NonNull Status status) {
        return status;
    }

    @Nullable
    @WorkerThread
    /* renamed from: b */
    public abstract PendingResult<S> m15002b(@NonNull R r);
}
