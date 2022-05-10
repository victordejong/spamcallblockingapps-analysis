package p131c.p161d.p162a.p163b.p166h.p167i;

import android.content.Context;
import android.util.Log;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.listeners.BannerAdEventListener;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.a.b.h.i.a */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/i/a.class */
public class C2479a implements MediationBannerAd {

    /* renamed from: a */
    public final InMobiBanner f9452a;

    /* renamed from: b */
    public SignalCallbacks f9453b;

    /* renamed from: c */
    public MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> f9454c;

    /* renamed from: d */
    public MediationBannerAdCallback f9455d;

    /* renamed from: e */
    public final String f9456e = C2479a.class.getName();

    /* renamed from: c.d.a.b.h.i.a$a */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/i/a$a.class */
    public class C2480a extends BannerAdEventListener {
        public C2480a() {
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdClicked(InMobiBanner inMobiBanner, Map<Object, Object> map) {
            Log.d(C2479a.this.f9456e, "onAdClicked");
            if (C2479a.this.f9455d != null) {
                C2479a.this.f9455d.mo16290C();
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdDismissed(InMobiBanner inMobiBanner) {
            Log.d(C2479a.this.f9456e, "onAdDismissed");
            if (C2479a.this.f9455d != null) {
                C2479a.this.f9455d.mo16292A();
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdDisplayed(InMobiBanner inMobiBanner) {
            Log.d(C2479a.this.f9456e, "onAdDisplayed");
            if (C2479a.this.f9455d != null) {
                C2479a.this.f9455d.mo16286t();
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdLoadFailed(InMobiBanner inMobiBanner, InMobiAdRequestStatus inMobiAdRequestStatus) {
            String str = "onAdLoadFailed: " + inMobiAdRequestStatus.getMessage();
            Log.d(C2479a.this.f9456e, str);
            if (C2479a.this.f9454c != null) {
                C2479a.this.f9454c.mo17937a(str);
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdLoadSucceeded(InMobiBanner inMobiBanner) {
            Log.d(C2479a.this.f9456e, "onAdLoadSucceeded");
            if (C2479a.this.f9454c != null) {
                C2479a aVar = C2479a.this;
                aVar.f9455d = (MediationBannerAdCallback) aVar.f9454c.onSuccess(C2479a.this);
                C2479a.this.f9455d.mo16291B();
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onRequestPayloadCreated(byte[] bArr) {
            String str = new String(bArr);
            String str2 = C2479a.this.f9456e;
            Log.d(str2, "onRequestPayloadCreated: " + str);
            if (C2479a.this.f9453b != null) {
                C2479a.this.f9453b.onSuccess(str);
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onRequestPayloadCreationFailed(InMobiAdRequestStatus inMobiAdRequestStatus) {
            String message = inMobiAdRequestStatus.getMessage();
            String str = C2479a.this.f9456e;
            Log.d(str, "onRequestPayloadCreationFailed: " + message);
            if (C2479a.this.f9453b != null) {
                C2479a.this.f9453b.mo17917a(message);
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onUserLeftApplication(InMobiBanner inMobiBanner) {
            Log.d(C2479a.this.f9456e, "onUserLeftApplication");
            if (C2479a.this.f9455d != null) {
                C2479a.this.f9455d.mo17931k();
            }
        }
    }

    public C2479a(Context context, long j, AdSize adSize) {
        InMobiBanner inMobiBanner = new InMobiBanner(context, j);
        this.f9452a = inMobiBanner;
        inMobiBanner.setBannerSize(adSize.m18133b(), adSize.m18137a());
        this.f9452a.setListener(new C2480a());
        HashMap hashMap = new HashMap();
        hashMap.put("tp", "c_admob");
        this.f9452a.setExtras(hashMap);
    }

    /* renamed from: a */
    public void m29685a(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        this.f9454c = mediationAdLoadCallback;
        this.f9452a.load(mediationBannerAdConfiguration.m17943a().getBytes());
    }

    /* renamed from: a */
    public void m29684a(SignalCallbacks signalCallbacks) {
        this.f9453b = signalCallbacks;
        this.f9452a.getSignals();
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAd
    public View getView() {
        return this.f9452a;
    }
}
