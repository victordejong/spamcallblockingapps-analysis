package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/b.class */
public class C0896b {
    /* renamed from: a */
    public static ApiException m3452a(Status status) {
        return status.A1() ? new ResolvableApiException(status) : new ApiException(status);
    }
}
