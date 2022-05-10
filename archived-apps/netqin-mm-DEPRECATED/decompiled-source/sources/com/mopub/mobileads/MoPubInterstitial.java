package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowInsets;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.mobileads.CustomEventInterstitialAdapter;
import com.mopub.mobileads.factories.CustomEventInterstitialAdapterFactory;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial.class */
public class MoPubInterstitial implements CustomEventInterstitialAdapter.AbstractC8771b {

    /* renamed from: a */
    public MoPubInterstitialView f34117a;

    /* renamed from: b */
    public CustomEventInterstitialAdapter f34118b;

    /* renamed from: c */
    public InterstitialAdListener f34119c;

    /* renamed from: d */
    public Activity f34120d;

    /* renamed from: g */
    public volatile InterstitialState f34123g = InterstitialState.IDLE;

    /* renamed from: e */
    public Handler f34121e = new Handler();

    /* renamed from: f */
    public final Runnable f34122f = new RunnableC8778a();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$InterstitialAdListener.class */
    public interface InterstitialAdListener {
        void onInterstitialClicked(MoPubInterstitial moPubInterstitial);

        void onInterstitialDismissed(MoPubInterstitial moPubInterstitial);

        void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded(MoPubInterstitial moPubInterstitial);

        void onInterstitialShown(MoPubInterstitial moPubInterstitial);
    }

    @VisibleForTesting
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$InterstitialState.class */
    public enum InterstitialState {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$MoPubInterstitialView.class */
    public class MoPubInterstitialView extends MoPubView {
        public MoPubInterstitialView(Context context) {
            super(context);
            setAutorefreshEnabled(false);
        }

        @Override // com.mopub.mobileads.MoPubView
        /* renamed from: a */
        public void mo4323a(MoPubErrorCode moPubErrorCode) {
            MoPubInterstitial.this.m4380a(InterstitialState.IDLE);
            if (MoPubInterstitial.this.f34119c != null) {
                MoPubInterstitial.this.f34119c.onInterstitialFailed(MoPubInterstitial.this, moPubErrorCode);
            }
        }

        @Override // com.mopub.mobileads.MoPubView
        /* renamed from: a */
        public void mo4320a(String str, Map<String, String> map) {
            if (this.f34173a != null) {
                if (TextUtils.isEmpty(str)) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Couldn't invoke custom event because the server did not specify one.");
                    m4318b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                    return;
                }
                if (MoPubInterstitial.this.f34118b != null) {
                    MoPubInterstitial.this.f34118b.m4398c();
                }
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Loading custom event interstitial adapter.");
                MoPubInterstitial moPubInterstitial = MoPubInterstitial.this;
                moPubInterstitial.f34118b = CustomEventInterstitialAdapterFactory.create(moPubInterstitial, str, map, this.f34173a.getBroadcastIdentifier(), this.f34173a.getAdReport());
                MoPubInterstitial.this.f34118b.m4400a(MoPubInterstitial.this);
                MoPubInterstitial.this.f34118b.m4395f();
            }
        }

        @Override // com.mopub.mobileads.MoPubView
        public AdFormat getAdFormat() {
            return AdFormat.INTERSTITIAL;
        }

        public String getCustomEventClassName() {
            return this.f34173a.getCustomEventClassName();
        }

        @Override // com.mopub.mobileads.MoPubView
        /* renamed from: l */
        public Point mo4308l() {
            return DeviceUtils.getDeviceDimensions(MoPubInterstitial.this.f34120d);
        }

