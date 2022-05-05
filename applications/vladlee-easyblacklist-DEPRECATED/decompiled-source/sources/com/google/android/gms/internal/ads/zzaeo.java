package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeContentAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeo.class */
public final class zzaeo extends zzadm {

    /* renamed from: a */
    private final NativeContentAd.OnContentAdLoadedListener f10882a;

    public zzaeo(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
        this.f10882a = onContentAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzadj
    public final void zza(zzada zzadaVar) {
        this.f10882a.onContentAdLoaded(new zzadb(zzadaVar));
    }
}
