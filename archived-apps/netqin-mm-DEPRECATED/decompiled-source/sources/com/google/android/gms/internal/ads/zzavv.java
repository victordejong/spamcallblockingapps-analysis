package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavv.class */
public final class zzavv implements MediationRewardedAdCallback {

    /* renamed from: a */
    public final zzanh f24543a;

    public zzavv(zzanh zzanhVar) {
        this.f24543a = zzanhVar;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: A */
    public final void mo16292A() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClosed.");
        try {
            this.f24543a.mo13796A();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: B */
    public final void mo16291B() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called reportAdImpression.");
        try {
            this.f24543a.mo13795M();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: C */
    public final void mo16290C() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called reportAdClicked.");
        try {
            this.f24543a.onAdClicked();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    /* renamed from: a */
    public final void mo16289a(RewardItem rewardItem) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onUserEarnedReward.");
        try {
            this.f24543a.mo13787a(new zzavu(rewardItem));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    /* renamed from: a */
    public final void mo16288a(String str) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdFailedToShow.");
        String valueOf = String.valueOf(str);
        zzbbq.m15852d(valueOf.length() != 0 ? "Mediation ad failed to show: ".concat(valueOf) : new String("Mediation ad failed to show: "));
        try {
            this.f24543a.mo13774y(str);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    /* renamed from: j0 */
    public final void mo16287j0() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onVideoStart.");
        try {
            this.f24543a.mo13793X1();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAdCallback
    public final void onVideoComplete() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onVideoComplete.");
        try {
            this.f24543a.mo13794P1();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdCallback
    /* renamed from: t */
    public final void mo16286t() {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdOpened.");
        try {
            this.f24543a.mo13776t();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
