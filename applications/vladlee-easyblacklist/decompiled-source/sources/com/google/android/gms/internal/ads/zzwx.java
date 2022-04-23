package com.google.android.gms.internal.ads;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwx.class */
public final class zzwx extends zzgc implements zzwv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzwv
    public final void onAdMetadataChanged() {
        m3256b(1, m3259a());
    }
}
