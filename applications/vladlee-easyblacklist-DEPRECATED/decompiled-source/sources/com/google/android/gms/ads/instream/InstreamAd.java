package com.google.android.gms.ads.instream;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzahl;
import com.google.android.gms.internal.ads.zzahq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/instream/InstreamAd.class */
public abstract class InstreamAd {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback.class */
    public static class InstreamAdLoadCallback {
        public void onInstreamAdFailedToLoad(int i) {
        }

        public void onInstreamAdLoaded(InstreamAd instreamAd) {
        }
    }

    public static void load(Context context, String str, AdRequest adRequest, int i, InstreamAdLoadCallback instreamAdLoadCallback) {
        Preconditions.checkArgument(i == 2 || i == 3, "Instream ads only support Landscape and Portrait media aspect ratios");
        new zzahq(context, str).zza(instreamAdLoadCallback).zza(new zzahl(i)).zzry().loadAd(adRequest);
    }

    public static void load(Context context, String str, InstreamAdLoadCallback instreamAdLoadCallback) {
        new zzahq(context, "").zza(instreamAdLoadCallback).zza(new zzahl(str)).zzry().loadAd(new PublisherAdRequest.Builder().build());
    }

    public abstract void destroy();

    public abstract float getAspectRatio();

    public abstract VideoController getVideoController();

    public abstract float getVideoCurrentTime();

    public abstract float getVideoDuration();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zza(InstreamAdView instreamAdView);
}
