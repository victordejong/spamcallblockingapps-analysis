package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalk.class */
public final class zzalk extends zzgc implements zzali {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClicked() {
        m3256b(1, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdClosed() {
        m3256b(2, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdFailedToLoad(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdImpression() {
        m3256b(8, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLeftApplication() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdLoaded() {
        m3256b(6, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAdOpened() {
        m3256b(5, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onAppEvent(String str, String str2) {
        Parcel a = m3259a();
        a.writeString(str);
        a.writeString(str2);
        m3256b(9, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoEnd() {
        m3256b(11, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPause() {
        m3256b(15, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void onVideoPlay() {
        m3256b(20, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzade zzadeVar, String str) {
        Parcel a = m3259a();
        zzge.zza(a, zzadeVar);
        a.writeString(str);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzalj zzaljVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaljVar);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zza(zzasf zzasfVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzasfVar);
        m3256b(16, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzb(Bundle bundle) {
        Parcel a = m3259a();
        zzge.zza(a, bundle);
        m3256b(19, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzb(zzasd zzasdVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzasdVar);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzco(int i) {
        Parcel a = m3259a();
        a.writeInt(i);
        m3256b(17, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzdj(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(12, a);
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzss() {
        m3256b(13, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzali
    public final void zzst() {
        m3256b(18, m3259a());
    }
}
