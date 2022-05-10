package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmf.class */
public final class zzbmf implements zzbuy {

    /* renamed from: a */
    public final zzdpa f25153a;

    public zzbmf(zzdpa zzdpaVar) {
        this.f25153a = zzdpaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: a */
    public final void mo14003a(Context context) {
        try {
            this.f25153a.m13369a();
        } catch (zzdos e) {
            zzbbq.m15853c("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: c */
    public final void mo13999c(Context context) {
        try {
            this.f25153a.m13350f();
            if (context != null) {
                this.f25153a.m13368a(context);
            }
        } catch (zzdos e) {
            zzbbq.m15853c("Cannot invoke onResume for the mediation adapter.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuy
    /* renamed from: d */
    public final void mo13998d(Context context) {
        try {
            this.f25153a.m13351e();
        } catch (zzdos e) {
            zzbbq.m15853c("Cannot invoke onPause for the mediation adapter.", e);
        }
    }
}
