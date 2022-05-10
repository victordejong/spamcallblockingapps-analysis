package com.google.ads.mediation.inmobi;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.inmobi.sdk.InMobiSdk;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p161d.p162a.p163b.p166h.C2473d;
import p131c.p161d.p162a.p163b.p166h.C2477h;
import p131c.p161d.p162a.p163b.p166h.p167i.C2479a;
import p131c.p161d.p162a.p163b.p166h.p167i.C2481b;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiMediationAdapter.class */
public class InMobiMediationAdapter extends RtbAdapter {

    /* renamed from: d */
    public static final String f21896d = "InMobiMediationAdapter";
    public static AtomicBoolean isSdkInitialized = new AtomicBoolean(false);

    /* renamed from: a */
    public C2479a f21897a;

    /* renamed from: b */
    public C2481b f21898b;

    /* renamed from: c */
    public C2477h f21899c;

    /* renamed from: com.google.ads.mediation.inmobi.InMobiMediationAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiMediationAdapter$a.class */
    public class RunnableC7109a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f21900a;

        /* renamed from: b */
        public final /* synthetic */ long f21901b;

        /* renamed from: c */
        public final /* synthetic */ AdSize f21902c;

        /* renamed from: d */
        public final /* synthetic */ SignalCallbacks f21903d;

        public RunnableC7109a(Context context, long j, AdSize adSize, SignalCallbacks signalCallbacks) {
            this.f21900a = context;
            this.f21901b = j;
            this.f21902c = adSize;
            this.f21903d = signalCallbacks;
        }

        @Override // java.lang.Runnable
        public void run() {
            InMobiMediationAdapter.this.f21897a = new C2479a(this.f21900a, this.f21901b, this.f21902c);
            InMobiMediationAdapter.this.f21897a.m29684a(this.f21903d);
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiMediationAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiMediationAdapter$b.class */
    public class RunnableC7110b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f21905a;

        /* renamed from: b */
        public final /* synthetic */ long f21906b;

        /* renamed from: c */
        public final /* synthetic */ SignalCallbacks f21907c;

        public RunnableC7110b(Context context, long j, SignalCallbacks signalCallbacks) {
            this.f21905a = context;
            this.f21906b = j;
            this.f21907c = signalCallbacks;
        }

        @Override // java.lang.Runnable
        public void run() {
            InMobiMediationAdapter.this.f21898b = new C2481b(this.f21905a, this.f21906b);
            InMobiMediationAdapter.this.f21898b.m29677a(this.f21907c);
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiMediationAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiMediationAdapter$c.class */
    public class RunnableC7111c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f21909a;

        /* renamed from: b */
        public final /* synthetic */ long f21910b;

        /* renamed from: c */
        public final /* synthetic */ SignalCallbacks f21911c;

        public RunnableC7111c(Context context, long j, SignalCallbacks signalCallbacks) {
            this.f21909a = context;
            this.f21910b = j;
            this.f21911c = signalCallbacks;
        }

        @Override // java.lang.Runnable
        public void run() {
            InMobiMediationAdapter.this.f21899c = new C2477h(this.f21909a, this.f21910b);
            InMobiMediationAdapter.this.f21899c.m29690a(this.f21911c);
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiMediationAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiMediationAdapter$d.class */
    public static /* synthetic */ class C7112d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21913a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AdFormat.values().length];
            f21913a = iArr;
            try {
                iArr[AdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21913a[AdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21913a[AdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(RtbSignalData rtbSignalData, SignalCallbacks signalCallbacks) {
        MediationConfiguration b = rtbSignalData.m17920b();
        Bundle b2 = b.m17932b();
        String string = b2.getString("accountid");
        Context c = rtbSignalData.m17919c();
        InMobiSdk.init(c, string);
        InMobiSdk.setLogLevel(InMobiSdk.LogLevel.DEBUG);
        long parseLong = Long.parseLong(b2.getString("placementid"));
        Handler handler = new Handler(c.getMainLooper());
        int i = C7112d.f21913a[b.m17933a().ordinal()];
        if (i == 1) {
            handler.post(new RunnableC7109a(c, parseLong, rtbSignalData.m17921a(), signalCallbacks));
        } else if (i == 2) {
            handler.post(new RunnableC7110b(c, parseLong, signalCallbacks));
        } else if (i == 3) {
            handler.post(new RunnableC7111c(c, parseLong, signalCallbacks));
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String[] split = InMobiSdk.getVersion().split("\\.");
        return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = "7.3.0.0".split("\\.");
        return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), (Integer.parseInt(split[2]) * 100) + Integer.parseInt(split[3]));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        if (!(context instanceof Activity)) {
            initializationCompleteCallback.mo17944e("InMobi SDK requires an Activity context to initialize");
            return;
        }
        HashSet hashSet = new HashSet();
        for (MediationConfiguration mediationConfiguration : list) {
            String string = mediationConfiguration.m17932b().getString("accountid");
            if (!TextUtils.isEmpty(string)) {
                hashSet.add(string);
            }
        }
        int size = hashSet.size();
        if (size > 0) {
            String str = (String) hashSet.iterator().next();
            if (size > 1) {
                Log.w(f21896d, String.format("Multiple '%s' entries found: %s. Using '%s' to initialize the InMobi SDK", "accountid", hashSet, str));
            }
            InMobiSdk.init(context, str, C2473d.m29701a());
            isSdkInitialized.set(true);
            initializationCompleteCallback.mo17945Q();
            return;
        }
        Log.d(f21896d, "Initialization failed: Missing or invalid Account ID.");
        initializationCompleteCallback.mo17944e("Initialization failed: Missing or invalid Account ID.");
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        C2479a aVar = new C2479a(mediationBannerAdConfiguration.m17942b(), Long.parseLong(mediationBannerAdConfiguration.m17939e().getString("placementid")), mediationBannerAdConfiguration.m17934g());
        this.f21897a = aVar;
        aVar.m29685a(mediationBannerAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        C2481b bVar = new C2481b(mediationInterstitialAdConfiguration.m17942b(), Long.parseLong(mediationInterstitialAdConfiguration.m17939e().getString("placementid")));
        this.f21898b = bVar;
        bVar.m29678a(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        C2477h hVar = new C2477h(mediationRewardedAdConfiguration.m17942b(), Long.parseLong(mediationRewardedAdConfiguration.m17939e().getString("placementid")));
        this.f21899c = hVar;
        hVar.m29691a(mediationRewardedAdConfiguration, mediationAdLoadCallback);
    }
}
