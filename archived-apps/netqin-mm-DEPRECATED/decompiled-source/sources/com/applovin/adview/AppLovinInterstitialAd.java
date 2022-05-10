package com.applovin.adview;

import android.content.Context;
import com.applovin.impl.adview.InterstitialAdDialogCreatorImpl;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
/* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinInterstitialAd.class */
public class AppLovinInterstitialAd {

    /* renamed from: com.applovin.adview.AppLovinInterstitialAd$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/adview/AppLovinInterstitialAd$a.class */
    public static final class RunnableC6893a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f21085a;

        public RunnableC6893a(Context context) {
            this.f21085a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(AppLovinSdk.getInstance(this.f21085a), this.f21085a).show();
        }
    }

    public static AppLovinInterstitialAdDialog create(AppLovinSdk appLovinSdk, Context context) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        } else if (context != null) {
            return new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(appLovinSdk, context);
        } else {
            throw new IllegalArgumentException("No context specified");
        }
    }

    @Deprecated
    public static boolean isAdReadyToDisplay(Context context) {
        return AppLovinSdk.getInstance(context).getAdService().hasPreloadedAd(AppLovinAdSize.INTERSTITIAL);
    }

    public static void show(Context context) {
        if (context != null) {
            AppLovinSdkUtils.runOnUiThread(new RunnableC6893a(context));
            return;
        }
        throw new IllegalArgumentException("No context specified");
    }

    public String toString() {
        return "AppLovinInterstitialAd{}";
    }
}
