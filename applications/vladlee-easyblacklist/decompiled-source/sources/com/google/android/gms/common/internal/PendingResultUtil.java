package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Response;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil.class */
public class PendingResultUtil {

    /* renamed from: a */
    private static final zaa f6797a = new C1664f();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$ResultConverter.class */
    public interface ResultConverter<R extends Result, T> {
        T convert(R r);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/PendingResultUtil$zaa.class */
    public interface zaa {
        ApiException zaf(Status status);
    }

    public static <R extends Result, T extends Response<R>> Task<T> toResponseTask(PendingResult<R> pendingResult, T t) {
        return toTask(pendingResult, new C1665g(t));
    }

    public static <R extends Result, T> Task<T> toTask(PendingResult<R> pendingResult, ResultConverter<R, T> resultConverter) {
        zaa zaaVar = f6797a;
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.addStatusListener(new C1666h(pendingResult, taskCompletionSource, resultConverter, zaaVar));
        return taskCompletionSource.getTask();
    }

    public static <R extends Result> Task<Void> toVoidTask(PendingResult<R> pendingResult) {
        return toTask(pendingResult, new C1667i());
    }
}
