package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjy.class */
public final class zzcjy extends zzalh implements zzbpu {

    /* renamed from: a */
    private zzali f13248a;

    /* renamed from: b */
    private zzbpx f13249b;

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClicked() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClosed() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdFailedToLoad(int i) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdFailedToLoad(i);
            }
            if (this.f13249b != null) {
                this.f13249b.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdImpression() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdImpression();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLeftApplication() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLoaded() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdLoaded();
            }
            if (this.f13249b != null) {
                this.f13249b.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdOpened() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAdOpened();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAppEvent(String str, String str2) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onAppEvent(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoEnd() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onVideoEnd();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPause() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onVideoPause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPlay() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.onVideoPlay();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzade zzadeVar, String str) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zza(zzadeVar, str);
            }
        }
    }

    public final void zza(zzali zzaliVar) {
        synchronized (this) {
            this.f13248a = zzaliVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzalj zzaljVar) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zza(zzaljVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzasf zzasfVar) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zza(zzasfVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zza(zzbpx zzbpxVar) {
        synchronized (this) {
            this.f13249b = zzbpxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzb(Bundle bundle) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zzb(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzb(zzasd zzasdVar) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zzb(zzasdVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzco(int i) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zzco(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzdj(String str) {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zzdj(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzss() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zzss();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzst() {
        synchronized (this) {
            if (this.f13248a != null) {
                this.f13248a.zzst();
            }
        }
    }
}
