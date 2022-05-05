package com.google.android.gms.internal.ads;

import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvz.class */
public final class zzvz extends zzgc implements zzvx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    @Override // com.google.android.gms.internal.ads.zzvx
    public final void onAdMetadataChanged() {
        m3256b(1, m3259a());
    }
}
