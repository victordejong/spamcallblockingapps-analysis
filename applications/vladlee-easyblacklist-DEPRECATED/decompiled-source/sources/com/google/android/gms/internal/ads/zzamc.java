package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamc.class */
public final class zzamc extends zzalh {

    /* renamed from: a */
    private final Adapter f11048a;

    /* renamed from: b */
    private final zzarz f11049b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamc(Adapter adapter, zzarz zzarzVar) {
        this.f11048a = adapter;
        this.f11049b = zzarzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClicked() {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zzak(ObjectWrapper.wrap(this.f11048a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClosed() {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zzaj(ObjectWrapper.wrap(this.f11048a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdFailedToLoad(int i) {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zze(ObjectWrapper.wrap(this.f11048a), i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdImpression() {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLoaded() {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zzag(ObjectWrapper.wrap(this.f11048a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdOpened() {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zzah(ObjectWrapper.wrap(this.f11048a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAppEvent(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoEnd() {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPause() {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPlay() {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzade zzadeVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzalj zzaljVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzasf zzasfVar) {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zza(ObjectWrapper.wrap(this.f11048a), new zzasd(zzasfVar.getType(), zzasfVar.getAmount()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzb(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzb(zzasd zzasdVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzco(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzdj(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzss() {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zzai(ObjectWrapper.wrap(this.f11048a));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzst() {
        zzarz zzarzVar = this.f11049b;
        if (zzarzVar != null) {
            zzarzVar.zzam(ObjectWrapper.wrap(this.f11048a));
        }
    }
}
