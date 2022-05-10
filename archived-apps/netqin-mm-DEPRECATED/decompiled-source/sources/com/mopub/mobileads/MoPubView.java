package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.mopub.common.AdFormat;
import com.mopub.common.AdReport;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.Visibility;
import com.mopub.mobileads.base.C8850R;
import com.mopub.mobileads.factories.AdViewControllerFactory;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView.class */
public class MoPubView extends FrameLayout {

    /* renamed from: a */
    public AdViewController f34173a;

    /* renamed from: b */
    public Object f34174b;

    /* renamed from: c */
    public Context f34175c;

    /* renamed from: d */
    public int f34176d;

    /* renamed from: e */
    public BroadcastReceiver f34177e;

    /* renamed from: f */
    public MoPubAdSize f34178f;

    /* renamed from: g */
    public BannerAdListener f34179g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$BannerAdListener.class */
    public interface BannerAdListener {
        void onBannerClicked(MoPubView moPubView);

        void onBannerCollapsed(MoPubView moPubView);

        void onBannerExpanded(MoPubView moPubView);

        void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(MoPubView moPubView);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$MoPubAdSize.class */
    public enum MoPubAdSize {
        MATCH_VIEW(-1),
        HEIGHT_50(50),
        HEIGHT_90(90),
        HEIGHT_250(250),
        HEIGHT_280(280);
        
        public final int mSizeInt;

        MoPubAdSize(int i) {
            this.mSizeInt = i;
        }

        public static MoPubAdSize valueOf(int i) {
            return i != 50 ? i != 90 ? i != 250 ? i != 280 ? MATCH_VIEW : HEIGHT_280 : HEIGHT_250 : HEIGHT_90 : HEIGHT_50;
        }

