package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: com.google.android.gms.internal.ads.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/x.class */
final class C2348x implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    private final /* synthetic */ zzazl f10675a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2348x(zzazl zzazlVar) {
        this.f10675a = zzazlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.f10675a.setException(new RuntimeException("Connection failed."));
    }
}
