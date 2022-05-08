package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.PendingResultUtil;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zai.class */
final class zai implements PendingResultUtil.zaa {
    zai() {
    }

    @Override // com.google.android.gms.common.internal.PendingResultUtil.zaa
    /* renamed from: a */
    public final ApiException mo14433a(Status status) {
        return ApiExceptionUtil.m14597a(status);
    }
}
