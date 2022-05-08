package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.IStatusCallback;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/StatusCallback.class */
public class StatusCallback extends IStatusCallback.Stub {
    @KeepForSdk

    /* renamed from: a */
    private final BaseImplementation.ResultHolder<Status> f7123a;

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    @KeepForSdk
    public void onResult(Status status) {
        this.f7123a.setResult(status);
    }
}
