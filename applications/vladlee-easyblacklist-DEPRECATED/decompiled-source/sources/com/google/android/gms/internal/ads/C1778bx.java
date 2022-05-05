package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.bx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bx.class */
public final class C1778bx implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {

    /* renamed from: a */
    private final /* synthetic */ zzali f8319a;

    /* renamed from: b */
    private final /* synthetic */ Adapter f8320b;

    /* renamed from: c */
    private final /* synthetic */ zzaly f8321c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1778bx(zzaly zzalyVar, zzali zzaliVar, Adapter adapter) {
        this.f8321c = zzalyVar;
        this.f8319a = zzaliVar;
        this.f8320b = adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.f8321c.f11042e = mediationRewardedAd;
            this.f8319a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
        return new zzatd(this.f8319a);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            String canonicalName = this.f8320b.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded medation ad: ");
            sb.append(str);
            zzayu.zzea(sb.toString());
            this.f8319a.onAdFailedToLoad(0);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }
}
