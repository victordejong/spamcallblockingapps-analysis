package com.google.android.gms.ads.appopen;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzrl;
import com.google.android.gms.internal.ads.zzrp;
import com.google.android.gms.internal.ads.zzvu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd.class */
public abstract class AppOpenAd {
    public static final int APP_OPEN_AD_ORIENTATION_LANDSCAPE = 2;
    public static final int APP_OPEN_AD_ORIENTATION_PORTRAIT = 1;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback.class */
    public static class AppOpenAdLoadCallback {
        public void onAppOpenAdFailedToLoad(int i) {
        }

        public void onAppOpenAdLoaded(AppOpenAd appOpenAd) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation.class */
    public @interface AppOpenAdOrientation {
    }

    public static void load(Context context, String str, AdRequest adRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "adUnitId cannot be null.");
        Preconditions.checkNotNull(adRequest, "AdRequest cannot be null.");
        new zzrp(context, str, adRequest.zzdg(), i, appOpenAdLoadCallback).zzmn();
    }

    public static void load(Context context, String str, PublisherAdRequest publisherAdRequest, int i, AppOpenAdLoadCallback appOpenAdLoadCallback) {
        Preconditions.checkNotNull(context, "Context cannot be null.");
        Preconditions.checkNotNull(str, "adUnitId cannot be null.");
        Preconditions.checkNotNull(publisherAdRequest, "PublisherAdRequest cannot be null.");
        new zzrp(context, str, publisherAdRequest.zzdg(), i, appOpenAdLoadCallback).zzmn();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract zzvu mo3089a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public abstract void mo3088a(zzrl zzrlVar);
}
