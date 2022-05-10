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
    public final BaseImplementation.ResultHolder<Status> f23177a;

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    @KeepForSdk
    /* renamed from: a */
    public void mo17599a(Status status) {
        this.f23177a.mo17723a(status);
    }
}
