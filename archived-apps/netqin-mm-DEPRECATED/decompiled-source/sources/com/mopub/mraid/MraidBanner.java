package com.mopub.mraid;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.InternalCustomEventBannerListener;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.factories.MraidControllerFactory;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBanner.class */
public class MraidBanner extends CustomEventBanner {
    public static final String ADAPTER_NAME = "MraidBanner";

    /* renamed from: b */
    public MraidController f34541b;

    /* renamed from: c */
    public InternalCustomEventBannerListener f34542c;

    /* renamed from: d */
    public MraidWebViewDebugListener f34543d;

    /* renamed from: e */
    public ExternalViewabilitySessionManager f34544e;

    /* renamed from: f */
    public boolean f34545f = false;

    /* renamed from: com.mopub.mraid.MraidBanner$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBanner$a.class */
    public class C8890a implements MraidController.MraidListener {
        public C8890a() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onClose() {
            MraidBanner.this.f34542c.onBannerCollapsed();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onExpand() {
            MraidBanner.this.f34542c.onBannerExpanded();
            MraidBanner.this.f34542c.onBannerClicked();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onFailedToLoad() {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MraidBanner.ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
            MraidBanner.this.f34542c.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onLoaded(View view) {
            AdViewController.setShouldHonorServerDimensions(view);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MraidBanner.ADAPTER_NAME);
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, MraidBanner.ADAPTER_NAME);
            MraidBanner.this.f34542c.onBannerLoaded(view);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onOpen() {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MraidBanner.ADAPTER_NAME);
            MraidBanner.this.f34542c.onBannerClicked();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MraidBanner.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            MraidBanner.this.f34542c.onBannerFailed(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onResize(boolean z) {
            if (z) {
                MraidBanner.this.f34542c.onResumeAutoRefresh();
            } else {
                MraidBanner.this.f34542c.onPauseAutoRefresh();
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidBanner$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBanner$b.class */
    public class C8891b implements MraidController.MraidWebViewCacheListener {

        /* renamed from: a */
        public final /* synthetic */ Context f34547a;

        public C8891b(Context context) {
            this.f34547a = context;
        }

        @Override // com.mopub.mraid.MraidController.MraidWebViewCacheListener
        public void onReady(MraidBridge.MraidWebView mraidWebView, ExternalViewabilitySessionManager externalViewabilitySessionManager) {
            mraidWebView.getSettings().setJavaScriptEnabled(true);
            Context context = this.f34547a;
            if (context instanceof Activity) {
                MraidBanner.this.f34544e = new ExternalViewabilitySessionManager(context);
                MraidBanner.this.f34544e.createDisplaySession(this.f34547a, mraidWebView, MraidBanner.this.f34545f);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: a */
    public void mo4136a(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        try {
            this.f34542c = (InternalCustomEventBannerListener) customEventBannerListener;
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
            if (m4133a(map2)) {
                String str = map2.get(DataKeys.HTML_RESPONSE_BODY_KEY);
                Object obj = map.get(DataKeys.BANNER_IMPRESSION_PIXEL_COUNT_ENABLED);
                if (obj instanceof Boolean) {
                    this.f34545f = ((Boolean) obj).booleanValue();
                }
                try {
                    MraidController create = MraidControllerFactory.create(context, (AdReport) map.get(DataKeys.AD_REPORT_KEY), PlacementType.INLINE);
                    this.f34541b = create;
                    create.setDebugListener(this.f34543d);
                    this.f34541b.setMraidListener(new C8890a());
                    this.f34541b.fillContent(str, new C8891b(context));
                } catch (ClassCastException e) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
                    this.f34542c.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
                }
            } else {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
                this.f34542c.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            }
        } catch (ClassCastException e2) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.MRAID_LOAD_ERROR.getIntCode()), MoPubErrorCode.MRAID_LOAD_ERROR);
            customEventBannerListener.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
        }
    }

    /* renamed from: a */
    public final boolean m4133a(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: b */
    public void mo4132b() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f34544e;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f34544e = null;
        }
        MraidController mraidController = this.f34541b;
        if (mraidController != null) {
            mraidController.setMraidListener(null);
            this.f34541b.destroy();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: c */
    public void mo4130c() {
        MraidController mraidController = this.f34541b;
        if (mraidController != null) {
            mraidController.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
            if (this.f34545f && this.f34544e != null) {
                Activity activity = this.f34541b.m4068g().get();
                if (activity != null) {
                    this.f34544e.startDeferredDisplaySession(activity);
                } else {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, ADAPTER_NAME, "Lost the activity for deferred Viewability tracking. Dropping session.");
                }
            }
        }
    }

    @VisibleForTesting
    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f34543d = mraidWebViewDebugListener;
        MraidController mraidController = this.f34541b;
        if (mraidController != null) {
            mraidController.setDebugListener(mraidWebViewDebugListener);
        }
    }
}
