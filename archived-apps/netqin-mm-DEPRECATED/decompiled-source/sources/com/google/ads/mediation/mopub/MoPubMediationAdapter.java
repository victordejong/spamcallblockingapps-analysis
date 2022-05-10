package com.google.ads.mediation.mopub;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.SdkConfiguration;
import com.mopub.common.SdkInitializationListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubRewardedVideoListener;
import com.mopub.mobileads.MoPubRewardedVideoManager;
import com.mopub.mobileads.dfp.adapters.BuildConfig;
import java.util.List;
import java.util.Set;
import p131c.p161d.p162a.p163b.p168i.C2483a;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter.class */
public class MoPubMediationAdapter extends Adapter implements MediationRewardedAd, MoPubRewardedVideoListener {

    /* renamed from: e */
    public static final String f21914e = "MoPubMediationAdapter";

    /* renamed from: a */
    public String f21915a = "";

    /* renamed from: b */
    public boolean f21916b;

    /* renamed from: c */
    public MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> f21917c;

    /* renamed from: d */
    public MediationRewardedAdCallback f21918d;

    /* renamed from: com.google.ads.mediation.mopub.MoPubMediationAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter$a.class */
    public class C7113a implements SdkInitializationListener {

        /* renamed from: a */
        public final /* synthetic */ InitializationCompleteCallback f21919a;

        public C7113a(MoPubMediationAdapter moPubMediationAdapter, InitializationCompleteCallback initializationCompleteCallback) {
            this.f21919a = initializationCompleteCallback;
        }

        @Override // com.mopub.common.SdkInitializationListener
        public void onInitializationFinished() {
            this.f21919a.mo17945Q();
        }
    }

    /* renamed from: com.google.ads.mediation.mopub.MoPubMediationAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter$b.class */
    public class C7114b implements RewardItem {

        /* renamed from: a */
        public final /* synthetic */ MoPubReward f21920a;

        public C7114b(MoPubMediationAdapter moPubMediationAdapter, MoPubReward moPubReward) {
            this.f21920a = moPubReward;
        }

        @Override // com.google.android.gms.ads.rewarded.RewardItem
        public String getType() {
            return this.f21920a.getLabel();
        }

        @Override // com.google.android.gms.ads.rewarded.RewardItem
        /* renamed from: y */
        public int mo16298y() {
            return this.f21920a.getAmount();
        }
    }

