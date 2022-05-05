package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalw.class */
public final class zzalw extends zzxe {

    /* renamed from: a */
    private final Object f11036a = new Object();

    /* renamed from: b */
    private volatile zzxg f11037b;

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float getAspectRatio() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final int getPlaybackState() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isClickToExpandEnabled() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isCustomControlsEnabled() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final boolean isMuted() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void mute(boolean z) {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void pause() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void play() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void stop() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final void zza(zzxg zzxgVar) {
        synchronized (this.f11036a) {
            this.f11037b = zzxgVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float zzpk() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final float zzpl() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzxb
    public final zzxg zzpm() {
        zzxg zzxgVar;
        synchronized (this.f11036a) {
            zzxgVar = this.f11037b;
        }
        return zzxgVar;
    }
}
