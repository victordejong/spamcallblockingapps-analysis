package com.google.android.gms.common.api;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/BatchResult.class */
public final class BatchResult implements Result {

    /* renamed from: a */
    public final Status f23035a;

    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.f23035a = status;
    }

    @Override // com.google.android.gms.common.api.Result
    /* renamed from: d */
    public final Status mo8632d() {
        return this.f23035a;
    }
}
