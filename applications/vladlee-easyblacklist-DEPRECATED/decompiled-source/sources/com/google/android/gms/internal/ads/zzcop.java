package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcop.class */
public final class zzcop implements zzbov, zzbow, zzbpe, zzbqb, zzty {

    /* renamed from: a */
    private zzvh f13469a;

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdClicked();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdClosed();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdClosed.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdFailedToLoad(i);
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdFailedToLoad.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdImpression();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdImpression.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdLeftApplication();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdLeftApplication.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdLoaded();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdLoaded.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
        synchronized (this) {
            if (this.f13469a != null) {
                try {
                    this.f13469a.onAdOpened();
                } catch (RemoteException e) {
                    zzavs.zzd("Remote Exception at onAdOpened.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
    }

    public final zzvh zzamo() {
        zzvh zzvhVar;
        synchronized (this) {
            zzvhVar = this.f13469a;
        }
        return zzvhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void zzb(zzare zzareVar, String str, String str2) {
    }

    public final void zzc(zzvh zzvhVar) {
        synchronized (this) {
            this.f13469a = zzvhVar;
        }
    }
}
