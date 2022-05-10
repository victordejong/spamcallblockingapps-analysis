package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/ResultTransform.class */
public abstract class ResultTransform<R extends Result, S extends Result> {
    /* renamed from: a */
    public abstract PendingResult<S> m17748a(R r);

    /* renamed from: a */
    public Status m17747a(Status status) {
        return status;
    }
}
