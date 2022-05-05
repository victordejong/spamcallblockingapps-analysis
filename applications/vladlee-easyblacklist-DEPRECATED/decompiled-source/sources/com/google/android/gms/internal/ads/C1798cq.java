package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* renamed from: com.google.android.gms.internal.ads.cq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cq.class */
final class C1798cq implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ zzand f8354a;

    /* renamed from: b */
    private final /* synthetic */ zzali f8355b;

    /* renamed from: c */
    private final /* synthetic */ zzann f8356c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1798cq(zzann zzannVar, zzand zzandVar, zzali zzaliVar) {
        this.f8356c = zzannVar;
        this.f8354a = zzandVar;
        this.f8355b = zzaliVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        if (mediationRewardedAd == null) {
            zzayu.zzez("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f8354a.zzdl("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzayu.zzc("", e);
                return null;
            }
        } else {
            try {
                this.f8356c.f11069c = mediationRewardedAd;
                this.f8354a.zztb();
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
            }
            return new C1799cr(this.f8355b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.f8354a.zzdl(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