        /* renamed from: p */
        public void m4367p() {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Tracking impression for interstitial.");
            AdViewController adViewController = this.f34173a;
            if (adViewController != null) {
                adViewController.m4448p();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$a.class */
    public class RunnableC8778a implements Runnable {
        public RunnableC8778a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Expiring unused Interstitial ad.");
            MoPubInterstitial.this.m4379a(InterstitialState.IDLE, true);
            if (!InterstitialState.SHOWING.equals(MoPubInterstitial.this.f34123g) && !InterstitialState.DESTROYED.equals(MoPubInterstitial.this.f34123g)) {
                MoPubInterstitial.this.f34117a.mo4323a(MoPubErrorCode.EXPIRED);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubInterstitial$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubInterstitial$b.class */
    public static /* synthetic */ class C8779b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34126a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[InterstitialState.values().length];
            f34126a = iArr;
            try {
                iArr[InterstitialState.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34126a[InterstitialState.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34126a[InterstitialState.SHOWING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34126a[InterstitialState.DESTROYED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34126a[InterstitialState.IDLE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public MoPubInterstitial(Activity activity, String str) {
        this.f34120d = activity;
        MoPubInterstitialView moPubInterstitialView = new MoPubInterstitialView(this.f34120d);
        this.f34117a = moPubInterstitialView;
        moPubInterstitialView.setAdUnitId(str);
    }

    /* renamed from: a */
    public Integer m4381a(int i) {
        return this.f34117a.m4325a(i);
    }

    /* renamed from: a */
    public final void m4382a() {
        CustomEventInterstitialAdapter customEventInterstitialAdapter = this.f34118b;
        if (customEventInterstitialAdapter != null) {
            customEventInterstitialAdapter.m4398c();
            this.f34118b = null;
        }
    }

    /* renamed from: a */
    public final boolean m4380a(InterstitialState interstitialState) {
        return m4379a(interstitialState, false);
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4379a(InterstitialState interstitialState, boolean z) {
        synchronized (this) {
            Preconditions.checkNotNull(interstitialState);
            int i = C8779b.f34126a[this.f34123g.ordinal()];
            if (i == 1) {
                int i2 = C8779b.f34126a[interstitialState.ordinal()];
                if (i2 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already loading an interstitial.");
                    }
                    return false;
                } else if (i2 == 2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
                    this.f34123g = InterstitialState.READY;
                    if (AdTypeTranslator.CustomEventType.isMoPubSpecific(this.f34117a.getCustomEventClassName())) {
                        this.f34121e.postDelayed(this.f34122f, 14400000L);
                    }
                    if (this.f34117a.f34173a != null) {
                        this.f34117a.f34173a.m4462c();
                    }
                    if (this.f34119c != null) {
                        this.f34119c.onInterstitialLoaded(this);
                    }
                    return true;
                } else if (i2 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial is not ready to be shown yet.");
                    return false;
                } else if (i2 == 4) {
                    m4373c();
                    return true;
                } else if (i2 != 5) {
                    return false;
                } else {
                    m4382a();
                    this.f34123g = InterstitialState.IDLE;
                    return true;
                }
            } else if (i == 2) {
                int i3 = C8779b.f34126a[interstitialState.ordinal()];
                if (i3 == 1) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already loaded. Not loading another.");
                    if (this.f34119c != null) {
                        this.f34119c.onInterstitialLoaded(this);
                    }
                    return false;
                } else if (i3 == 3) {
                    m4371d();
                    this.f34123g = InterstitialState.SHOWING;
                    this.f34121e.removeCallbacks(this.f34122f);
                    return true;
                } else if (i3 == 4) {
                    m4373c();
                    return true;
                } else if (i3 != 5) {
                    return false;
                } else {
                    if (!z) {
                        return false;
                    }
                    m4382a();
                    this.f34123g = InterstitialState.IDLE;
                    return true;
                }
            } else if (i == 3) {
                int i4 = C8779b.f34126a[interstitialState.ordinal()];
                if (i4 == 1) {
                    if (!z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Interstitial already showing. Not loading another.");
                    }
                    return false;
                } else if (i4 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Already showing an interstitial. Cannot show it again.");
                    return false;
                } else if (i4 == 4) {
                    m4373c();
                    return true;
                } else if (i4 != 5) {
                    return false;
                } else {
                    if (z) {
                        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot force refresh while showing an interstitial.");
                        return false;
                    }
                    m4382a();
                    this.f34123g = InterstitialState.IDLE;
                    return true;
                }
            } else if (i == 4) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MoPubInterstitial destroyed. Ignoring all requests.");
                return false;
            } else if (i != 5) {
                return false;
            } else {
                int i5 = C8779b.f34126a[interstitialState.ordinal()];
                if (i5 == 1) {
                    m4382a();
                    this.f34123g = InterstitialState.LOADING;
                    m4369e();
                    if (z) {
                        this.f34117a.forceRefresh();
                    } else {
                        this.f34117a.loadAd();
                    }
                    return true;
                } else if (i5 == 2) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Attempted transition from IDLE to READY failed due to no known load call.");
                    return false;
                } else if (i5 == 3) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "No interstitial loading or loaded.");
                    return false;
                } else if (i5 != 4) {
                    return false;
                } else {
                    m4373c();
                    return true;
                }
            }
        }
    }

    /* renamed from: b */
    public boolean m4375b() {
        return this.f34123g == InterstitialState.DESTROYED;
    }

    /* renamed from: c */
    public final void m4373c() {
        m4382a();
        this.f34119c = null;
        this.f34117a.setBannerAdListener(null);
        this.f34117a.destroy();
        this.f34121e.removeCallbacks(this.f34122f);
        this.f34123g = InterstitialState.DESTROYED;
    }

    /* renamed from: d */
    public final void m4371d() {
        CustomEventInterstitialAdapter customEventInterstitialAdapter = this.f34118b;
        if (customEventInterstitialAdapter != null) {
            customEventInterstitialAdapter.m4394g();
        }
    }

    public void destroy() {
        m4380a(InterstitialState.DESTROYED);
    }

    /* renamed from: e */
    public final void m4369e() {
        Window window;
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT >= 28 && (window = this.f34120d.getWindow()) != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null) {
            this.f34117a.setWindowInsets(rootWindowInsets);
        }
    }

    public void forceRefresh() {
        m4379a(InterstitialState.IDLE, true);
        m4379a(InterstitialState.LOADING, true);
    }

    public Activity getActivity() {
        return this.f34120d;
    }

    public InterstitialAdListener getInterstitialAdListener() {
        return this.f34119c;
    }

    public String getKeywords() {
        return this.f34117a.getKeywords();
    }

    public Map<String, Object> getLocalExtras() {
        return this.f34117a.getLocalExtras();
    }

    public Location getLocation() {
        return this.f34117a.getLocation();
    }

    public boolean getTesting() {
        return this.f34117a.getTesting();
    }

    public String getUserDataKeywords() {
        return this.f34117a.getUserDataKeywords();
    }

    public boolean isReady() {
        return this.f34123g == InterstitialState.READY;
    }

    public void load() {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        m4380a(InterstitialState.LOADING);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC8771b
    public void onCustomEventInterstitialClicked() {
        if (!m4375b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            this.f34117a.m4310j();
            InterstitialAdListener interstitialAdListener = this.f34119c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialClicked(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC8771b
    public void onCustomEventInterstitialDismissed() {
        if (!m4375b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.WILL_DISAPPEAR, new Object[0]);
            m4380a(InterstitialState.IDLE);
            InterstitialAdListener interstitialAdListener = this.f34119c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialDismissed(this);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC8771b
    public void onCustomEventInterstitialFailed(MoPubErrorCode moPubErrorCode) {
        if (!m4375b()) {
            if (this.f34123g == InterstitialState.LOADING) {
                MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            } else if (this.f34123g == InterstitialState.SHOWING) {
                MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            }
            if (!this.f34117a.m4318b(moPubErrorCode)) {
                m4380a(InterstitialState.IDLE);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC8771b
    public void onCustomEventInterstitialImpression() {
        CustomEventInterstitialAdapter customEventInterstitialAdapter;
        if (!m4375b() && (customEventInterstitialAdapter = this.f34118b) != null && !customEventInterstitialAdapter.m4397d()) {
            this.f34117a.m4367p();
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC8771b
    public void onCustomEventInterstitialLoaded() {
        if (!m4375b()) {
            m4380a(InterstitialState.READY);
        }
    }

    @Override // com.mopub.mobileads.CustomEventInterstitialAdapter.AbstractC8771b
    public void onCustomEventInterstitialShown() {
        if (!m4375b()) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            CustomEventInterstitialAdapter customEventInterstitialAdapter = this.f34118b;
            if (customEventInterstitialAdapter == null || customEventInterstitialAdapter.m4397d()) {
                this.f34117a.m4367p();
            }
            InterstitialAdListener interstitialAdListener = this.f34119c;
            if (interstitialAdListener != null) {
                interstitialAdListener.onInterstitialShown(this);
            }
        }
    }

    public void setInterstitialAdListener(InterstitialAdListener interstitialAdListener) {
        this.f34119c = interstitialAdListener;
    }

    public void setKeywords(String str) {
        this.f34117a.setKeywords(str);
    }

    public void setLocalExtras(Map<String, Object> map) {
        this.f34117a.setLocalExtras(map);
    }

    public void setTesting(boolean z) {
        this.f34117a.setTesting(z);
    }

    public void setUserDataKeywords(String str) {
        this.f34117a.setUserDataKeywords(str);
    }

    public boolean show() {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        return m4380a(InterstitialState.SHOWING);
    }
}
