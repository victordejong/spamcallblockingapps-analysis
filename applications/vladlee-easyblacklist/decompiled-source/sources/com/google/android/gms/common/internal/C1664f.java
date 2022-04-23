package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
/* renamed from: com.google.android.gms.common.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f.class */
final class C1664f implements PendingResultUtil.zaa {
    @Override // com.google.android.gms.common.internal.PendingResultUtil.zaa
    public final ApiException zaf(Status status) {
        return ApiExceptionUtil.fromStatus(status);
    }
}
