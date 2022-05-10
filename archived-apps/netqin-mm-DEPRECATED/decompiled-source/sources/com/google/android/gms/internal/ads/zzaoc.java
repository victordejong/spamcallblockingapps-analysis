package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdError;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaoc.class */
public final class zzaoc implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {

    /* renamed from: a */
    public final zzanh f24219a;

    /* renamed from: b */
    public NativeAdMapper f24220b;

    /* renamed from: c */
    public UnifiedNativeAdMapper f24221c;

    /* renamed from: d */
    public NativeCustomTemplateAd f24222d;

    public zzaoc(zzanh zzanhVar) {
        this.f24219a = zzanhVar;
    }

    /* renamed from: a */
    public static void m16612a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper, NativeAdMapper nativeAdMapper) {
        if (!(mediationNativeAdapter instanceof AdMobAdapter)) {
            VideoController videoController = new VideoController();
            videoController.m18088a(new zzanv());
            if (unifiedNativeAdMapper != null && unifiedNativeAdMapper.hasVideoContent()) {
                unifiedNativeAdMapper.zza(videoController);
            }
            if (nativeAdMapper != null && nativeAdMapper.hasVideoContent()) {
                nativeAdMapper.zza(videoController);
            }
        }
    }

    /* renamed from: a */
    public final NativeAdMapper m16627a() {
        return this.f24220b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: a */
    public final void mo16626a(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClosed.");
        try {
            this.f24219a.mo13796A();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: a */
    public final void mo16625a(MediationBannerAdapter mediationBannerAdapter, int i) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        zzbbq.m15858a(sb.toString());
        try {
            this.f24219a.mo13792a(i);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: a */
    public final void mo16624a(MediationBannerAdapter mediationBannerAdapter, AdError adError) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        int a = adError.m18162a();
        String c = adError.m18160c();
        String b = adError.m18161b();
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 97 + String.valueOf(b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(a);
        sb.append(". ErrorMessage: ");
        sb.append(c);
        sb.append(". ErrorDomain: ");
        sb.append(b);
        zzbbq.m15858a(sb.toString());
        try {
            this.f24219a.mo13784b(adError.m18159d());
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: a */
    public final void mo16623a(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAppEvent.");
        try {
            this.f24219a.mo13786a(str, str2);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: a */
    public final void mo16622a(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLeftApplication.");
        try {
            this.f24219a.mo13779k();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: a */
    public final void mo16621a(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzbbq.m15858a(sb.toString());
        try {
            this.f24219a.mo13792a(i);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: a */
    public final void mo16620a(MediationInterstitialAdapter mediationInterstitialAdapter, AdError adError) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        int a = adError.m18162a();
        String c = adError.m18160c();
        String b = adError.m18161b();
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 97 + String.valueOf(b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(a);
        sb.append(". ErrorMessage: ");
        sb.append(c);
        sb.append(". ErrorDomain: ");
        sb.append(b);
        zzbbq.m15858a(sb.toString());
        try {
            this.f24219a.mo13784b(adError.m18159d());
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16619a(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdOpened.");
        try {
            this.f24219a.mo13776t();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16618a(MediationNativeAdapter mediationNativeAdapter, int i) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzbbq.m15858a(sb.toString());
        try {
            this.f24219a.mo13792a(i);
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16617a(MediationNativeAdapter mediationNativeAdapter, AdError adError) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        int a = adError.m18162a();
        String c = adError.m18160c();
        String b = adError.m18161b();
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 97 + String.valueOf(b).length());
        sb.append("Adapter called onAdFailedToLoad with error. ErrorCode: ");
        sb.append(a);
        sb.append(". ErrorMessage: ");
        sb.append(c);
        sb.append(". ErrorDomain: ");
        sb.append(b);
        zzbbq.m15858a(sb.toString());
        try {
            this.f24219a.mo13784b(adError.m18159d());
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16616a(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.mo16807c0());
        zzbbq.m15858a(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.f24222d = nativeCustomTemplateAd;
        try {
            this.f24219a.mo13775x();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16615a(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (nativeCustomTemplateAd instanceof zzafb) {
            try {
                this.f24219a.mo13790a(((zzafb) nativeCustomTemplateAd).m16808a(), str);
            } catch (RemoteException e) {
                zzbbq.m15851d("#007 Could not call remote method.", e);
            }
        } else {
            zzbbq.m15852d("Unexpected native custom template ad type.");
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16614a(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLoaded.");
        this.f24220b = nativeAdMapper;
        this.f24221c = null;
        m16612a(mediationNativeAdapter, (UnifiedNativeAdMapper) null, nativeAdMapper);
        try {
            this.f24219a.mo13775x();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: a */
    public final void mo16613a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLoaded.");
        this.f24221c = unifiedNativeAdMapper;
        this.f24220b = null;
        m16612a(mediationNativeAdapter, unifiedNativeAdMapper, (NativeAdMapper) null);
        try {
            this.f24219a.mo13775x();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: b */
    public final UnifiedNativeAdMapper m16611b() {
        return this.f24221c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: b */
    public final void mo16610b(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClicked.");
        try {
            this.f24219a.onAdClicked();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: b */
    public final void mo16609b(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClicked.");
        try {
            this.f24219a.onAdClicked();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: b */
    public final void mo16608b(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onVideoEnd.");
        try {
            this.f24219a.mo13781h0();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    /* renamed from: c */
    public final NativeCustomTemplateAd m16607c() {
        return this.f24222d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: c */
    public final void mo16606c(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLoaded.");
        try {
            this.f24219a.mo13775x();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: c */
    public final void mo16605c(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLoaded.");
        try {
            this.f24219a.mo13775x();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: c */
    public final void mo16604c(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClosed.");
        try {
            this.f24219a.mo13796A();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: d */
    public final void mo16603d(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLeftApplication.");
        try {
            this.f24219a.mo13779k();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: d */
    public final void mo16602d(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdClosed.");
        try {
            this.f24219a.mo13796A();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: d */
    public final void mo16601d(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f24220b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f24221c;
        if (this.f24222d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                zzbbq.m15851d("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideClickHandling()) {
                zzbbq.m15858a("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                zzbbq.m15858a("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzbbq.m15858a("Adapter called onAdClicked.");
        try {
            this.f24219a.onAdClicked();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    /* renamed from: e */
    public final void mo16600e(MediationBannerAdapter mediationBannerAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdOpened.");
        try {
            this.f24219a.mo13776t();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    /* renamed from: e */
    public final void mo16599e(MediationInterstitialAdapter mediationInterstitialAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdOpened.");
        try {
            this.f24219a.mo13776t();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: e */
    public final void mo16598e(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        zzbbq.m15858a("Adapter called onAdLeftApplication.");
        try {
            this.f24219a.mo13779k();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    /* renamed from: f */
    public final void mo16597f(MediationNativeAdapter mediationNativeAdapter) {
        Preconditions.m17286a("#008 Must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.f24220b;
        UnifiedNativeAdMapper unifiedNativeAdMapper = this.f24221c;
        if (this.f24222d == null) {
            if (nativeAdMapper == null && unifiedNativeAdMapper == null) {
                zzbbq.m15851d("#007 Could not call remote method.", null);
                return;
            } else if (unifiedNativeAdMapper != null && !unifiedNativeAdMapper.getOverrideImpressionRecording()) {
                zzbbq.m15858a("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                zzbbq.m15858a("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzbbq.m15858a("Adapter called onAdImpression.");
        try {
            this.f24219a.mo13795M();
        } catch (RemoteException e) {
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
