package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
/* renamed from: com.google.android.gms.internal.ads.cn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cn.class */
final class C1795cn implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ zzamx f8347a;

    /* renamed from: b */
    private final /* synthetic */ zzali f8348b;

    /* renamed from: c */
    private final /* synthetic */ zzann f8349c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1795cn(zzann zzannVar, zzamx zzamxVar, zzali zzaliVar) {
        this.f8349c = zzannVar;
        this.f8347a = zzamxVar;
        this.f8348b = zzaliVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        if (mediationInterstitialAd == null) {
            zzayu.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f8347a.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzayu.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f8349c.f11068b = mediationInterstitialAd;
                this.f8347a.zztb();
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
            }
            return new C1799cr(this.f8348b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.f8347a.zzdl(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
