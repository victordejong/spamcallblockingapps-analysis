package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnd.class */
public class zzcnd extends zzalh {

    /* renamed from: a */
    private final zzboq f13386a;

    /* renamed from: b */
    private final zzbpd f13387b;

    /* renamed from: c */
    private final zzbpm f13388c;

    /* renamed from: d */
    private final zzbpw f13389d;

    /* renamed from: e */
    private final zzbra f13390e;

    /* renamed from: f */
    private final zzbqj f13391f;

    /* renamed from: g */
    private final zzbtj f13392g;

    public zzcnd(zzboq zzboqVar, zzbpd zzbpdVar, zzbpm zzbpmVar, zzbpw zzbpwVar, zzbra zzbraVar, zzbqj zzbqjVar, zzbtj zzbtjVar) {
        this.f13386a = zzboqVar;
        this.f13387b = zzbpdVar;
        this.f13388c = zzbpmVar;
        this.f13389d = zzbpwVar;
        this.f13390e = zzbraVar;
        this.f13391f = zzbqjVar;
        this.f13392g = zzbtjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClicked() {
        this.f13386a.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClosed() {
        this.f13391f.zzte();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdFailedToLoad(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdImpression() {
        this.f13387b.onAdImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLeftApplication() {
        this.f13388c.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLoaded() {
        this.f13389d.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdOpened() {
        this.f13391f.zztf();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAppEvent(String str, String str2) {
        this.f13390e.onAppEvent(str, str2);
    }

    public void onVideoEnd() {
        this.f13392g.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPause() {
        this.f13392g.onVideoPause();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPlay() {
        this.f13392g.onVideoPlay();
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzade zzadeVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzalj zzaljVar) {
    }

    public void zza(zzasf zzasfVar) {
    }

    public void zzb(Bundle bundle) {
    }

    public void zzb(zzasd zzasdVar) {
    }

    public void zzco(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzdj(String str) {
    }

    public void zzss() {
        this.f13392g.onVideoStart();
    }

    public void zzst() {
    }
}
