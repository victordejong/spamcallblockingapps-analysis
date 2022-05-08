package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaen.class */
public final class zzaen extends zzadn {

    /* renamed from: a */
    private final NativeCustomTemplateAd.OnCustomClickListener f10881a;

    public zzaen(NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.f10881a = onCustomClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzado
    public final void zza(zzade zzadeVar, String str) {
        this.f10881a.onCustomClick(zzadf.zza(zzadeVar), str);
    }
}
