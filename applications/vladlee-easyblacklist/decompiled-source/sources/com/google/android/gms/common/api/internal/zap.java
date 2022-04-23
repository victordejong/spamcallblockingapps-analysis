package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zap.class */
public final class zap implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    /* renamed from: a */
    private final boolean f6546a;

    /* renamed from: b */
    private zar f6547b;
    public final Api<?> mApi;

    public zap(Api<?> api, boolean z) {
        this.mApi = api;
        this.f6546a = z;
    }

    /* renamed from: a */
    private final void m5805a() {
        Preconditions.checkNotNull(this.f6547b, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client.");
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        m5805a();
        this.f6547b.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m5805a();
        this.f6547b.zaa(connectionResult, this.mApi, this.f6546a);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        m5805a();
        this.f6547b.onConnectionSuspended(i);
    }

    public final void zaa(zar zarVar) {
        this.f6547b = zarVar;
    }
}
