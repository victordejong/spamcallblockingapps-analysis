package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.VastWebView;
import com.mopub.mobileads.resource.DrawableConstants;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController.class */
public class VastVideoViewController extends BaseVideoViewController {
    public static final int WEBVIEW_PADDING = 16;

    /* renamed from: A */
    public boolean f34320A;

    /* renamed from: C */
    public int f34322C;

    /* renamed from: e */
    public final VastVideoConfig f34324e;

    /* renamed from: f */
    public final VastVideoView f34325f;

    /* renamed from: g */
    public ExternalViewabilitySessionManager f34326g;

    /* renamed from: h */
    public VastVideoGradientStripWidget f34327h;

    /* renamed from: i */
    public VastVideoGradientStripWidget f34328i;

    /* renamed from: j */
    public ImageView f34329j;

    /* renamed from: k */
    public VastVideoProgressBarWidget f34330k;

    /* renamed from: l */
    public VastVideoRadialCountdownWidget f34331l;

    /* renamed from: m */
    public VastVideoCtaButtonWidget f34332m;

    /* renamed from: n */
    public VastVideoCloseButtonWidget f34333n;

    /* renamed from: o */
    public VastCompanionAdConfig f34334o;

    /* renamed from: p */
    public final VastIconConfig f34335p;

    /* renamed from: q */
    public final View f34336q;

    /* renamed from: r */
    public final View f34337r;

    /* renamed from: s */
    public final View f34338s;

    /* renamed from: t */
    public final VastVideoViewProgressRunnable f34339t;

    /* renamed from: u */
    public final VastVideoViewCountdownRunnable f34340u;

    /* renamed from: v */
    public final View.OnTouchListener f34341v;

    /* renamed from: x */
    public boolean f34343x;

    /* renamed from: y */
    public int f34344y;

    /* renamed from: z */
    public boolean f34345z;

    /* renamed from: w */
    public int f34342w = 5000;

    /* renamed from: B */
    public boolean f34321B = false;

    /* renamed from: D */
    public boolean f34323D = false;

    /* renamed from: com.mopub.mobileads.VastVideoViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$a.class */
    public class View$OnTouchListenerC8821a implements View.OnTouchListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f34346a;

