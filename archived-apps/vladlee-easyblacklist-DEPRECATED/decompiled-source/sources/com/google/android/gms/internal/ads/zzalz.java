package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzalz.class */
public final class zzalz implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {

    /* renamed from: a */
    private final zzali f11043a;

    /* renamed from: b */
    private NativeAdMapper f11044b;

    /* renamed from: c */
    private UnifiedNativeAdMapper f11045c;

    /* renamed from: d */
    private NativeCustomTemplateAd f11046d;

    public zzalz(zzali zzaliVar) {
        this.f11043a = zzaliVar;
    }

    /* renamed from: a */
    private static void m4345a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper, NativeAdMapper nativeAdMapper) {
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.zza(new zzalw());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zza(videoController);
            }
            if (nativeAdMapper != null && nativeAdMapper.hasVideoContent()) {
                nativeAdMapper.zza(videoController);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClicked.");
        try {
            this.f11043a.onAdClicked();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClicked.");
        try {
            this.f11043a.onAdClicked();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f11044b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f11045c;
        if (this.f11046d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                zzayu.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                zzayu.zzea("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                zzayu.zzea("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzayu.zzea("Adapter called onAdClicked.");
        try {
            this.f11043a.onAdClicked();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClosed.");
        try {
            this.f11043a.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClosed.");
        try {
            this.f11043a.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdClosed.");
        try {
            this.f11043a.onAdClosed();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        zzayu.zzea(sb.toString());
        try {
            this.f11043a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzayu.zzea(sb.toString());
        try {
            this.f11043a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzayu.zzea(sb.toString());
        try {
            this.f11043a.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f11044b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f11045c;
        if (this.f11046d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                zzayu.zze("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                zzayu.zzea("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                zzayu.zzea("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzayu.zzea("Adapter called onAdImpression.");
        try {
            this.f11043a.onAdImpression();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLeftApplication.");
        try {
            this.f11043a.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLeftApplication.");
        try {
            this.f11043a.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLeftApplication.");
        try {
            this.f11043a.onAdLeftApplication();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLoaded.");
        try {
            this.f11043a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLoaded.");
        try {
            this.f11043a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLoaded.");
        this.f11044b = nativeAdMapper;
        this.f11045c = null;
        m4345a(mediationNativeAdapter, this.f11045c, this.f11044b);
        try {
            this.f11043a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdLoaded.");
        this.f11045c = unifiedNativeAdMapper;
        this.f11044b = null;
        m4345a(mediationNativeAdapter, this.f11045c, this.f11044b);
        try {
            this.f11043a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdOpened.");
        try {
            this.f11043a.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdOpened.");
        try {
            this.f11043a.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAdOpened.");
        try {
            this.f11043a.onAdOpened();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onVideoEnd.");
        try {
            this.f11043a.onVideoEnd();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzayu.zzea("Adapter called onAppEvent.");
        try {
            this.f11043a.onAppEvent(str, str2);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        zzayu.zzea(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f11046d = nativeCustomTemplateAd;
        try {
            this.f11043a.onAdLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof zzadf) {
            try {
                this.f11043a.zza(((zzadf) nativeCustomTemplateAd).zzro(), str);
            } catch (RemoteException e) {
                zzayu.zze("#007 Could not call remote method.", e);
            }
        } else {
            zzayu.zzez("Unexpected native custom template ad type.");
        }
    }

    public final NativeAdMapper zzsw() {
        return this.f11044b;
    }

    public final UnifiedNativeAdMapper zzsx() {
        return this.f11045c;
    }

    public final NativeCustomTemplateAd zzsy() {
        return this.f11046d;
    }
}
