package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mraid.MraidController;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewCacheService.class */
public class WebViewCacheService {

    /* renamed from: a */
    public static final Map<Long, Config> f34433a = Collections.synchronizedMap(new HashMap());
    @VisibleForTesting

    /* renamed from: b */
    public static final RunnableC8841b f34434b = new RunnableC8841b();

    /* renamed from: c */
    public static Handler f34435c = new Handler();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$Config.class */
    public static class Config {

        /* renamed from: a */
        public final BaseWebView f34436a;

        /* renamed from: b */
        public final WeakReference<Interstitial> f34437b;

        /* renamed from: c */
        public final ExternalViewabilitySessionManager f34438c;

        /* renamed from: d */
        public final MraidController f34439d;

        public Config(BaseWebView baseWebView, Interstitial interstitial, ExternalViewabilitySessionManager externalViewabilitySessionManager, MraidController mraidController) {
            this.f34436a = baseWebView;
            this.f34437b = new WeakReference<>(interstitial);
            this.f34438c = externalViewabilitySessionManager;
            this.f34439d = mraidController;
        }

        public MraidController getController() {
            return this.f34439d;
        }

        public ExternalViewabilitySessionManager getViewabilityManager() {
            return this.f34438c;
        }

        public WeakReference<Interstitial> getWeakInterstitial() {
            return this.f34437b;
        }

        public BaseWebView getWebView() {
            return this.f34436a;
        }
    }

    /* renamed from: com.mopub.mobileads.WebViewCacheService$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$b.class */
    public static class RunnableC8841b implements Runnable {
        public RunnableC8841b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewCacheService.m4159a();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m4159a() {
        synchronized (WebViewCacheService.class) {
            try {
                Iterator<Map.Entry<Long, Config>> it = f34433a.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Long, Config> next = it.next();
                    if (next.getValue().getWeakInterstitial().get() == null) {
                        next.getValue().getViewabilityManager().endDisplaySession();
                        it.remove();
                    }
                }
                if (!f34433a.isEmpty()) {
                    f34435c.removeCallbacks(f34434b);
                    f34435c.postDelayed(f34434b, 900000L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAll() {
        f34433a.clear();
        f34435c.removeCallbacks(f34434b);
    }

    public static Config popWebViewConfig(Long l) {
        Preconditions.checkNotNull(l);
        return f34433a.remove(l);
    }

    @VisibleForTesting
    public static void storeWebViewConfig(Long l, Interstitial interstitial, BaseWebView baseWebView, ExternalViewabilitySessionManager externalViewabilitySessionManager, MraidController mraidController) {
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(baseWebView);
        m4159a();
        if (f34433a.size() >= 50) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again.");
        } else {
            f34433a.put(l, new Config(baseWebView, interstitial, externalViewabilitySessionManager, mraidController));
        }
    }
}
