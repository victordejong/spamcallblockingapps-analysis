package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aqm.class */
public final class aqm implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ zzazl f8177a;

    /* renamed from: b */
    private final /* synthetic */ zzse f8178b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aqm(zzse zzseVar, zzazl zzazlVar) {
        this.f8178b = zzseVar;
        this.f8177a = zzazlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.f8178b.f15453d;
        synchronized (obj) {
            this.f8177a.setException(new RuntimeException("Connection failed."));
        }
    }
}
