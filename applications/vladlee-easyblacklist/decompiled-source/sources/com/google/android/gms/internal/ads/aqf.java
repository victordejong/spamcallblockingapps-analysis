package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqf.class */
public final class aqf implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ zzrq f8165a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqf(zzrq zzrqVar) {
        this.f8165a = zzrqVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        zzrz zzrzVar;
        Object obj2;
        obj = this.f8165a.f15438b;
        synchronized (obj) {
            this.f8165a.f15441e = null;
            zzrzVar = this.f8165a.f15439c;
            if (zzrzVar != null) {
                this.f8165a.f15439c = null;
            }
            obj2 = this.f8165a.f15438b;
            obj2.notifyAll();
        }
    }
}
