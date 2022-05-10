package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch.class */
public final class Batch extends BasePendingResult<BatchResult> {

    /* renamed from: p */
    public final PendingResult<?>[] f23034p;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Batch$Builder.class */
    public static final class Builder {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    /* renamed from: a */
    public final BatchResult mo17597a(Status status) {
        return new BatchResult(status, this.f23034p);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.common.api.PendingResult
    /* renamed from: a */
    public final void mo17508a() {
        super.mo17508a();
        for (PendingResult<?> pendingResult : this.f23034p) {
            pendingResult.mo17508a();
        }
    }
}
