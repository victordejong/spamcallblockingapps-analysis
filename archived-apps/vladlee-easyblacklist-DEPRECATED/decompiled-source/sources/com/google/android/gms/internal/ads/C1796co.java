package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
/* renamed from: com.google.android.gms.internal.ads.co */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/co.class */
final class C1796co implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ zzamw f8350a;

    /* renamed from: b */
    private final /* synthetic */ zzali f8351b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1796co(zzamw zzamwVar, zzali zzaliVar) {
        this.f8350a = zzamwVar;
        this.f8351b = zzaliVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd == null) {
            zzayu.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f8350a.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzayu.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f8350a.zzx(ObjectWrapper.wrap(mediationBannerAd.getView()));
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
            }
            return new C1799cr(this.f8351b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.f8350a.zzdl(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
