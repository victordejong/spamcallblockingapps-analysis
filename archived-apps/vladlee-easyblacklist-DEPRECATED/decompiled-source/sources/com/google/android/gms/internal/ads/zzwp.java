package com.google.android.gms.internal.ads;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwp.class */
public final class zzwp extends zzgc implements zzwn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwn
    public final void onAdMuted() {
        m3256b(1, m3259a());
    }
}
