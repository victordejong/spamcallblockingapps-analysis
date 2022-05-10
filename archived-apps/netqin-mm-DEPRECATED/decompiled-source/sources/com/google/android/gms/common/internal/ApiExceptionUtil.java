package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ApiExceptionUtil.class */
public class ApiExceptionUtil {
    @KeepForSdk
    /* renamed from: a */
    public static ApiException m17398a(Status status) {
        return status.m17741v() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
