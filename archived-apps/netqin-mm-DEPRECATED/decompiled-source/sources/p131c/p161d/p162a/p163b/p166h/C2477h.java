package p131c.p161d.p162a.p163b.p166h;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.mediation.inmobi.InMobiMediationAdapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.sdk.InMobiSdk;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.a.b.h.h */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/h.class */
public class C2477h implements MediationRewardedAd {

    /* renamed from: e */
    public static HashMap<Long, WeakReference<C2477h>> f9444e = new HashMap<>();

    /* renamed from: f */
    public static final String f9445f = C2477h.class.getName();

    /* renamed from: a */
    public InMobiInterstitial f9446a;

    /* renamed from: b */
    public SignalCallbacks f9447b;

    /* renamed from: c */
    public MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> f9448c;

    /* renamed from: d */
    public MediationRewardedAdCallback f9449d;

    /* renamed from: c.d.a.b.h.h$a */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/h$a.class */
    public class C2478a extends InterstitialAdEventListener {

        /* renamed from: a */
        public final /* synthetic */ long f9450a;

        public C2478a(long j) {
            this.f9450a = j;
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdClicked(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            Log.d(C2477h.f9445f, "onAdClicked");
            if (C2477h.this.f9449d != null) {
                C2477h.this.f9449d.mo16290C();
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDismissed(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "onAdDismissed");
            if (C2477h.this.f9449d != null) {
                C2477h.this.f9449d.mo16292A();
            }
            C2477h.f9444e.remove(Long.valueOf(this.f9450a));
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayFailed(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "onAdDisplayFailed");
            if (C2477h.this.f9449d != null) {
                C2477h.this.f9449d.mo16288a("Internal Error.");
            }
            C2477h.f9444e.remove(Long.valueOf(this.f9450a));
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayed(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "onAdDisplayed");
            if (C2477h.this.f9449d != null) {
                C2477h.this.f9449d.mo16286t();
                C2477h.this.f9449d.mo16287j0();
                C2477h.this.f9449d.mo16291B();
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdLoadFailed(InMobiInterstitial inMobiInterstitial, InMobiAdRequestStatus inMobiAdRequestStatus) {
            String str = "Failed to load ad from InMobi: " + inMobiAdRequestStatus.getMessage();
            Log.w(C2477h.f9445f, str);
            C2477h.this.f9448c.mo17937a(str);
            C2477h.f9444e.remove(Long.valueOf(this.f9450a));
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdLoadSucceeded(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "onAdLoadSucceeded");
            C2477h hVar = C2477h.this;
            hVar.f9449d = (MediationRewardedAdCallback) hVar.f9448c.onSuccess(C2477h.this);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdReceived(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "InMobi Ad server responded with an Ad.");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdWillDisplay(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "onAdWillDisplay");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRequestPayloadCreated(byte[] bArr) {
            String str = new String(bArr);
            String str2 = C2477h.f9445f;
            Log.d(str2, "onRequestPayloadCreated: " + str);
            if (C2477h.this.f9447b != null) {
                C2477h.this.f9447b.onSuccess(str);
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRequestPayloadCreationFailed(InMobiAdRequestStatus inMobiAdRequestStatus) {
            String message = inMobiAdRequestStatus.getMessage();
            String str = C2477h.f9445f;
            Log.d(str, "onRequestPayloadCreationFailed: " + message);
            if (C2477h.this.f9447b != null) {
                C2477h.this.f9447b.mo17917a(message);
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRewardsUnlocked(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            int i;
            Log.d(C2477h.f9445f, "InMobi RewardedVideo onRewardsUnlocked.");
            String str = "";
            if (map != null) {
                Iterator<Object> it = map.keySet().iterator();
                str = "";
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    String obj = it.next().toString();
                    String obj2 = map.get(obj).toString();
                    str = obj2;
                    str = obj;
                    if (!TextUtils.isEmpty(obj)) {
                        str = obj2;
                        str = obj;
                        if (!TextUtils.isEmpty(obj2)) {
                            str = obj;
                            str = obj2;
                            break;
                        }
                    }
                }
            } else {
                str = "";
            }
            if (!TextUtils.isEmpty(str)) {
                try {
                    i = Integer.parseInt(str);
                } catch (NumberFormatException e) {
                    String str2 = C2477h.f9445f;
                    Log.w(str2, "Expected an integer reward value. Got " + str + " instead. Using reward value of 1.");
                    i = 1;
                }
            } else {
                i = 0;
            }
            if (C2477h.this.f9449d != null) {
                C2477h.this.f9449d.onVideoComplete();
                C2477h.this.f9449d.mo16289a(new C2476g(str, i));
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onUserLeftApplication(InMobiInterstitial inMobiInterstitial) {
            Log.d(C2477h.f9445f, "onUserLeftApplication");
        }
    }

    public C2477h(Context context, long j) {
        this.f9446a = new InMobiInterstitial(context, j, new C2478a(j));
    }

    /* renamed from: a */
    public void m29691a(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        Context b = mediationRewardedAdConfiguration.m17942b();
        this.f9448c = mediationAdLoadCallback;
        if (!(b instanceof Activity)) {
            Log.w(f9445f, "Failed to load ad from InMobi: InMobi SDK requires an Activity context to load ads.");
            mediationAdLoadCallback.mo17937a("Failed to load ad from InMobi: InMobi SDK requires an Activity context to load ads.");
            return;
        }
        Bundle e = mediationRewardedAdConfiguration.m17939e();
        Bundle d = mediationRewardedAdConfiguration.m17940d();
        if (!InMobiMediationAdapter.isSdkInitialized.get()) {
            String string = e.getString("accountid");
            if (TextUtils.isEmpty(string)) {
                Log.w(f9445f, "Failed to load ad from InMobi: Missing or Invalid Account ID.");
                this.f9448c.mo17937a("Failed to load ad from InMobi: Missing or Invalid Account ID.");
                return;
            }
            InMobiSdk.init(b, string, C2473d.m29701a());
            InMobiMediationAdapter.isSdkInitialized.set(true);
        }
        String string2 = e.getString("placementid");
        if (TextUtils.isEmpty(string2)) {
            Log.e(f9445f, "Failed to load ad from InMobi: Missing or Invalid Placement ID.");
            this.f9448c.mo17937a("Failed to load ad from InMobi: Missing or Invalid Placement ID.");
            return;
        }
        try {
            long parseLong = Long.parseLong(string2.trim());
            if (!f9444e.containsKey(Long.valueOf(parseLong)) || f9444e.get(Long.valueOf(parseLong)).get() == null) {
                this.f9446a.setExtras(C2469b.m29715a(mediationRewardedAdConfiguration));
                C2469b.m29712a(mediationRewardedAdConfiguration, d);
                String a = mediationRewardedAdConfiguration.m17943a();
                if (TextUtils.isEmpty(a)) {
                    this.f9446a.load();
                } else {
                    this.f9446a.load(a.getBytes());
                }
            } else {
                String str = "Failed to load ad from InMobi: An ad has already been requested for placement ID: " + parseLong;
                Log.w(f9445f, str);
                this.f9448c.mo17937a(str);
            }
        } catch (NumberFormatException e2) {
            Log.w(f9445f, "Failed to load ad from InMobi: Invalid Placement ID.", e2);
            this.f9448c.mo17937a("Failed to load ad from InMobi: Invalid Placement ID.");
        }
    }

    /* renamed from: a */
    public void m29690a(SignalCallbacks signalCallbacks) {
        this.f9447b = signalCallbacks;
        this.f9446a.getSignals();
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        if (this.f9446a.isReady()) {
            this.f9446a.show();
        }
    }
}
