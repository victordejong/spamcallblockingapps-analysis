package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczs.class */
public final class zzczs implements zzbuh, zzbui, zzbuz, zzbvs, zzux {

    /* renamed from: a */
    public zzwt f26821a;

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11159A();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdClosed.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuz
    /* renamed from: M */
    public final void mo13728M() {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11158M();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdImpression.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final zzwt m13727a() {
        zzwt zzwtVar;
        synchronized (this) {
            zzwtVar = this.f26821a;
        }
        return zzwtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(zzatw zzatwVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbui
    /* renamed from: a */
    public final void mo13335a(zzva zzvaVar) {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11156b(zzvaVar);
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdFailedToLoadWithAdError.", e);
                }
            }
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11157a(zzvaVar.f28995a);
                } catch (RemoteException e2) {
                    zzbbq.m15853c("Remote Exception at onAdFailedToLoad.", e2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m13726a(zzwt zzwtVar) {
        synchronized (this) {
            this.f26821a = zzwtVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11155k();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdLeftApplication.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzux
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.onAdClicked();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11154t();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdOpened.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        synchronized (this) {
            if (this.f26821a != null) {
                try {
                    this.f26821a.mo11153x();
                } catch (RemoteException e) {
                    zzbbq.m15853c("Remote Exception at onAdLoaded.", e);
                }
            }
        }
    }
}
