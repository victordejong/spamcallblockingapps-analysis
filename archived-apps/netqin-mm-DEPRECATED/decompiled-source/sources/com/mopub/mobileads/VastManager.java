package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastXmlManagerAggregator;
import com.mopub.mobileads.VideoDownloader;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastManager.class */
public class VastManager implements VastXmlManagerAggregator.AbstractC8837a {

    /* renamed from: a */
    public VastManagerListener f34253a;

    /* renamed from: b */
    public VastXmlManagerAggregator f34254b;

    /* renamed from: c */
    public String f34255c;

    /* renamed from: d */
    public double f34256d;

    /* renamed from: e */
    public int f34257e;

    /* renamed from: f */
    public final boolean f34258f;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastManager$VastManagerListener.class */
    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig);
    }

    /* renamed from: com.mopub.mobileads.VastManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastManager$a.class */
    public class C8816a implements VideoDownloader.AbstractC8838a {

        /* renamed from: a */
        public final /* synthetic */ VastVideoConfig f34259a;

        public C8816a(VastVideoConfig vastVideoConfig) {
            this.f34259a = vastVideoConfig;
        }

        @Override // com.mopub.mobileads.VideoDownloader.AbstractC8838a
        public void onComplete(boolean z) {
            if (!z || !VastManager.this.m4264a(this.f34259a)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to download VAST video.");
                VastManager.this.f34253a.onVastVideoConfigurationPrepared(null);
                return;
            }
            VastManager.this.f34253a.onVastVideoConfigurationPrepared(this.f34259a);
        }
    }

    public VastManager(Context context, boolean z) {
        m4267a(context);
        this.f34258f = z;
    }

    /* renamed from: a */
    public final void m4267a(Context context) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = f;
        if (f <= 0.0f) {
            f2 = 1.0f;
        }
        double d = width;
        double d2 = height;
        Double.isNaN(d);
        Double.isNaN(d2);
        this.f34256d = d / d2;
        this.f34257e = (int) (width / f2);
    }

    /* renamed from: a */
    public final boolean m4264a(VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (!CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            return false;
        }
        vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
        return true;
    }

    public void cancel() {
        VastXmlManagerAggregator vastXmlManagerAggregator = this.f34254b;
        if (vastXmlManagerAggregator != null) {
            vastXmlManagerAggregator.cancel(true);
            this.f34254b = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.AbstractC8837a
    public void onAggregationComplete(VastVideoConfig vastVideoConfig) {
        VastManagerListener vastManagerListener = this.f34253a;
        if (vastManagerListener == null) {
            throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
        } else if (vastVideoConfig == null) {
            vastManagerListener.onVastVideoConfigurationPrepared(null);
        } else {
            if (!TextUtils.isEmpty(this.f34255c)) {
                vastVideoConfig.setDspCreativeId(this.f34255c);
            }
            if (!this.f34258f || m4264a(vastVideoConfig)) {
                this.f34253a.onVastVideoConfigurationPrepared(vastVideoConfig);
                return;
            }
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new C8816a(vastVideoConfig));
        }
    }

    public void prepareVastVideoConfiguration(String str, VastManagerListener vastManagerListener, String str2, Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, "context cannot be null");
        if (this.f34254b == null) {
            this.f34253a = vastManagerListener;
            VastXmlManagerAggregator vastXmlManagerAggregator = new VastXmlManagerAggregator(this, this.f34256d, this.f34257e, context.getApplicationContext());
            this.f34254b = vastXmlManagerAggregator;
            this.f34255c = str2;
            try {
                AsyncTasks.safeExecuteOnExecutor(vastXmlManagerAggregator, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to aggregate vast xml", e);
                this.f34253a.onVastVideoConfigurationPrepared(null);
            }
        }
    }
}
