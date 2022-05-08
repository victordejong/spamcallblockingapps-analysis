package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAdOptions;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/NativeMediationAdRequest.class */
public interface NativeMediationAdRequest extends MediationAdRequest {
    float getAdVolume();

    NativeAdOptions getNativeAdOptions();

    boolean isAdMuted();

    boolean isAppInstallAdRequested();

    boolean isContentAdRequested();

    boolean isUnifiedNativeAdRequested();

    boolean zzsz();

    Map<String, Boolean> zzta();
}