        public int toInt() {
            return this.mSizeInt;
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubView$a.class */
    public class C8801a extends BroadcastReceiver {
        public C8801a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Visibility.isScreenVisible(MoPubView.this.f34176d) && intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    MoPubView.this.setAdVisibility(0);
                } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    MoPubView.this.setAdVisibility(8);
                }
            }
        }
    }

    public MoPubView(Context context) {
        this(context, null);
    }

    public MoPubView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f34178f = m4324a(context, attributeSet, MoPubAdSize.MATCH_VIEW);
        ManifestUtils.checkWebViewActivitiesDeclared(context);
        this.f34175c = context;
        this.f34176d = getVisibility();
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        this.f34173a = AdViewControllerFactory.create(context, this);
        m4309k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAdVisibility(int i) {
        if (this.f34173a != null) {
            if (Visibility.isScreenVisible(i)) {
                this.f34173a.m4451m();
            } else {
                this.f34173a.m4453k();
            }
        }
    }

    /* renamed from: a */
    public final MoPubAdSize m4324a(Context context, AttributeSet attributeSet, MoPubAdSize moPubAdSize) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C8850R.styleable.MoPubView, 0, 0);
        try {
            try {
                moPubAdSize = MoPubAdSize.valueOf(obtainStyledAttributes.getInteger(C8850R.styleable.MoPubView_moPubAdSize, moPubAdSize.toInt()));
            } catch (Resources.NotFoundException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Encountered a problem while setting the MoPubAdSize", e);
            }
            return moPubAdSize;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    public Integer m4325a(int i) {
        AdViewController adViewController = this.f34173a;
        return adViewController == null ? Integer.valueOf(i) : adViewController.m4481a(i);
    }

    /* renamed from: a */
    public void m4326a() {
        MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
        BannerAdListener bannerAdListener = this.f34179g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerClicked(this);
        }
    }

    /* renamed from: a */
    public void mo4323a(MoPubErrorCode moPubErrorCode) {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
        BannerAdListener bannerAdListener = this.f34179g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerFailed(this, moPubErrorCode);
        }
    }

    /* renamed from: a */
    public void mo4320a(String str, Map<String, String> map) {
        if (this.f34173a != null) {
            if (TextUtils.isEmpty(str)) {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Couldn't invoke custom event because the server did not specify one.");
                m4318b(MoPubErrorCode.ADAPTER_NOT_FOUND);
                return;
            }
            if (this.f34174b != null) {
                m4312h();
            }
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Loading custom event adapter.");
            if (Reflection.classFound("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")) {
                try {
                    Object execute = new Reflection.MethodBuilder(null, "create").setStatic(Class.forName("com.mopub.mobileads.factories.CustomEventBannerAdapterFactory")).addParam((Class<Class>) MoPubView.class, (Class) this).addParam((Class<Class>) String.class, (Class) str).addParam((Class<Class>) Map.class, (Class) map).addParam((Class<Class>) Long.TYPE, (Class) Long.valueOf(this.f34173a.getBroadcastIdentifier())).addParam((Class<Class>) AdReport.class, (Class) this.f34173a.getAdReport()).execute();
                    this.f34174b = execute;
                    new Reflection.MethodBuilder(execute, "loadAd").setAccessible().execute();
                } catch (Exception e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error loading custom event", e);
                }
            } else {
                MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Could not load custom event -- missing banner module");
            }
        }
    }

    /* renamed from: b */
    public void m4319b() {
        MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
        BannerAdListener bannerAdListener = this.f34179g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerCollapsed(this);
        }
    }

    /* renamed from: b */
    public boolean m4318b(MoPubErrorCode moPubErrorCode) {
        AdViewController adViewController = this.f34173a;
        if (adViewController == null) {
            return false;
        }
        return adViewController.m4465b(moPubErrorCode);
    }

    /* renamed from: c */
    public void m4317c() {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
        BannerAdListener bannerAdListener = this.f34179g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerLoaded(this);
        }
    }

    /* renamed from: d */
    public void m4316d() {
        BannerAdListener bannerAdListener = this.f34179g;
        if (bannerAdListener != null) {
            bannerAdListener.onBannerExpanded(this);
        }
    }

    public void destroy() {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Destroy() called");
        m4305o();
        removeAllViews();
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4468b();
            this.f34173a = null;
        }
        if (this.f34174b != null) {
            m4312h();
            this.f34174b = null;
        }
    }

    /* renamed from: e */
    public void m4315e() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4462c();
        }
        m4317c();
    }

    /* renamed from: f */
    public void m4314f() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4460d();
        }
    }

    public void forceRefresh() {
        if (this.f34174b != null) {
            m4312h();
            this.f34174b = null;
        }
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4458f();
        }
    }

    /* renamed from: g */
    public void m4313g() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4459e();
        }
    }

    public Activity getActivity() {
        return (Activity) this.f34175c;
    }

    public AdFormat getAdFormat() {
        return AdFormat.BANNER;
    }

    public int getAdHeight() {
        AdViewController adViewController = this.f34173a;
        return adViewController != null ? adViewController.getAdHeight() : 0;
    }

    public MoPubAdSize getAdSize() {
        return this.f34178f;
    }

    public String getAdUnitId() {
        AdViewController adViewController = this.f34173a;
        return adViewController != null ? adViewController.getAdUnitId() : null;
    }

    public AdViewController getAdViewController() {
        return this.f34173a;
    }

    public int getAdWidth() {
        AdViewController adViewController = this.f34173a;
        return adViewController != null ? adViewController.getAdWidth() : 0;
    }

    public boolean getAutorefreshEnabled() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            return adViewController.getCurrentAutoRefreshStatus();
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Can't get autorefresh status for destroyed MoPubView. Returning false.");
        return false;
    }

    public BannerAdListener getBannerAdListener() {
        return this.f34179g;
    }

    @Deprecated
    public String getClickTrackingUrl() {
        return null;
    }

    public String getKeywords() {
        AdViewController adViewController = this.f34173a;
        return adViewController != null ? adViewController.getKeywords() : null;
    }

    public Map<String, Object> getLocalExtras() {
        AdViewController adViewController = this.f34173a;
        return adViewController != null ? adViewController.m4456h() : new TreeMap();
    }

    public Location getLocation() {
        return (this.f34173a == null || !MoPub.canCollectPersonalInformation()) ? null : this.f34173a.getLocation();
    }

    @Deprecated
    public String getResponseString() {
        return null;
    }

    public boolean getTesting() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            return adViewController.getTesting();
        }
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Can't get testing status for destroyed MoPubView. Returning false.");
        return false;
    }

    public String getUserDataKeywords() {
        return (this.f34173a == null || !MoPub.canCollectPersonalInformation()) ? null : this.f34173a.getUserDataKeywords();
    }

    /* renamed from: h */
    public final void m4312h() {
        Object obj = this.f34174b;
        if (obj != null) {
            try {
                new Reflection.MethodBuilder(obj, "invalidate").setAccessible().execute();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Error invalidating adapter", e);
            }
        }
    }

    /* renamed from: i */
    public void m4311i() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4453k();
        }
    }

    /* renamed from: j */
    public void m4310j() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4452l();
            m4326a();
        }
    }

    /* renamed from: k */
    public final void m4309k() {
        this.f34177e = new C8801a();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        this.f34175c.registerReceiver(this.f34177e, intentFilter);
    }

    /* renamed from: l */
    public Point mo4308l() {
        Point point = new Point(getWidth(), getHeight());
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(getParent() == null || layoutParams == null || layoutParams.width >= 0)) {
            point.x = ((View) getParent()).getWidth();
        }
        if (this.f34178f != MoPubAdSize.MATCH_VIEW) {
            point.y = (int) Math.ceil(this.f34178f.toInt() * this.f34175c.getResources().getDisplayMetrics().density);
        } else if (!(getParent() == null || layoutParams == null || layoutParams.height >= 0)) {
            point.y = ((View) getParent()).getHeight();
        }
        return point;
    }

    public void loadAd() {
        if (this.f34173a != null) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
            this.f34173a.m4480a(mo4308l());
            this.f34173a.loadAd();
        }
    }

    public void loadAd(MoPubAdSize moPubAdSize) {
        setAdSize(moPubAdSize);
        loadAd();
    }

    /* renamed from: m */
    public void m4307m() {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4451m();
        }
    }

    /* renamed from: n */
    public void m4306n() {
        MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Tracking impression. MoPubView internal.");
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4448p();
        }
    }

    /* renamed from: o */
    public final void m4305o() {
        try {
            this.f34175c.unregisterReceiver(this.f34177e);
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Failed to unregister screen state broadcast receiver (never registered).");
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        if (Build.VERSION.SDK_INT >= 28) {
            setWindowInsets(windowInsets);
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 28) {
            setWindowInsets(getRootWindowInsets());
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (Visibility.hasScreenVisibilityChanged(this.f34176d, i)) {
            this.f34176d = i;
            setAdVisibility(i);
        }
    }

    public void setAdContentView(View view) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4467b(view);
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            return;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, new Object[0]);
    }

    public void setAdSize(MoPubAdSize moPubAdSize) {
        this.f34178f = moPubAdSize;
    }

    public void setAdUnitId(String str) {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.setAdUnitId(str);
        }
    }

    public void setAutorefreshEnabled(boolean z) {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4463b(z);
        }
    }

    public void setBannerAdListener(BannerAdListener bannerAdListener) {
        this.f34179g = bannerAdListener;
    }

    public void setKeywords(String str) {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.setKeywords(str);
        }
    }

    public void setLocalExtras(Map<String, Object> map) {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.m4470a(map);
        }
    }

    public void setLocation(Location location) {
        if (this.f34173a != null && MoPub.canCollectPersonalInformation()) {
            this.f34173a.setLocation(location);
        }
    }

    public void setTesting(boolean z) {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.setTesting(z);
        }
    }

    @Deprecated
    public void setTimeout(int i) {
    }

    public void setUserDataKeywords(String str) {
        if (this.f34173a != null && MoPub.canCollectPersonalInformation()) {
            this.f34173a.setUserDataKeywords(str);
        }
    }

    public void setWindowInsets(WindowInsets windowInsets) {
        AdViewController adViewController = this.f34173a;
        if (adViewController != null) {
            adViewController.setWindowInsets(windowInsets);
        }
    }
}
