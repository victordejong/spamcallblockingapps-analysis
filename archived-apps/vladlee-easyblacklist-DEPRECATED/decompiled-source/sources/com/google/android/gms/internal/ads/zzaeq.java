package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeq.class */
public final class zzaeq extends zzads {

    /* renamed from: a */
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener f10884a;

    public zzaeq(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener) {
        this.f10884a = onCustomTemplateAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzadp
    public final void zzb(zzade zzadeVar) {
        this.f10884a.onCustomTemplateAdLoaded(zzadf.zza(zzadeVar));
    }
}