        public View$OnTouchListenerC8821a(Activity activity) {
            this.f34346a = activity;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1 || !VastVideoViewController.this.m4215l()) {
                return true;
            }
            VastVideoViewController.this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_CLICK_THRU, VastVideoViewController.this.getCurrentPosition());
            VastVideoViewController.this.f34323D = true;
            VastVideoViewController.this.m4416a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            VastVideoViewController.this.f34324e.handleClickForResult(this.f34346a, VastVideoViewController.this.f34345z ? VastVideoViewController.this.f34322C : VastVideoViewController.this.getCurrentPosition(), 1);
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$b.class */
    public class C8822b implements MediaPlayer.OnPreparedListener {

        /* renamed from: a */
        public final /* synthetic */ VastVideoView f34348a;

        public C8822b(VastVideoView vastVideoView) {
            this.f34348a = vastVideoView;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VastVideoViewController vastVideoViewController = VastVideoViewController.this;
            vastVideoViewController.f34322C = vastVideoViewController.f34325f.getDuration();
            VastVideoViewController.this.f34326g.onVideoPrepared(VastVideoViewController.this.getLayout(), VastVideoViewController.this.f34322C);
            VastVideoViewController.this.m4221i();
            if (VastVideoViewController.this.f34334o == null) {
                this.f34348a.prepareBlurredLastVideoFrame(VastVideoViewController.this.f34329j, VastVideoViewController.this.f34324e.getDiskMediaFileUrl());
            }
            VastVideoViewController.this.f34330k.calibrateAndMakeVisible(VastVideoViewController.this.getDuration(), VastVideoViewController.this.f34342w);
            VastVideoViewController.this.f34331l.calibrateAndMakeVisible(VastVideoViewController.this.f34342w);
            VastVideoViewController.this.f34321B = true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$c.class */
    public class C8823c implements MediaPlayer.OnCompletionListener {

        /* renamed from: a */
        public final /* synthetic */ VastVideoView f34350a;

        /* renamed from: b */
        public final /* synthetic */ Context f34351b;

        public C8823c(VastVideoView vastVideoView, Context context) {
            this.f34350a = vastVideoView;
            this.f34351b = context;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VastVideoViewController.this.m4209o();
            VastVideoViewController.this.m4217k();
            VastVideoViewController.this.m4415a(false);
            VastVideoViewController.this.f34345z = true;
            if (VastVideoViewController.this.f34324e.isRewardedVideo()) {
                VastVideoViewController.this.m4416a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            }
            if (!VastVideoViewController.this.f34320A && VastVideoViewController.this.f34324e.getRemainingProgressTrackerCount() == 0) {
                VastVideoViewController.this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, VastVideoViewController.this.getCurrentPosition());
                VastVideoViewController.this.f34324e.handleComplete(VastVideoViewController.this.m4414b(), VastVideoViewController.this.getCurrentPosition());
            }
            this.f34350a.setVisibility(4);
            VastVideoViewController.this.f34330k.setVisibility(8);
            VastVideoViewController.this.f34338s.setVisibility(8);
            VastVideoViewController.this.f34327h.m4248a();
            VastVideoViewController.this.f34328i.m4248a();
            VastVideoViewController.this.f34332m.m4252a();
            if (VastVideoViewController.this.f34334o != null) {
                if (this.f34351b.getResources().getConfiguration().orientation == 1) {
                    VastVideoViewController.this.f34337r.setVisibility(0);
                } else {
                    VastVideoViewController.this.f34336q.setVisibility(0);
                }
                VastVideoViewController.this.f34334o.handleImpression(this.f34351b, VastVideoViewController.this.f34322C);
            } else if (VastVideoViewController.this.f34329j.getDrawable() != null) {
                VastVideoViewController.this.f34329j.setVisibility(0);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$d.class */
    public class C8824d implements MediaPlayer.OnErrorListener {
        public C8824d() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            VastVideoViewController.this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.RECORD_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
            VastVideoViewController.this.m4209o();
            VastVideoViewController.this.m4217k();
            VastVideoViewController.this.m4413b(false);
            VastVideoViewController.this.f34320A = true;
            VastVideoViewController.this.f34324e.handleError(VastVideoViewController.this.m4414b(), VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewController.this.getCurrentPosition());
            return false;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$e.class */
    public class View$OnTouchListenerC8825e implements View.OnTouchListener {
        public View$OnTouchListenerC8825e() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 1) {
                return true;
            }
            VastVideoViewController.this.f34323D = true;
            VastVideoViewController.this.m4219j();
            VastVideoViewController.this.m4417a().onFinish();
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$f */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$f.class */
    public class C8826f implements VastWebView.AbstractC8835a {

        /* renamed from: a */
        public final /* synthetic */ VastIconConfig f34355a;

        /* renamed from: b */
        public final /* synthetic */ Context f34356b;

        public C8826f(VastIconConfig vastIconConfig, Context context) {
            this.f34355a = vastIconConfig;
            this.f34356b = context;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC8835a
        public void onVastWebViewClick() {
            TrackingRequest.makeVastTrackingHttpRequest(this.f34355a.getClickTrackingUris(), null, Integer.valueOf(VastVideoViewController.this.getCurrentPosition()), VastVideoViewController.this.getNetworkMediaFileUrl(), this.f34356b);
            this.f34355a.handleClick(VastVideoViewController.this.m4414b(), null, VastVideoViewController.this.f34324e.getDspCreativeId());
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$g */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$g.class */
    public class C8827g extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ VastIconConfig f34358a;

        public C8827g(VastIconConfig vastIconConfig) {
            this.f34358a = vastIconConfig;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.f34358a.handleClick(VastVideoViewController.this.m4414b(), str, VastVideoViewController.this.f34324e.getDspCreativeId());
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$h */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$h.class */
    public class C8828h implements VastWebView.AbstractC8835a {

        /* renamed from: a */
        public final /* synthetic */ VastCompanionAdConfig f34360a;

        /* renamed from: b */
        public final /* synthetic */ Context f34361b;

        public C8828h(VastCompanionAdConfig vastCompanionAdConfig, Context context) {
            this.f34360a = vastCompanionAdConfig;
            this.f34361b = context;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC8835a
        public void onVastWebViewClick() {
            VastVideoViewController.this.m4416a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            TrackingRequest.makeVastTrackingHttpRequest(this.f34360a.getClickTrackers(), null, Integer.valueOf(VastVideoViewController.this.f34322C), null, this.f34361b);
            this.f34360a.handleClick(this.f34361b, 1, null, VastVideoViewController.this.f34324e.getDspCreativeId());
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewController$i */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewController$i.class */
    public class C8829i extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ VastCompanionAdConfig f34363a;

        /* renamed from: b */
        public final /* synthetic */ Context f34364b;

        public C8829i(VastCompanionAdConfig vastCompanionAdConfig, Context context) {
            this.f34363a = vastCompanionAdConfig;
            this.f34364b = context;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.f34363a.handleClick(this.f34364b, 1, str, VastVideoViewController.this.f34324e.getDspCreativeId());
            return true;
        }
    }

    public VastVideoViewController(Activity activity, Bundle bundle, Bundle bundle2, long j, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) throws IllegalStateException {
        super(activity, Long.valueOf(j), baseVideoViewControllerListener);
        this.f34344y = -1;
        Serializable serializable = bundle2 != null ? bundle2.getSerializable(VastVideoViewControllerTwo.RESUMED_VAST_CONFIG) : null;
        Serializable serializable2 = bundle.getSerializable(VastVideoViewControllerTwo.VAST_VIDEO_CONFIG);
        if (serializable != null && (serializable instanceof VastVideoConfig)) {
            this.f34324e = (VastVideoConfig) serializable;
            this.f34344y = bundle2.getInt(VastVideoViewControllerTwo.CURRENT_POSITION, -1);
        } else if (serializable2 == null || !(serializable2 instanceof VastVideoConfig)) {
            throw new IllegalStateException("VastVideoConfig is invalid");
        } else {
            this.f34324e = (VastVideoConfig) serializable2;
        }
        if (this.f34324e.getDiskMediaFileUrl() != null) {
            this.f34334o = this.f34324e.getVastCompanionAd(activity.getResources().getConfiguration().orientation);
            this.f34335p = this.f34324e.getVastIconConfig();
            this.f34341v = new View$OnTouchListenerC8821a(activity);
            getLayout().setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            m4245a(activity, 4);
            VastVideoView e = m4226e(activity, 0);
            this.f34325f = e;
            e.requestFocus();
            ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(activity);
            this.f34326g = externalViewabilitySessionManager;
            externalViewabilitySessionManager.createVideoSession(activity, this.f34325f, this.f34324e);
            this.f34326g.registerVideoObstruction(this.f34329j);
            this.f34336q = m4243a(activity, this.f34324e.getVastCompanionAd(2), 4);
            this.f34337r = m4243a(activity, this.f34324e.getVastCompanionAd(1), 4);
            m4233c(activity);
            m4232c(activity, 4);
            m4246a(activity);
            m4229d(activity, 4);
            this.f34338s = m4242a(activity, this.f34335p, 4);
            m4238b(activity);
            m4237b(activity, 8);
            Handler handler = new Handler(Looper.getMainLooper());
            this.f34339t = new VastVideoViewProgressRunnable(this, this.f34324e, handler);
            this.f34340u = new VastVideoViewCountdownRunnable(this, handler);
            return;
        }
        throw new IllegalStateException("VastVideoConfig does not have a video disk path");
    }

    @VisibleForTesting
    /* renamed from: a */
    public View m4243a(Context context, VastCompanionAdConfig vastCompanionAdConfig, int i) {
        Preconditions.checkNotNull(context);
        if (vastCompanionAdConfig == null) {
            View view = new View(context);
            view.setVisibility(4);
            return view;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setGravity(17);
        getLayout().addView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
        this.f34326g.registerVideoObstruction(relativeLayout);
        VastWebView a = m4244a(context, vastCompanionAdConfig);
        a.setVisibility(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.dipsToIntPixels(vastCompanionAdConfig.getWidth() + 16, context), Dips.dipsToIntPixels(vastCompanionAdConfig.getHeight() + 16, context));
        layoutParams.addRule(13, -1);
        relativeLayout.addView(a, layoutParams);
        this.f34326g.registerVideoObstruction(a);
        return a;
    }

    @VisibleForTesting
    /* renamed from: a */
    public View m4242a(Context context, VastIconConfig vastIconConfig, int i) {
        Preconditions.checkNotNull(context);
        if (vastIconConfig == null) {
            return new View(context);
        }
        VastWebView a = VastWebView.m4192a(context, vastIconConfig.getVastResource());
        a.setVastWebViewClickListener(new C8826f(vastIconConfig, context));
        a.setWebViewClient(new C8827g(vastIconConfig));
        a.setVisibility(i);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Dips.asIntPixels(vastIconConfig.getWidth(), context), Dips.asIntPixels(vastIconConfig.getHeight(), context));
        layoutParams.setMargins(Dips.dipsToIntPixels(12.0f, context), Dips.dipsToIntPixels(12.0f, context), 0, 0);
        getLayout().addView(a, layoutParams);
        this.f34326g.registerVideoObstruction(a);
        return a;
    }

    /* renamed from: a */
    public final VastWebView m4244a(Context context, VastCompanionAdConfig vastCompanionAdConfig) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(vastCompanionAdConfig);
        VastWebView a = VastWebView.m4192a(context, vastCompanionAdConfig.getVastResource());
        a.setVastWebViewClickListener(new C8828h(vastCompanionAdConfig, context));
        a.setWebViewClient(new C8829i(vastCompanionAdConfig, context));
        return a;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo4200a(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            m4417a().onFinish();
        }
    }

    /* renamed from: a */
    public final void m4246a(Context context) {
        this.f34328i = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.BOTTOM_TOP, this.f34334o != null, 8, 2, this.f34330k.getId());
        getLayout().addView(this.f34328i);
        this.f34326g.registerVideoObstruction(this.f34328i);
    }

    /* renamed from: a */
    public final void m4245a(Context context, int i) {
        ImageView imageView = new ImageView(context);
        this.f34329j = imageView;
        imageView.setVisibility(i);
        getLayout().addView(this.f34329j, new RelativeLayout.LayoutParams(-1, -1));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3885a(Configuration configuration) {
        int i = m4414b().getResources().getConfiguration().orientation;
        this.f34334o = this.f34324e.getVastCompanionAd(i);
        if (this.f34336q.getVisibility() == 0 || this.f34337r.getVisibility() == 0) {
            if (i == 1) {
                this.f34336q.setVisibility(4);
                this.f34337r.setVisibility(0);
            } else {
                this.f34337r.setVisibility(4);
                this.f34336q.setVisibility(0);
            }
            VastCompanionAdConfig vastCompanionAdConfig = this.f34334o;
            if (vastCompanionAdConfig != null) {
                vastCompanionAdConfig.handleImpression(m4414b(), this.f34322C);
            }
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3884a(Bundle bundle) {
        bundle.putInt(VastVideoViewControllerTwo.CURRENT_POSITION, this.f34344y);
        bundle.putSerializable(VastVideoViewControllerTwo.RESUMED_VAST_CONFIG, this.f34324e);
    }

    /* renamed from: b */
    public final void m4238b(Context context) {
        this.f34332m = new VastVideoCtaButtonWidget(context, this.f34325f.getId(), this.f34334o != null, true ^ TextUtils.isEmpty(this.f34324e.getClickThroughUrl()));
        getLayout().addView(this.f34332m);
        this.f34326g.registerVideoObstruction(this.f34332m);
        this.f34332m.setOnTouchListener(this.f34341v);
        String customCtaText = this.f34324e.getCustomCtaText();
        if (customCtaText != null) {
            this.f34332m.m4251a(customCtaText);
        }
    }

    /* renamed from: b */
    public final void m4237b(Context context, int i) {
        VastVideoCloseButtonWidget vastVideoCloseButtonWidget = new VastVideoCloseButtonWidget(context);
        this.f34333n = vastVideoCloseButtonWidget;
        vastVideoCloseButtonWidget.setVisibility(i);
        getLayout().addView(this.f34333n);
        this.f34326g.registerVideoObstruction(this.f34333n);
        this.f34333n.setOnTouchListenerToContent(new View$OnTouchListenerC8825e());
        String customSkipText = this.f34324e.getCustomSkipText();
        if (customSkipText != null) {
            this.f34333n.m4253b(customSkipText);
        }
        String customCloseIconUrl = this.f34324e.getCustomCloseIconUrl();
        if (customCloseIconUrl != null) {
            this.f34333n.m4255a(customCloseIconUrl);
        }
    }

    /* renamed from: b */
    public void m4234b(String str) {
        this.f34326g.recordVideoEvent((ExternalViewabilitySession.VideoEvent) Enum.valueOf(ExternalViewabilitySession.VideoEvent.class, str), getCurrentPosition());
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return this.f34343x;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public VideoView mo3877c() {
        return this.f34325f;
    }

    /* renamed from: c */
    public final void m4233c(Context context) {
        this.f34327h = new VastVideoGradientStripWidget(context, GradientDrawable.Orientation.TOP_BOTTOM, this.f34334o != null, 0, 6, getLayout().getId());
        getLayout().addView(this.f34327h);
        this.f34326g.registerVideoObstruction(this.f34327h);
    }

    /* renamed from: c */
    public final void m4232c(Context context, int i) {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = new VastVideoProgressBarWidget(context);
        this.f34330k = vastVideoProgressBarWidget;
        vastVideoProgressBarWidget.setAnchorId(this.f34325f.getId());
        this.f34330k.setVisibility(i);
        getLayout().addView(this.f34330k);
        this.f34326g.registerVideoObstruction(this.f34330k);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo3875d() {
        m4219j();
    }

    /* renamed from: d */
    public final void m4229d(Context context, int i) {
        VastVideoRadialCountdownWidget vastVideoRadialCountdownWidget = new VastVideoRadialCountdownWidget(context);
        this.f34331l = vastVideoRadialCountdownWidget;
        vastVideoRadialCountdownWidget.setVisibility(i);
        getLayout().addView(this.f34331l);
        this.f34326g.registerVideoObstruction(this.f34331l);
    }

    /* renamed from: e */
    public final VastVideoView m4226e(Context context, int i) {
        if (this.f34324e.getDiskMediaFileUrl() != null) {
            VastVideoView vastVideoView = new VastVideoView(context);
            vastVideoView.setId(View.generateViewId());
            vastVideoView.setOnPreparedListener(new C8822b(vastVideoView));
            vastVideoView.setOnTouchListener(this.f34341v);
            vastVideoView.setOnCompletionListener(new C8823c(vastVideoView, context));
            vastVideoView.setOnErrorListener(new C8824d());
            vastVideoView.setVideoPath(this.f34324e.getDiskMediaFileUrl());
            vastVideoView.setVisibility(i);
            return vastVideoView;
        }
        throw new IllegalStateException("VastVideoConfig does not have a video disk path");
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo3873e() {
        super.mo3873e();
        this.f34324e.handleImpression(m4414b(), getCurrentPosition());
        m4416a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo3871f() {
        m4209o();
        this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_STOPPED, getCurrentPosition());
        this.f34326g.endVideoSession();
        m4416a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
        this.f34325f.onDestroy();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo3869g() {
        m4209o();
        this.f34344y = getCurrentPosition();
        this.f34325f.pause();
        if (!this.f34345z && !this.f34323D) {
            this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PAUSED, getCurrentPosition());
            this.f34324e.handlePause(m4414b(), this.f34344y);
        }
    }

    public int getCurrentPosition() {
        return this.f34325f.getCurrentPosition();
    }

    public int getDuration() {
        return this.f34325f.getDuration();
    }

    public String getNetworkMediaFileUrl() {
        VastVideoConfig vastVideoConfig = this.f34324e;
        if (vastVideoConfig == null) {
            return null;
        }
        return vastVideoConfig.getNetworkMediaFileUrl();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo3867h() {
        m4211n();
        int i = this.f34344y;
        if (i > 0) {
            this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PLAYING, i);
            this.f34325f.seekTo(this.f34344y);
        } else {
            this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_LOADED, getCurrentPosition());
        }
        if (!this.f34345z) {
            this.f34325f.start();
        }
        if (this.f34344y != -1) {
            this.f34324e.handleResume(m4414b(), this.f34344y);
        }
    }

    public void handleIconDisplay(int i) {
        VastIconConfig vastIconConfig = this.f34335p;
        if (vastIconConfig != null && i >= vastIconConfig.getOffsetMS()) {
            this.f34338s.setVisibility(0);
            this.f34335p.handleImpression(m4414b(), i, getNetworkMediaFileUrl());
            if (this.f34335p.getDurationMS() != null && i >= this.f34335p.getOffsetMS() + this.f34335p.getDurationMS().intValue()) {
                this.f34338s.setVisibility(8);
            }
        }
    }

    /* renamed from: i */
    public final void m4221i() {
        int duration = getDuration();
        if (this.f34324e.isRewardedVideo()) {
            this.f34342w = duration;
            return;
        }
        if (duration < 16000) {
            this.f34342w = duration;
        }
        try {
            Integer skipOffsetMillis = this.f34324e.getSkipOffsetMillis(duration);
            if (skipOffsetMillis != null) {
                this.f34342w = skipOffsetMillis.intValue();
            }
        } catch (NumberFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to parse skipoffset " + this.f34324e.getSkipOffsetString());
        }
    }

    /* renamed from: j */
    public final void m4219j() {
        int currentPosition = getCurrentPosition();
        if (!this.f34345z) {
            if (currentPosition < this.f34322C) {
                this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_SKIPPED, currentPosition);
                this.f34324e.handleSkip(m4414b(), currentPosition);
            } else {
                this.f34326g.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, currentPosition);
                this.f34324e.handleComplete(m4414b(), this.f34322C);
            }
        }
        this.f34324e.handleClose(m4414b(), this.f34322C);
    }

    /* renamed from: k */
    public void m4217k() {
        this.f34343x = true;
        this.f34331l.setVisibility(8);
        this.f34333n.setVisibility(0);
        this.f34332m.m4250b();
    }

    /* renamed from: l */
    public final boolean m4215l() {
        return this.f34343x;
    }

    /* renamed from: m */
    public boolean m4213m() {
        return !this.f34343x && getCurrentPosition() >= this.f34342w;
    }

    /* renamed from: n */
    public final void m4211n() {
        this.f34339t.startRepeating(50L);
        this.f34340u.startRepeating(250L);
    }

    /* renamed from: o */
    public final void m4209o() {
        this.f34339t.stop();
        this.f34340u.stop();
    }

    /* renamed from: p */
    public void m4207p() {
        if (this.f34321B) {
            this.f34331l.updateCountdownProgress(this.f34342w, getCurrentPosition());
        }
    }

    public void updateProgressBar() {
        this.f34330k.updateProgress(getCurrentPosition());
    }
}
