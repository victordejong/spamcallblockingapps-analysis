package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ApiExceptionUtil.class */
public class ApiExceptionUtil {
    @NonNull
    @KeepForSdk
    /* renamed from: a */
    public static ApiException m14597a(@NonNull Status status) {
        return status.m14998W() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
