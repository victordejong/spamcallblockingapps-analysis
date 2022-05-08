package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* renamed from: com.google.android.gms.common.api.internal.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/r.class */
final class C1625r implements GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ StatusPendingResult f6413a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1625r(StatusPendingResult statusPendingResult) {
        this.f6413a = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f6413a.setResult(new Status(8));
    }
}
