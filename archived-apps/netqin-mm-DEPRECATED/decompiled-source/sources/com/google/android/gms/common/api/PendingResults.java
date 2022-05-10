package com.google.android.gms.common.api;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.internal.StatusPendingResult;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/PendingResults.class */
public final class PendingResults {
    @KeepForSdk
    /* renamed from: a */
    public static PendingResult<Status> m17753a(Status status, GoogleApiClient googleApiClient) {
        Preconditions.m17287a(status, "Result must not be null");
        StatusPendingResult statusPendingResult = new StatusPendingResult(googleApiClient);
        statusPendingResult.m17720a((StatusPendingResult) status);
        return statusPendingResult;
    }
}
