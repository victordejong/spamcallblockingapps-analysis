package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.IStatusCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/StatusCallback.class */
public class StatusCallback extends IStatusCallback.Stub {

    /* renamed from: a */
    private final BaseImplementation.ResultHolder<Status> f6325a;

    public StatusCallback(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.f6325a = resultHolder;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public void onResult(Status status) {
        this.f6325a.setResult(status);
    }
}
