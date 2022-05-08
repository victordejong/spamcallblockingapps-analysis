package com.google.android.gms.common.api.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaz.class */
final class zaaz implements GoogleApiClient.OnConnectionFailedListener {
    private final /* synthetic */ StatusPendingResult zahi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zaaz(zaaw zaawVar, StatusPendingResult statusPendingResult) {
        this.zahi = statusPendingResult;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zahi.setResult(new Status(8));
    }
}
