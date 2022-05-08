package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* renamed from: com.google.android.gms.common.internal.service.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/d.class */
final class BinderC1674d extends zaa {

    /* renamed from: a */
    private final BaseImplementation.ResultHolder<Status> f6846a;

    public BinderC1674d(BaseImplementation.ResultHolder<Status> resultHolder) {
        this.f6846a = resultHolder;
    }

    @Override // com.google.android.gms.common.internal.service.zaa, com.google.android.gms.common.internal.service.zak
    public final void zaj(int i) {
        this.f6846a.setResult(new Status(i));
    }
}
