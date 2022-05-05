package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.internal.ads.zzxq;
import com.google.android.gms.internal.ads.zzxv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/MobileAds.class */
public class MobileAds {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/MobileAds$Settings.class */
    public static final class Settings {

        /* renamed from: a */
        private final zzxv f5827a = new zzxv();

        /* renamed from: a */
        final zzxv m6097a() {
            return this.f5827a;
        }

        @Deprecated
        public final String getTrackingId() {
            return null;
        }

        @Deprecated
        public final boolean isGoogleAnalyticsEnabled() {
            return false;
        }

        @Deprecated
        public final Settings setGoogleAnalyticsEnabled(boolean z) {
            return this;
        }

        @Deprecated
        public final Settings setTrackingId(String str) {
            return this;
        }
    }

    private MobileAds() {
    }

    public static InitializationStatus getInitializationStatus() {
        return zzxq.zzpw().getInitializationStatus();
    }

    public static RequestConfiguration getRequestConfiguration() {
        return zzxq.zzpw().getRequestConfiguration();
    }

    public static RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        return zzxq.zzpw().getRewardedVideoAdInstance(context);
    }

    public static String getVersionString() {
        return zzxq.zzpw().getVersionString();
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    public static void initialize(Context context, OnInitializationCompleteListener onInitializationCompleteListener) {
        zzxq.zzpw().zza(context, null, null, onInitializationCompleteListener);
    }

    public static void initialize(Context context, String str) {
        initialize(context, str, null);
    }

    @Deprecated
    public static void initialize(Context context, String str, Settings settings) {
        zzxq.zzpw().zza(context, str, settings == null ? null : settings.m6097a(), null);
    }

    public static void openDebugMenu(Context context, String str) {
        zzxq.zzpw().openDebugMenu(context, str);
    }

    public static void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        zzxq.zzpw().registerRtbAdapter(cls);
    }

    public static void setAppMuted(boolean z) {
        zzxq.zzpw().setAppMuted(z);
    }

    public static void setAppVolume(float f) {
        zzxq.zzpw().setAppVolume(f);
    }

    public static void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        zzxq.zzpw().setRequestConfiguration(requestConfiguration);
    }
}
