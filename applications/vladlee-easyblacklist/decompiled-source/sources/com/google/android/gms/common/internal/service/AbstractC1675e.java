package com.google.android.gms.common.internal.service;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.internal.service.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/service/e.class */
public abstract class AbstractC1675e extends AbstractC1673c<Status> {
    public AbstractC1675e(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public /* synthetic */ Result createFailedResult(Status status) {
        return status;
    }
}
