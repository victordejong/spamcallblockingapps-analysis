package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaus.class */
public final class zzaus implements MediationRewardedVideoAdListener {

    /* renamed from: a */
    public final zzaur f24527a;

    public zzaus(zzaur zzaurVar) {
        this.f24527a = zzaurVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: a */
    public final void mo16328a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onVideoCompleted.");
        try {
            this.f24527a.mo13839o(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: a */
    public final void mo16327a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdFailedToLoad.");
        try {
            this.f24527a.mo13842c(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: a */
    public final void mo16326a(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.f24527a.mo13847a(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter), new zzauv(rewardItem));
            } else {
                this.f24527a.mo13847a(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter), new zzauv("", 1));
            }
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: b */
    public final void mo16325b(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdOpened.");
        try {
            this.f24527a.mo13840k(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: c */
    public final void mo16324c(Bundle bundle) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdMetadataChanged.");
        try {
            this.f24527a.mo13843c(bundle);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: c */
    public final void mo16323c(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onVideoStarted.");
        try {
            this.f24527a.mo13849J(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: d */
    public final void mo16322d(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLoaded.");
        try {
            this.f24527a.mo13841i(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: e */
    public final void mo16321e(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLeftApplication.");
        try {
            this.f24527a.mo13850D(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: f */
    public final void mo16320f(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onInitializationSucceeded.");
        try {
            this.f24527a.mo13838v(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    /* renamed from: g */
    public final void mo16319g(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClosed.");
        try {
            this.f24527a.mo13848N(ObjectWrapper.m17020a(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
