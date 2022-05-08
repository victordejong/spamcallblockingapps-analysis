package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.PeriodicWorkRequest;
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
    @NonNull
    @SuppressLint({"UseSparseArrays"})

    /* renamed from: a */
    public static final Map<Long, Config> f8829a = Collections.synchronizedMap(new HashMap());
    @NonNull
    @VisibleForTesting

    /* renamed from: b */
    public static final RunnableC3872b f8830b = new RunnableC3872b();
    @NonNull

    /* renamed from: c */
    public static Handler f8831c = new Handler();

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$Config.class */
    public static class Config {
        @NonNull

        /* renamed from: a */
        public final BaseWebView f8832a;
        @NonNull

        /* renamed from: b */
        public final WeakReference<Interstitial> f8833b;
        @NonNull

        /* renamed from: c */
        public final ExternalViewabilitySessionManager f8834c;
        @Nullable

        /* renamed from: d */
        public final MraidController f8835d;

        public Config(@NonNull BaseWebView baseWebView, @NonNull Interstitial interstitial, @NonNull ExternalViewabilitySessionManager externalViewabilitySessionManager, @Nullable MraidController mraidController) {
            this.f8832a = baseWebView;
            this.f8833b = new WeakReference<>(interstitial);
            this.f8834c = externalViewabilitySessionManager;
            this.f8835d = mraidController;
        }

        @Nullable
        public MraidController getController() {
            return this.f8835d;
        }

        @NonNull
        public ExternalViewabilitySessionManager getViewabilityManager() {
            return this.f8834c;
        }

        @NonNull
        public WeakReference<Interstitial> getWeakInterstitial() {
            return this.f8833b;
        }

        @NonNull
        public BaseWebView getWebView() {
            return this.f8832a;
        }
    }

    /* renamed from: com.mopub.mobileads.WebViewCacheService$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/WebViewCacheService$b.class */
    public static class RunnableC3872b implements Runnable {
        public RunnableC3872b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            WebViewCacheService.m30351a();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m30351a() {
        synchronized (WebViewCacheService.class) {
            try {
                Iterator<Map.Entry<Long, Config>> it = f8829a.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Long, Config> next = it.next();
                    if (next.getValue().getWeakInterstitial().get() == null) {
                        next.getValue().getViewabilityManager().endDisplaySession();
                        it.remove();
                    }
                }
                if (!f8829a.isEmpty()) {
                    f8831c.removeCallbacks(f8830b);
                    f8831c.postDelayed(f8830b, PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Deprecated
    @VisibleForTesting
    public static void clearAll() {
        f8829a.clear();
        f8831c.removeCallbacks(f8830b);
    }

    @Nullable
    public static Config popWebViewConfig(@NonNull Long l) {
        Preconditions.checkNotNull(l);
        return f8829a.remove(l);
    }

    @VisibleForTesting
    public static void storeWebViewConfig(@NonNull Long l, @NonNull Interstitial interstitial, @NonNull BaseWebView baseWebView, @NonNull ExternalViewabilitySessionManager externalViewabilitySessionManager, @Nullable MraidController mraidController) {
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(baseWebView);
        m30351a();
        if (f8829a.size() >= 50) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to cache web view. Please destroy some via MoPubInterstitial#destroy() and try again.");
        } else {
            f8829a.put(l, new Config(baseWebView, interstitial, externalViewabilitySessionManager, mraidController));
        }
    }
}
