package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiu.class */
public final class zzbiu implements zzbph {

    /* renamed from: a */
    private final zzdac f11929a;

    public zzbiu(zzdac zzdacVar) {
        this.f11929a = zzdacVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbv(Context context) {
        try {
            this.f11929a.pause();
        } catch (zzdab e) {
            zzavs.zzd("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbw(Context context) {
        try {
            this.f11929a.resume();
            if (context != null) {
                this.f11929a.onContextChanged(context);
            }
        } catch (zzdab e) {
            zzavs.zzd("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzbx(Context context) {
        try {
            this.f11929a.destroy();
        } catch (zzdab e) {
            zzavs.zzd("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }
}
