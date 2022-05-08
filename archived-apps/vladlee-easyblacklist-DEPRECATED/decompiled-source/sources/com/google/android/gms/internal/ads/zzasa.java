package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasa.class */
public final class zzasa implements MediationRewardedVideoAdListener {

    /* renamed from: a */
    private final zzarz f11342a;

    public zzasa(zzarz zzarzVar) {
        this.f11342a = zzarzVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClicked.");
        try {
            this.f11342a.zzak(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClosed.");
        try {
            this.f11342a.zzaj(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdFailedToLoad.");
        try {
            this.f11342a.zze(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLeftApplication.");
        try {
            this.f11342a.zzal(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLoaded.");
        try {
            this.f11342a.zzag(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdOpened.");
        try {
            this.f11342a.zzah(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onInitializationFailed.");
        try {
            this.f11342a.zzd(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onInitializationSucceeded.");
        try {
            this.f11342a.zzaf(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.f11342a.zza(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), new zzasd(rewardItem));
            } else {
                this.f11342a.zza(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter), new zzasd("", 1));
            }
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onVideoCompleted.");
        try {
            this.f11342a.zzam(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onVideoStarted.");
        try {
            this.f11342a.zzai(ObjectWrapper.wrap(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void zzb(Bundle bundle) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdMetadataChanged.");
        try {
            this.f11342a.zzb(bundle);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
