package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxi.class */
public final class zzxi extends zzgc implements zzxg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzxi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoEnd() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoMute(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoPause() {
        m3256b(3, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoPlay() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzxg
    public final void onVideoStart() {
        m3256b(1, m3259a());
    }
}
