package com.mopub.mobileads;

import android.content.Context;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.CacheService;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastXmlManagerAggregator;
import com.mopub.mobileads.VideoDownloader;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastManager.class */
public class VastManager implements VastXmlManagerAggregator.AbstractC3868b {
    @Nullable

    /* renamed from: a */
    public VastManagerListener f8577a;
    @Nullable

    /* renamed from: b */
    public VastXmlManagerAggregator f8578b;
    @Nullable

    /* renamed from: c */
    public String f8579c;

    /* renamed from: d */
    public double f8580d;

    /* renamed from: e */
    public int f8581e;

    /* renamed from: f */
    public final boolean f8582f;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastManager$VastManagerListener.class */
    public interface VastManagerListener {
        void onVastVideoConfigurationPrepared(@Nullable VastVideoConfig vastVideoConfig);
    }

    /* renamed from: com.mopub.mobileads.VastManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastManager$a.class */
    public class C3846a implements VideoDownloader.AbstractC3869a {

        /* renamed from: a */
        public final /* synthetic */ VastVideoConfig f8583a;

        public C3846a(VastVideoConfig vastVideoConfig) {
            this.f8583a = vastVideoConfig;
        }

        @Override // com.mopub.mobileads.VideoDownloader.AbstractC3869a
        public void onComplete(boolean z) {
            if (!z || !VastManager.this.m30475a(this.f8583a)) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Failed to download VAST video.");
                VastManager.this.f8577a.onVastVideoConfigurationPrepared(null);
                return;
            }
            VastManager.this.f8577a.onVastVideoConfigurationPrepared(this.f8583a);
        }
    }

    public VastManager(@NonNull Context context, boolean z) {
        m30478a(context);
        this.f8582f = z;
    }

    /* renamed from: a */
    public final void m30478a(@NonNull Context context) {
        Preconditions.checkNotNull(context, "context cannot be null");
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        float f = context.getResources().getDisplayMetrics().density;
        float f2 = f;
        if (f <= 0.0f) {
            f2 = 1.0f;
        }
        this.f8580d = width / height;
        this.f8581e = (int) (width / f2);
    }

    /* renamed from: a */
    public final boolean m30475a(@NonNull VastVideoConfig vastVideoConfig) {
        Preconditions.checkNotNull(vastVideoConfig, "vastVideoConfig cannot be null");
        String networkMediaFileUrl = vastVideoConfig.getNetworkMediaFileUrl();
        if (!CacheService.containsKeyDiskCache(networkMediaFileUrl)) {
            return false;
        }
        vastVideoConfig.setDiskMediaFileUrl(CacheService.getFilePathDiskCache(networkMediaFileUrl));
        return true;
    }

    public void cancel() {
        VastXmlManagerAggregator vastXmlManagerAggregator = this.f8578b;
        if (vastXmlManagerAggregator != null) {
            vastXmlManagerAggregator.cancel(true);
            this.f8578b = null;
        }
    }

    @Override // com.mopub.mobileads.VastXmlManagerAggregator.AbstractC3868b
    public void onAggregationComplete(@Nullable VastVideoConfig vastVideoConfig) {
        VastManagerListener vastManagerListener = this.f8577a;
        if (vastManagerListener == null) {
            throw new IllegalStateException("mVastManagerListener cannot be null here. Did you call prepareVastVideoConfiguration()?");
        } else if (vastVideoConfig == null) {
            vastManagerListener.onVastVideoConfigurationPrepared(null);
        } else {
            if (!TextUtils.isEmpty(this.f8579c)) {
                vastVideoConfig.setDspCreativeId(this.f8579c);
            }
            if (!this.f8582f || m30475a(vastVideoConfig)) {
                this.f8577a.onVastVideoConfigurationPrepared(vastVideoConfig);
                return;
            }
            VideoDownloader.cache(vastVideoConfig.getNetworkMediaFileUrl(), new C3846a(vastVideoConfig));
        }
    }

    public void prepareVastVideoConfiguration(@Nullable String str, @NonNull VastManagerListener vastManagerListener, @Nullable String str2, @NonNull Context context) {
        Preconditions.checkNotNull(vastManagerListener, "vastManagerListener cannot be null");
        Preconditions.checkNotNull(context, "context cannot be null");
        if (this.f8578b == null) {
            this.f8577a = vastManagerListener;
            this.f8578b = new VastXmlManagerAggregator(this, this.f8580d, this.f8581e, context.getApplicationContext());
            this.f8579c = str2;
            try {
                AsyncTasks.safeExecuteOnExecutor(this.f8578b, str);
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.ERROR_WITH_THROWABLE, "Failed to aggregate vast xml", e);
                this.f8577a.onVastVideoConfigurationPrepared(null);
            }
        }
    }
}
