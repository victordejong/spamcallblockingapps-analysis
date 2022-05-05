package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamf.class */
public final class zzamf<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {

    /* renamed from: a */
    private final zzali f11063a;

    public zzamf(zzali zzaliVar) {
        this.f11063a = zzaliVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzayu.zzea("Adapter called onClick.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1783cb(this));
            return;
        }
        try {
            this.f11063a.onAdClicked();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzayu.zzea("Adapter called onDismissScreen.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zzez("#008 Must be called on the main UI thread.");
            zzayk.zzyu.post(new RunnableC1784cc(this));
            return;
        }
        try {
            this.f11063a.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzayu.zzea("Adapter called onDismissScreen.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1791cj(this));
            return;
        }
        try {
            this.f11063a.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        zzayu.zzea(sb.toString());
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1787cf(this, errorCode));
            return;
        }
        try {
            this.f11063a.onAdFailedToLoad(zzamr.zza(errorCode));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        zzayu.zzea(sb.toString());
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1790ci(this, errorCode));
            return;
        }
        try {
            this.f11063a.onAdFailedToLoad(zzamr.zza(errorCode));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzayu.zzea("Adapter called onLeaveApplication.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1786ce(this));
            return;
        }
        try {
            this.f11063a.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzayu.zzea("Adapter called onLeaveApplication.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1792ck(this));
            return;
        }
        try {
            this.f11063a.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzayu.zzea("Adapter called onPresentScreen.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1789ch(this));
            return;
        }
        try {
            this.f11063a.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzayu.zzea("Adapter called onPresentScreen.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1782ca(this));
            return;
        }
        try {
            this.f11063a.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzayu.zzea("Adapter called onReceivedAd.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1788cg(this));
            return;
        }
        try {
            this.f11063a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzayu.zzea("Adapter called onReceivedAd.");
        zzve.zzou();
        if (!zzayk.zzxe()) {
            zzayu.zze("#008 Must be called on the main UI thread.", null);
            zzayk.zzyu.post(new RunnableC1785cd(this));
            return;
        }
        try {
            this.f11063a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
