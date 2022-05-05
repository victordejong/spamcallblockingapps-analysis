package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjx.class */
public final class zzcjx extends zzary implements zzbpu {

    /* renamed from: a */
    private zzarz f13245a;

    /* renamed from: b */
    private zzbpx f13246b;

    /* renamed from: c */
    private zzbth f13247c;

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zza(IObjectWrapper iObjectWrapper, zzasd zzasdVar) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zza(iObjectWrapper, zzasdVar);
            }
        }
    }

    public final void zza(zzarz zzarzVar) {
        synchronized (this) {
            this.f13245a = zzarzVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpu
    public final void zza(zzbpx zzbpxVar) {
        synchronized (this) {
            this.f13246b = zzbpxVar;
        }
    }

    public final void zza(zzbth zzbthVar) {
        synchronized (this) {
            this.f13247c = zzbthVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzaf(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzaf(iObjectWrapper);
            }
            if (this.f13247c != null) {
                this.f13247c.onInitializationSucceeded();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzag(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzag(iObjectWrapper);
            }
            if (this.f13246b != null) {
                this.f13246b.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzah(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzah(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzai(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzai(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzaj(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzaj(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzak(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzak(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzal(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzal(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzam(IObjectWrapper iObjectWrapper) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzam(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzb(Bundle bundle) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzb(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zzd(iObjectWrapper, i);
            }
            if (this.f13247c != null) {
                this.f13247c.zzdh(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarz
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
        synchronized (this) {
            if (this.f13245a != null) {
                this.f13245a.zze(iObjectWrapper, i);
            }
            if (this.f13246b != null) {
                this.f13246b.onAdFailedToLoad(i);
            }
        }
    }
}
