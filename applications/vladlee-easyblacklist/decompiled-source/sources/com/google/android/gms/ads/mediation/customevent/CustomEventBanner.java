package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventBanner.class */
public interface CustomEventBanner extends CustomEvent {
    void requestBannerAd(Context context, CustomEventBannerListener customEventBannerListener, String str, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle);
}
