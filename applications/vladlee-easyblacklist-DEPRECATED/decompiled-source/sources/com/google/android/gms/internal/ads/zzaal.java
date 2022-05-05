package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaal.class */
public final class zzaal extends zzaaj {

    /* renamed from: a */
    private final OnCustomRenderedAdLoadedListener f10808a;

    public zzaal(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        this.f10808a = onCustomRenderedAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaak
    public final void zza(zzaaf zzaafVar) {
        this.f10808a.onCustomRenderedAdLoaded(new zzaag(zzaafVar));
    }
}
