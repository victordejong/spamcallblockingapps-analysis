package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationNativeListener.class */
public interface MediationNativeListener {
    /* renamed from: a */
    void mo16619a(MediationNativeAdapter mediationNativeAdapter);

    @Deprecated
    /* renamed from: a */
    void mo16618a(MediationNativeAdapter mediationNativeAdapter, int i);

    /* renamed from: a */
    void mo16617a(MediationNativeAdapter mediationNativeAdapter, AdError adError);

    /* renamed from: a */
    void mo16616a(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd);

    /* renamed from: a */
    void mo16615a(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str);

    @Deprecated
    /* renamed from: a */
    void mo16614a(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper);

    /* renamed from: a */
    void mo16613a(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper);

    /* renamed from: b */
    void mo16608b(MediationNativeAdapter mediationNativeAdapter);

    /* renamed from: c */
    void mo16604c(MediationNativeAdapter mediationNativeAdapter);

    /* renamed from: d */
    void mo16601d(MediationNativeAdapter mediationNativeAdapter);

    /* renamed from: e */
    void mo16598e(MediationNativeAdapter mediationNativeAdapter);

    /* renamed from: f */
    void mo16597f(MediationNativeAdapter mediationNativeAdapter);
}
