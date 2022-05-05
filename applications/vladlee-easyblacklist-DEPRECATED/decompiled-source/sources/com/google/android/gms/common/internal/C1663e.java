package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: com.google.android.gms.common.internal.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/e.class */
final class C1663e implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ OnConnectionFailedListener f6826a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1663e(OnConnectionFailedListener onConnectionFailedListener) {
        this.f6826a = onConnectionFailedListener;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f6826a.onConnectionFailed(connectionResult);
    }
}
