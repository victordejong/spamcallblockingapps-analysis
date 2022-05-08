package com.google.android.gms.internal.ads;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrn.class */
public final class zzrn extends zzgc implements zzrl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzrn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzrl
    public final void onAppOpenAdClosed() {
        m3256b(1, m3259a());
    }
}
