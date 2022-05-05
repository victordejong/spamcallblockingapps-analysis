package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcoq.class */
public final class zzcoq implements zzty {

    /* renamed from: a */
    private zzvg f13470a;

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f13470a != null) {
                try {
                    this.f13470a.onAdClicked();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    public final void zzb(zzvg zzvgVar) {
        synchronized (this) {
            this.f13470a = zzvgVar;
        }
    }
}
