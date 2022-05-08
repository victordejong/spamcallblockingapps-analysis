package com.google.android.gms.common.internal;

import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zag.class */
public final class zag implements BaseGmsClient.BaseOnConnectionFailedListener {
    private final /* synthetic */ GoogleApiClient.OnConnectionFailedListener zaoj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zag(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zaoj = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(@NonNull ConnectionResult connectionResult) {
        this.zaoj.onConnectionFailed(connectionResult);
    }
}