    /* renamed from: com.google.ads.mediation.mopub.MoPubMediationAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/mopub/MoPubMediationAdapter$c.class */
    public static /* synthetic */ class C7115c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21921a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubErrorCode.values().length];
            f21921a = iArr;
            try {
                iArr[MoPubErrorCode.NO_FILL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21921a[MoPubErrorCode.NETWORK_TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21921a[MoPubErrorCode.SERVER_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21921a[MoPubErrorCode.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String[] split = "5.11.1".split("\\.");
        if (split.length >= 3) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        }
        Log.w(f21914e, String.format("Unexpected SDK version format: %s.Returning 0.0.0 for SDK version.", "5.11.1"));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = BuildConfig.VERSION_NAME.split("\\.");
        if (split.length >= 4) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), (Integer.parseInt(split[2]) * 100) + Integer.parseInt(split[3]));
        }
        Log.w(f21914e, String.format("Unexpected adapter version format: %s.Returning 0.0.0 for adapter version.", BuildConfig.VERSION_NAME));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        if (!(context instanceof Activity)) {
            initializationCompleteCallback.mo17944e("MoPub SDK requires an Activity context to initialize.");
            return;
        }
        for (MediationConfiguration mediationConfiguration : list) {
            String string = mediationConfiguration.m17932b().getString("adUnitId");
            this.f21915a = string;
            if (!TextUtils.isEmpty(string)) {
                break;
            }
        }
        if (TextUtils.isEmpty(this.f21915a)) {
            initializationCompleteCallback.mo17944e("Initialization failed: Missing or Invalid MoPub Ad Unit ID.");
            return;
        }
        C2483a.m29673a().m29672a((Activity) context, new SdkConfiguration.Builder(this.f21915a).build(), new C7113a(this, initializationCompleteCallback));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        Context b = mediationRewardedAdConfiguration.m17942b();
        String string = mediationRewardedAdConfiguration.m17939e().getString("adUnitId");
        this.f21915a = string;
        if (TextUtils.isEmpty(string)) {
            Log.w(f21914e, "Failed to request ad from MoPub: Missing or Invalid MoPub Ad Unit ID.");
            mediationAdLoadCallback.mo17937a("Failed to request ad from MoPub: Missing or Invalid MoPub Ad Unit ID.");
            return;
        }
        this.f21917c = mediationAdLoadCallback;
        C2483a.m29673a().m29671a(b, this.f21915a, new MoPubRewardedVideoManager.RequestParameters(C2483a.m29668a((MediationAdConfiguration) mediationRewardedAdConfiguration, false), C2483a.m29668a((MediationAdConfiguration) mediationRewardedAdConfiguration, true), mediationRewardedAdConfiguration.m17941c()), this);
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoClicked(String str) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f21918d;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.mo16290C();
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoClosed(String str) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f21918d;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.mo16292A();
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoCompleted(Set<String> set, MoPubReward moPubReward) {
        Preconditions.checkNotNull(moPubReward);
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f21918d;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.onVideoComplete();
            this.f21918d.mo16289a(new C7114b(this, moPubReward));
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoLoadFailure(String str, MoPubErrorCode moPubErrorCode) {
        String str2;
        if (this.f21917c != null) {
            int i = C7115c.f21921a[moPubErrorCode.ordinal()];
            if (i == 1) {
                str2 = "Failed to load MoPub rewarded video: No Fill.";
            } else if (i == 2) {
                str2 = "Failed to load MoPub rewarded video: Network error.";
            } else if (i == 3) {
                str2 = "Failed to load MoPub rewarded video: Invalid Request.";
            } else if (i != 4) {
                str2 = "Failed to load MoPub rewarded video: Internal Error.";
            } else {
                C2483a.m29673a().m29666a(str, this);
                this.f21916b = true;
                str2 = "Failed to load MoPub rewarded video: The MoPub Ad has expired. Please make a new Ad Request.";
            }
            Log.i(f21914e, str2);
            this.f21917c.mo17937a(str2);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoLoadSuccess(String str) {
        MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback = this.f21917c;
        if (mediationAdLoadCallback != null) {
            this.f21918d = mediationAdLoadCallback.onSuccess(this);
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoPlaybackError(String str, MoPubErrorCode moPubErrorCode) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f21918d;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.mo16288a("Failed to playback MoPub rewarded video: " + moPubErrorCode.toString());
        }
    }

    @Override // com.mopub.mobileads.MoPubRewardedVideoListener
    public void onRewardedVideoStarted(String str) {
        MediationRewardedAdCallback mediationRewardedAdCallback = this.f21918d;
        if (mediationRewardedAdCallback != null) {
            mediationRewardedAdCallback.mo16286t();
            this.f21918d.mo16287j0();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        MediationRewardedAdCallback mediationRewardedAdCallback;
        MediationRewardedAdCallback mediationRewardedAdCallback2;
        if (this.f21916b && (mediationRewardedAdCallback2 = this.f21918d) != null) {
            mediationRewardedAdCallback2.mo16288a("Failed to show a MoPub rewarded video. The MoPub Ad has expired. Please make a new Ad Request.");
        } else if (!this.f21916b && !C2483a.m29673a().m29664b(this.f21915a) && (mediationRewardedAdCallback = this.f21918d) != null) {
            mediationRewardedAdCallback.mo16288a("Failed to show a MoPub rewarded video. Either the video is not ready or the ad unit ID is empty.");
        }
    }
}
