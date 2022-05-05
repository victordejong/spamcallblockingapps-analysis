package com.google.android.gms.common.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: com.google.android.gms.common.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d.class */
final class C1662d implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    private final /* synthetic */ ConnectionCallbacks f6825a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1662d(ConnectionCallbacks connectionCallbacks) {
        this.f6825a = connectionCallbacks;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f6825a.onConnected(bundle);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f6825a.onConnectionSuspended(i);
    }
}
