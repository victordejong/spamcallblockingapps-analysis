package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzael.class */
public final class zzael extends zzadh {

    /* renamed from: a */
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener f10880a;

    public zzael(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.f10880a = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzadi
    public final void zza(zzacw zzacwVar) {
        this.f10880a.onAppInstallAdLoaded(new zzacx(zzacwVar));
    }
}
