package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.UriMediaItem;
import androidx.media2.player.MediaPlayer;
import androidx.media2.widget.VideoView;
import com.mopub.common.ExternalViewabilitySession;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.mobileads.VastWebView;
import com.mopub.network.TrackingRequest;
import java.util.concurrent.Executor;
import p012b.p042i.p044i.C0869a;
import p012b.p076s.p112c.C1711c;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
@Mockable
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo.class */
public class VastVideoViewControllerTwo extends BaseVideoViewController {
    public static final String CURRENT_POSITION = "current_position";
    public static final Companion Companion = new Companion(null);
    public static final String RESUMED_VAST_CONFIG = "resumed_vast_config";
    public static final String VAST_VIDEO_CONFIG = "vast_video_config";

    /* renamed from: A */
    public boolean f34366A;

    /* renamed from: B */
    public boolean f34367B;

    /* renamed from: C */
    public boolean f34368C;

    /* renamed from: D */
    public final Activity f34369D;

    /* renamed from: E */
    public final Bundle f34370E;

    /* renamed from: F */
    public final Bundle f34371F;
    public VastVideoGradientStripWidget bottomGradientStripWidget;
    public VastVideoCloseButtonWidget closeButtonWidget;

    /* renamed from: e */
    public final VideoView f34372e;

    /* renamed from: g */
    public int f34374g;

    /* renamed from: h */
    public VastCompanionAdConfigTwo f34375h;

    /* renamed from: i */
    public final VastVideoConfigTwo f34376i;

    /* renamed from: j */
    public final VastIconConfigTwo f34377j;

    /* renamed from: l */
    public final ImageView f34379l;

    /* renamed from: m */
    public final View f34380m;

    /* renamed from: n */
    public final View f34381n;

    /* renamed from: o */
    public final View f34382o;

    /* renamed from: p */
    public final VastVideoViewProgressRunnableTwo f34383p;
    public VastVideoProgressBarWidget progressBarWidget;

    /* renamed from: q */
    public final VastVideoViewCountdownRunnableTwo f34384q;

    /* renamed from: r */
    public final View.OnTouchListener f34385r;
    public VastVideoRadialCountdownWidget radialCountdownWidget;

    /* renamed from: s */
    public final VastVideoCtaButtonWidget f34386s;

    /* renamed from: t */
    public VastVideoBlurLastVideoFrameTask f34387t;
    public VastVideoGradientStripWidget topGradientStripWidget;

    /* renamed from: v */
    public boolean f34389v;

    /* renamed from: w */
    public boolean f34390w;

    /* renamed from: x */
    public boolean f34391x;

    /* renamed from: y */
    public boolean f34392y;

    /* renamed from: f */
    public final MediaPlayer f34373f = new MediaPlayer(m4414b());

    /* renamed from: k */
    public final ExternalViewabilitySessionManager f34378k = new ExternalViewabilitySessionManager(getActivity());

    /* renamed from: u */
    public MediaMetadataRetriever f34388u = new MediaMetadataRetriever();

    /* renamed from: z */
    public int f34393z = 5000;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$PlayerCallback.class */
    public final class PlayerCallback extends MediaPlayer.AbstractC0388i0 {

        /* renamed from: a */
        public boolean f34394a;

        public PlayerCallback() {
        }

        /* renamed from: a */
        public final String m4193a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "UNKNOWN" : "PLAYER_STATE_ERROR" : "PLAYER_STATE_PLAYING" : "PLAYER_STATE_PAUSED" : "PLAYER_STATE_IDLE";
        }

        public final boolean getComplete() {
            return this.f34394a;
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onPlaybackCompleted(SessionPlayer sessionPlayer) {
            C10059q.m1637b(sessionPlayer, "player");
            VastVideoViewControllerTwo.this.m4194l();
            VastVideoViewControllerTwo.updateCountdown$mopub_sdk_base_release$default(VastVideoViewControllerTwo.this, false, 1, null);
            VastVideoViewControllerTwo.this.setComplete(true);
            VastVideoViewControllerTwo.this.m4415a(false);
            if (VastVideoViewControllerTwo.this.getVastVideoConfig().isRewarded()) {
                VastVideoViewControllerTwo.this.m4416a(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
            }
            if (VastVideoViewControllerTwo.this.getVideoError() && VastVideoViewControllerTwo.this.getVastVideoConfig().getRemainingProgressTrackerCount() == 0) {
                VastVideoViewControllerTwo.this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, VastVideoViewControllerTwo.this.getCurrentPosition());
                VastVideoConfigTwo vastVideoConfig = VastVideoViewControllerTwo.this.getVastVideoConfig();
                Context b = VastVideoViewControllerTwo.this.m4414b();
                C10059q.m1642a((Object) b, "context");
                vastVideoConfig.handleComplete(b, VastVideoViewControllerTwo.this.getCurrentPosition());
            }
            VastVideoViewControllerTwo.this.f34372e.setVisibility(4);
            VastVideoViewControllerTwo.this.getProgressBarWidget().setVisibility(8);
            VastVideoViewControllerTwo.this.getIconView().setVisibility(8);
            VastVideoViewControllerTwo.this.getTopGradientStripWidget().m4248a();
            VastVideoViewControllerTwo.this.getBottomGradientStripWidget().m4248a();
            VastVideoViewControllerTwo.this.getCtaButtonWidget().m4252a();
            VastCompanionAdConfigTwo vastCompanionAdConfigTwo = VastVideoViewControllerTwo.this.f34375h;
            if (vastCompanionAdConfigTwo != null) {
                Context b2 = VastVideoViewControllerTwo.this.m4414b();
                C10059q.m1642a((Object) b2, "context");
                Resources resources = b2.getResources();
                C10059q.m1642a((Object) resources, "context.resources");
                if (resources.getConfiguration().orientation == 1) {
                    VastVideoViewControllerTwo.this.getPortraitCompanionAdView().setVisibility(0);
                } else {
                    VastVideoViewControllerTwo.this.getLandscapeCompanionAdView().setVisibility(0);
                }
                Context b3 = VastVideoViewControllerTwo.this.m4414b();
                C10059q.m1642a((Object) b3, "context");
                vastCompanionAdConfigTwo.handleImpression(b3, VastVideoViewControllerTwo.this.getDuration());
            } else if (VastVideoViewControllerTwo.this.getBlurredLastVideoFrameImageView().getDrawable() != null) {
                VastVideoViewControllerTwo.this.getBlurredLastVideoFrameImageView().setVisibility(0);
            }
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onPlayerStateChanged(SessionPlayer sessionPlayer, int i) {
            C10059q.m1637b(sessionPlayer, "player");
            super.onPlayerStateChanged(sessionPlayer, i);
            if (i != 3) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Player state changed to " + m4193a(i));
                return;
            }
            VastVideoViewControllerTwo.this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.RECORD_AD_ERROR, VastVideoViewControllerTwo.this.getCurrentPosition());
            VastVideoViewControllerTwo.this.m4194l();
            VastVideoViewControllerTwo.this.updateCountdown$mopub_sdk_base_release(true);
            VastVideoViewControllerTwo.this.m4413b(false);
            VastVideoViewControllerTwo.this.setVideoError(true);
            VastVideoConfigTwo vastVideoConfig = VastVideoViewControllerTwo.this.getVastVideoConfig();
            Context b = VastVideoViewControllerTwo.this.m4414b();
            C10059q.m1642a((Object) b, "context");
            vastVideoConfig.handleError(b, VastErrorCode.GENERAL_LINEAR_AD_ERROR, VastVideoViewControllerTwo.this.getCurrentPosition());
        }

        @Override // androidx.media2.common.SessionPlayer.AbstractC0277a
        public void onSeekCompleted(SessionPlayer sessionPlayer, long j) {
            C10059q.m1637b(sessionPlayer, "player");
            VastVideoViewControllerTwo.this.getMediaPlayer().mo37832m();
        }

        public final void setComplete(boolean z) {
            this.f34394a = z;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$a.class */
    public static final class View$OnTouchListenerC8830a implements View.OnTouchListener {
        public View$OnTouchListenerC8830a() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C10059q.m1642a((Object) motionEvent, "event");
            if (motionEvent.getAction() != 1) {
                return true;
            }
            VastVideoViewControllerTwo vastVideoViewControllerTwo = VastVideoViewControllerTwo.this;
            vastVideoViewControllerTwo.setClosing(!vastVideoViewControllerTwo.f34392y || VastVideoViewControllerTwo.this.isComplete());
            VastVideoViewControllerTwo.this.m4196j();
            VastVideoViewControllerTwo.this.m4417a().onFinish();
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$b.class */
    public static final class C8831b implements VastWebView.AbstractC8835a {

        /* renamed from: a */
        public final /* synthetic */ VastIconConfigTwo f34397a;

        /* renamed from: b */
        public final /* synthetic */ VastVideoViewControllerTwo f34398b;

        public C8831b(VastIconConfigTwo vastIconConfigTwo, VastVideoViewControllerTwo vastVideoViewControllerTwo) {
            this.f34397a = vastIconConfigTwo;
            this.f34398b = vastVideoViewControllerTwo;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC8835a
        public final void onVastWebViewClick() {
            TrackingRequest.makeVastTrackingTwoHttpRequest(this.f34397a.getClickTrackingUris(), null, Integer.valueOf(this.f34398b.getCurrentPosition()), this.f34398b.getNetworkMediaFileUrl(), this.f34398b.m4414b());
            VastIconConfigTwo vastIconConfig = this.f34398b.getVastIconConfig();
            if (vastIconConfig != null) {
                Context b = this.f34398b.m4414b();
                C10059q.m1642a((Object) b, "context");
                vastIconConfig.handleClick(b, null, this.f34398b.getVastVideoConfig().getDspCreativeId());
            }
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$c.class */
    public static final class View$OnTouchListenerC8832c implements View.OnTouchListener {
        public View$OnTouchListenerC8832c() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            C10059q.m1642a((Object) motionEvent, "event");
            if (motionEvent.getAction() != 1) {
                return true;
            }
            if (!VastVideoViewControllerTwo.this.getShouldAllowClose() && !VastVideoViewControllerTwo.this.f34392y) {
                return true;
            }
            VastVideoViewControllerTwo.this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_CLICK_THRU, VastVideoViewControllerTwo.this.getCurrentPosition());
            VastVideoViewControllerTwo vastVideoViewControllerTwo = VastVideoViewControllerTwo.this;
            vastVideoViewControllerTwo.setClosing(!vastVideoViewControllerTwo.f34392y || VastVideoViewControllerTwo.this.isComplete());
            VastVideoViewControllerTwo.this.m4416a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            VastVideoConfigTwo vastVideoConfig = VastVideoViewControllerTwo.this.getVastVideoConfig();
            Activity activity = VastVideoViewControllerTwo.this.getActivity();
            Integer valueOf = Integer.valueOf(VastVideoViewControllerTwo.this.getDuration());
            valueOf.intValue();
            if (!VastVideoViewControllerTwo.this.isComplete()) {
                valueOf = null;
            }
            vastVideoConfig.handleClickForResult(activity, valueOf != null ? valueOf.intValue() : VastVideoViewControllerTwo.this.getCurrentPosition(), 1);
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$d.class */
    public static final class RunnableC8833d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MediaPlayer f34400a;

        /* renamed from: b */
        public final /* synthetic */ VastVideoViewControllerTwo f34401b;

        public RunnableC8833d(MediaPlayer mediaPlayer, VastVideoViewControllerTwo vastVideoViewControllerTwo, Executor executor) {
            this.f34400a = mediaPlayer;
            this.f34401b = vastVideoViewControllerTwo;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String diskMediaFileUrl;
            this.f34401b.f34378k.onVideoPrepared(this.f34401b.getLayout(), (int) this.f34400a.mo37842e());
            this.f34401b.m4197i();
            this.f34401b.getMediaPlayer().m37858b(1.0f);
            if (this.f34401b.f34375h == null && (diskMediaFileUrl = this.f34401b.getVastVideoConfig().getDiskMediaFileUrl()) != null) {
                VastVideoViewControllerTwo vastVideoViewControllerTwo = this.f34401b;
                vastVideoViewControllerTwo.prepareBlurredLastVideoFrame(vastVideoViewControllerTwo.getBlurredLastVideoFrameImageView(), diskMediaFileUrl);
            }
            this.f34401b.getProgressBarWidget().calibrateAndMakeVisible((int) this.f34400a.mo37842e(), this.f34401b.getShowCloseButtonDelay());
            this.f34401b.getRadialCountdownWidget().calibrateAndMakeVisible(this.f34401b.getShowCloseButtonDelay());
            this.f34401b.setCalibrationDone(true);
        }
    }

    /* renamed from: com.mopub.mobileads.VastVideoViewControllerTwo$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastVideoViewControllerTwo$e.class */
    public static final class C8834e implements VastWebView.AbstractC8835a {

        /* renamed from: b */
        public final /* synthetic */ VastCompanionAdConfigTwo f34403b;

        public C8834e(VastCompanionAdConfigTwo vastCompanionAdConfigTwo) {
            this.f34403b = vastCompanionAdConfigTwo;
        }

        @Override // com.mopub.mobileads.VastWebView.AbstractC8835a
        public final void onVastWebViewClick() {
            VastVideoViewControllerTwo.this.m4416a(IntentActions.ACTION_INTERSTITIAL_CLICK);
            VastVideoViewControllerTwo.this.setClosing(true);
            TrackingRequest.makeVastTrackingTwoHttpRequest(this.f34403b.getClickTrackers(), null, Integer.valueOf(VastVideoViewControllerTwo.this.getCurrentPosition()), null, VastVideoViewControllerTwo.this.m4414b());
            VastCompanionAdConfigTwo vastCompanionAdConfigTwo = this.f34403b;
            Context b = VastVideoViewControllerTwo.this.m4414b();
            C10059q.m1642a((Object) b, "context");
            vastCompanionAdConfigTwo.handleClick(b, 1, null, VastVideoViewControllerTwo.this.getVastVideoConfig().getDspCreativeId());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0488  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public VastVideoViewControllerTwo(android.app.Activity r10, android.os.Bundle r11, android.os.Bundle r12, long r13, com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener r15) {
        /*
            Method dump skipped, instructions count: 1188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoViewControllerTwo.<init>(android.app.Activity, android.os.Bundle, android.os.Bundle, long, com.mopub.mobileads.BaseVideoViewController$BaseVideoViewControllerListener):void");
    }

    @VisibleForTesting
    public static /* synthetic */ void blurLastVideoFrameTask$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void blurredLastVideoFrameImageView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void bottomGradientStripWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void closeButtonWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void ctaButtonWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void iconView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isCalibrationDone$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isClosing$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isComplete$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void landscapeCompanionAdView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void mediaMetadataRetriever$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void portraitCompanionAdView$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void progressBarWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void radialCountdownWidget$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void shouldAllowClose$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void showCloseButtonDelay$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void topGradientStripWidget$annotations() {
    }

    public static /* synthetic */ void updateCountdown$mopub_sdk_base_release$default(VastVideoViewControllerTwo vastVideoViewControllerTwo, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = false;
            }
            vastVideoViewControllerTwo.updateCountdown$mopub_sdk_base_release(z);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateCountdown");
    }

    @VisibleForTesting
    public static /* synthetic */ void vastIconConfig$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void vastVideoConfig$annotations() {
    }

    /* renamed from: a */
    public final VideoView m4199a(Context context, int i) {
        VideoView videoView = new VideoView(context);
        Executor c = C0869a.m35685c(context);
        C1711c.C1712a aVar = new C1711c.C1712a();
        aVar.m32300a(0);
        aVar.m32299b(1.0f);
        C1711c a = aVar.m32302a();
        C10059q.m1642a((Object) a, "PlaybackParams.Builder()….0f)\n            .build()");
        getMediaPlayer().m37860a(a);
        AudioAttributesCompat.C0234a aVar2 = new AudioAttributesCompat.C0234a();
        aVar2.m38304d(1);
        aVar2.m38307a(3);
        getMediaPlayer().m37871a(aVar2.m38308a());
        getMediaPlayer().m37859a(c, (MediaPlayer.AbstractC0388i0) new PlayerCallback());
        videoView.removeView(videoView.getMediaControlView());
        videoView.setId(View.generateViewId());
        videoView.setPlayer(getMediaPlayer());
        videoView.setOnTouchListener(this.f34385r);
        MediaPlayer mediaPlayer = getMediaPlayer();
        mediaPlayer.m37870a(new UriMediaItem.C0279a(Uri.parse(getVastVideoConfig().getDiskMediaFileUrl())).mo38201a());
        mediaPlayer.m37824v().mo7696a(new RunnableC8833d(mediaPlayer, this, c), c);
        return videoView;
    }

    /* renamed from: a */
    public final VastWebView m4198a(final VastCompanionAdConfigTwo vastCompanionAdConfigTwo) {
        VastWebView a = VastWebView.m4191a(m4414b(), vastCompanionAdConfigTwo.getVastResource());
        C10059q.m1642a((Object) a, "it");
        a.setVastWebViewClickListener(new C8834e(vastCompanionAdConfigTwo));
        a.setWebViewClient(new WebViewClient(vastCompanionAdConfigTwo) { // from class: com.mopub.mobileads.VastVideoViewControllerTwo$createWebView$$inlined$also$lambda$2
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                C10059q.m1637b(webView, "view");
                C10059q.m1637b(str, "url");
                VastCompanionAdConfigTwo vastCompanionAdConfigTwo2 = VastVideoViewControllerTwo.this.f34375h;
                if (vastCompanionAdConfigTwo2 == null) {
                    return true;
                }
                Context b = VastVideoViewControllerTwo.this.m4414b();
                C10059q.m1642a((Object) b, "context");
                vastCompanionAdConfigTwo2.handleClick(b, 1, str, VastVideoViewControllerTwo.this.getVastVideoConfig().getDspCreativeId());
                return true;
            }
        });
        C10059q.m1642a((Object) a, "VastWebView.createView(c…}\n            }\n        }");
        return a;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo4200a(int i, int i2, Intent intent) {
        if (isClosing() && i == 1 && i2 == -1) {
            m4417a().onFinish();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3885a(Configuration configuration) {
        C10059q.m1637b(configuration, "newConfig");
        Context b = m4414b();
        C10059q.m1642a((Object) b, "context");
        Resources resources = b.getResources();
        C10059q.m1642a((Object) resources, "context.resources");
        int i = resources.getConfiguration().orientation;
        if (getLandscapeCompanionAdView().getVisibility() == 0 || getPortraitCompanionAdView().getVisibility() == 0) {
            if (i == 1) {
                getLandscapeCompanionAdView().setVisibility(4);
                getPortraitCompanionAdView().setVisibility(0);
            } else {
                getLandscapeCompanionAdView().setVisibility(0);
                getPortraitCompanionAdView().setVisibility(4);
            }
        }
        VastCompanionAdConfigTwo vastCompanionAd = getVastVideoConfig().getVastCompanionAd(i);
        if (vastCompanionAd != null) {
            Context b2 = m4414b();
            C10059q.m1642a((Object) b2, "context");
            vastCompanionAd.handleImpression(b2, getDuration());
        } else {
            vastCompanionAd = null;
        }
        this.f34375h = vastCompanionAd;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3884a(Bundle bundle) {
        C10059q.m1637b(bundle, "outState");
        bundle.putInt(CURRENT_POSITION, this.f34374g);
        bundle.putSerializable(RESUMED_VAST_CONFIG, getVastVideoConfig());
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    public boolean backButtonEnabled() {
        return this.f34391x || getShouldAllowClose();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public View mo3877c() {
        return this.f34372e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0092, code lost:
        if (r7 != null) goto L_0x00a9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View createCompanionAdView(com.mopub.mobileads.VastVideoConfigTwo r7, int r8, int r9) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "$this$createCompanionAdView"
            p573f.p590w.p592c.C10059q.m1637b(r0, r1)
            r0 = r7
            r1 = r8
            com.mopub.mobileads.VastCompanionAdConfigTwo r0 = r0.getVastCompanionAd(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0098
            android.widget.RelativeLayout r0 = new android.widget.RelativeLayout
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.m4414b()
            r1.<init>(r2)
            r11 = r0
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r1 = r0
            r2 = -1
            r3 = -1
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r11
            r1 = 17
            r0.setGravity(r1)
            r0 = r6
            android.view.ViewGroup r0 = r0.getLayout()
            r1 = r11
            r2 = r7
            r0.addView(r1, r2)
            r0 = r6
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f34378k
            r1 = r11
            r0.registerVideoObstruction(r1)
            r0 = r6
            r1 = r10
            com.mopub.mobileads.VastWebView r0 = r0.m4198a(r1)
            r7 = r0
            r0 = r7
            r1 = r9
            r0.setVisibility(r1)
            android.widget.RelativeLayout$LayoutParams r0 = new android.widget.RelativeLayout$LayoutParams
            r1 = r0
            r2 = r10
            int r2 = r2.getWidth()
            r3 = 16
            int r2 = r2 + r3
            float r2 = (float) r2
            r3 = r6
            android.content.Context r3 = r3.m4414b()
            int r2 = com.mopub.common.util.Dips.dipsToIntPixels(r2, r3)
            r3 = r10
            int r3 = r3.getHeight()
            r4 = 16
            int r3 = r3 + r4
            float r3 = (float) r3
            r4 = r6
            android.content.Context r4 = r4.m4414b()
            int r3 = com.mopub.common.util.Dips.dipsToIntPixels(r3, r4)
            r1.<init>(r2, r3)
            r10 = r0
            r0 = r10
            r1 = 13
            r2 = -1
            r0.addRule(r1, r2)
            r0 = r11
            r1 = r7
            r2 = r10
            r0.addView(r1, r2)
            r0 = r6
            com.mopub.common.ExternalViewabilitySessionManager r0 = r0.f34378k
            r1 = r7
            r0.registerVideoObstruction(r1)
            r0 = r7
            if (r0 == 0) goto L_0x0098
            goto L_0x00a9
        L_0x0098:
            android.view.View r0 = new android.view.View
            r1 = r0
            r2 = r6
            android.content.Context r2 = r2.m4414b()
            r1.<init>(r2)
            r7 = r0
            r0 = r7
            r1 = 4
            r0.setVisibility(r1)
        L_0x00a9:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastVideoViewControllerTwo.createCompanionAdView(com.mopub.mobileads.VastVideoConfigTwo, int, int):android.view.View");
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo3875d() {
        m4196j();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo3873e() {
        super.mo3873e();
        VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
        Context b = m4414b();
        C10059q.m1642a((Object) b, "context");
        vastVideoConfig.handleImpression(b, getDuration());
        m4416a(IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo3871f() {
        m4194l();
        this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_STOPPED, getCurrentPosition());
        this.f34378k.endVideoSession();
        m4416a(IntentActions.ACTION_INTERSTITIAL_DISMISS);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo3869g() {
        m4194l();
        this.f34374g = getCurrentPosition();
        getMediaPlayer().mo37833l();
        if (!isClosing()) {
            this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PAUSED, getCurrentPosition());
            VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
            Context b = m4414b();
            C10059q.m1642a((Object) b, "context");
            vastVideoConfig.handlePause(b, this.f34374g);
        }
    }

    public Activity getActivity() {
        return this.f34369D;
    }

    public VastVideoBlurLastVideoFrameTask getBlurLastVideoFrameTask() {
        return this.f34387t;
    }

    public ImageView getBlurredLastVideoFrameImageView() {
        return this.f34379l;
    }

    public VastVideoGradientStripWidget getBottomGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.bottomGradientStripWidget;
        if (vastVideoGradientStripWidget != null) {
            return vastVideoGradientStripWidget;
        }
        C10059q.m1634d("bottomGradientStripWidget");
        throw null;
    }

    public VastVideoCloseButtonWidget getCloseButtonWidget() {
        VastVideoCloseButtonWidget vastVideoCloseButtonWidget = this.closeButtonWidget;
        if (vastVideoCloseButtonWidget != null) {
            return vastVideoCloseButtonWidget;
        }
        C10059q.m1634d("closeButtonWidget");
        throw null;
    }

    public VastVideoCtaButtonWidget getCtaButtonWidget() {
        return this.f34386s;
    }

    public int getCurrentPosition() {
        return (int) getMediaPlayer().mo37845d();
    }

    public int getDuration() {
        return (int) getMediaPlayer().mo37842e();
    }

    public Bundle getExtras() {
        return this.f34370E;
    }

    public View getIconView() {
        return this.f34382o;
    }

    public View getLandscapeCompanionAdView() {
        return this.f34380m;
    }

    public MediaMetadataRetriever getMediaMetadataRetriever() {
        return this.f34388u;
    }

    public MediaPlayer getMediaPlayer() {
        return this.f34373f;
    }

    public String getNetworkMediaFileUrl() {
        return getVastVideoConfig().getNetworkMediaFileUrl();
    }

    public View getPortraitCompanionAdView() {
        return this.f34381n;
    }

    public VastVideoProgressBarWidget getProgressBarWidget() {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.progressBarWidget;
        if (vastVideoProgressBarWidget != null) {
            return vastVideoProgressBarWidget;
        }
        C10059q.m1634d("progressBarWidget");
        throw null;
    }

    public VastVideoRadialCountdownWidget getRadialCountdownWidget() {
        VastVideoRadialCountdownWidget vastVideoRadialCountdownWidget = this.radialCountdownWidget;
        if (vastVideoRadialCountdownWidget != null) {
            return vastVideoRadialCountdownWidget;
        }
        C10059q.m1634d("radialCountdownWidget");
        throw null;
    }

    public Bundle getSavedInstanceState() {
        return this.f34371F;
    }

    public boolean getShouldAllowClose() {
        return this.f34390w;
    }

    public int getShowCloseButtonDelay() {
        return this.f34393z;
    }

    public VastVideoGradientStripWidget getTopGradientStripWidget() {
        VastVideoGradientStripWidget vastVideoGradientStripWidget = this.topGradientStripWidget;
        if (vastVideoGradientStripWidget != null) {
            return vastVideoGradientStripWidget;
        }
        C10059q.m1634d("topGradientStripWidget");
        throw null;
    }

    public VastIconConfigTwo getVastIconConfig() {
        return this.f34377j;
    }

    public VastVideoConfigTwo getVastVideoConfig() {
        return this.f34376i;
    }

    public boolean getVideoError() {
        return this.f34368C;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo3867h() {
        m4195k();
        int i = this.f34374g;
        if (i > 0) {
            this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_PLAYING, i);
            C10059q.m1642a((Object) getMediaPlayer().m37873a(this.f34374g, 3), "mediaPlayer.seekTo(seeke…MediaPlayer.SEEK_CLOSEST)");
        } else {
            this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_LOADED, getDuration());
            if (!isComplete()) {
                getMediaPlayer().mo37832m();
            }
        }
        if (this.f34374g != -1) {
            VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
            Context b = m4414b();
            C10059q.m1642a((Object) b, "context");
            vastVideoConfig.handleResume(b, this.f34374g);
        }
    }

    public void handleIconDisplay(int i) {
        Integer durationMS;
        VastIconConfigTwo vastIconConfig;
        VastIconConfigTwo vastIconConfig2 = getVastIconConfig();
        if (vastIconConfig2 != null) {
            int offsetMS = vastIconConfig2.getOffsetMS();
            getIconView().setVisibility(0);
            String networkMediaFileUrl = getNetworkMediaFileUrl();
            if (!(networkMediaFileUrl == null || (vastIconConfig = getVastIconConfig()) == null)) {
                Context b = m4414b();
                C10059q.m1642a((Object) b, "context");
                vastIconConfig.handleImpression(b, i, networkMediaFileUrl);
            }
            VastIconConfigTwo vastIconConfig3 = getVastIconConfig();
            if (vastIconConfig3 != null && (durationMS = vastIconConfig3.getDurationMS()) != null && i >= offsetMS + durationMS.intValue()) {
                getIconView().setVisibility(8);
            }
        }
    }

    public void handleViewabilityQuartileEvent$mopub_sdk_base_release(String str) {
        C10059q.m1637b(str, "enumValue");
        ExternalViewabilitySession.VideoEvent valueOf = ExternalViewabilitySession.VideoEvent.valueOf(str);
        if (valueOf != null) {
            this.f34378k.recordVideoEvent(valueOf, getCurrentPosition());
        }
    }

    /* renamed from: i */
    public final void m4197i() {
        int duration = getDuration();
        if (getVastVideoConfig().isRewarded()) {
            setShowCloseButtonDelay(duration);
            return;
        }
        if (duration < 16000) {
            setShowCloseButtonDelay(duration);
        }
        try {
            Integer skipOffsetMillis = getVastVideoConfig().getSkipOffsetMillis(duration);
            if (skipOffsetMillis != null) {
                setShowCloseButtonDelay(skipOffsetMillis.intValue());
            }
        } catch (NumberFormatException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Failed to parse skipoffset " + getVastVideoConfig().getSkipOffset());
        }
    }

    public boolean isCalibrationDone() {
        return this.f34366A;
    }

    public boolean isClosing() {
        return this.f34367B;
    }

    public boolean isComplete() {
        return this.f34389v;
    }

    /* renamed from: j */
    public final void m4196j() {
        int currentPosition = getCurrentPosition();
        if (isComplete()) {
            this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, getDuration());
            VastVideoConfigTwo vastVideoConfig = getVastVideoConfig();
            Context b = m4414b();
            C10059q.m1642a((Object) b, "context");
            vastVideoConfig.handleComplete(b, getDuration());
        } else if (this.f34391x) {
            this.f34378k.recordVideoEvent(ExternalViewabilitySession.VideoEvent.AD_COMPLETE, currentPosition);
            VastVideoConfigTwo vastVideoConfig2 = getVastVideoConfig();
            Context b2 = m4414b();
            C10059q.m1642a((Object) b2, "context");
            vastVideoConfig2.handleSkip(b2, currentPosition);
        }
        VastVideoConfigTwo vastVideoConfig3 = getVastVideoConfig();
        Context b3 = m4414b();
        C10059q.m1642a((Object) b3, "context");
        vastVideoConfig3.handleClose(b3, getDuration());
    }

    /* renamed from: k */
    public final void m4195k() {
        this.f34383p.startRepeating(50L);
        this.f34384q.startRepeating(250L);
    }

    /* renamed from: l */
    public final void m4194l() {
        this.f34383p.stop();
        this.f34384q.stop();
    }

    public void prepareBlurredLastVideoFrame(ImageView imageView, String str) {
        C10059q.m1637b(imageView, "blurredLastVideoFrameImageView");
        C10059q.m1637b(str, "diskMediaFileUrl");
        MediaMetadataRetriever mediaMetadataRetriever = getMediaMetadataRetriever();
        if (mediaMetadataRetriever != null) {
            VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(mediaMetadataRetriever, imageView, getDuration());
            AsyncTasks.safeExecuteOnExecutor(vastVideoBlurLastVideoFrameTask, str);
            setBlurLastVideoFrameTask(vastVideoBlurLastVideoFrameTask);
        }
    }

    public void setBlurLastVideoFrameTask(VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask) {
        this.f34387t = vastVideoBlurLastVideoFrameTask;
    }

    public void setBottomGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        C10059q.m1637b(vastVideoGradientStripWidget, "<set-?>");
        this.bottomGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setCalibrationDone(boolean z) {
        this.f34366A = z;
    }

    public void setCloseButtonWidget(VastVideoCloseButtonWidget vastVideoCloseButtonWidget) {
        C10059q.m1637b(vastVideoCloseButtonWidget, "<set-?>");
        this.closeButtonWidget = vastVideoCloseButtonWidget;
    }

    public void setClosing(boolean z) {
        this.f34367B = z;
    }

    public void setComplete(boolean z) {
        this.f34389v = z;
    }

    public void setMediaMetadataRetriever(MediaMetadataRetriever mediaMetadataRetriever) {
        this.f34388u = mediaMetadataRetriever;
    }

    public void setProgressBarWidget(VastVideoProgressBarWidget vastVideoProgressBarWidget) {
        C10059q.m1637b(vastVideoProgressBarWidget, "<set-?>");
        this.progressBarWidget = vastVideoProgressBarWidget;
    }

    public void setRadialCountdownWidget(VastVideoRadialCountdownWidget vastVideoRadialCountdownWidget) {
        C10059q.m1637b(vastVideoRadialCountdownWidget, "<set-?>");
        this.radialCountdownWidget = vastVideoRadialCountdownWidget;
    }

    public void setShouldAllowClose(boolean z) {
        this.f34390w = z;
    }

    public void setShowCloseButtonDelay(int i) {
        this.f34393z = i;
    }

    public void setTopGradientStripWidget(VastVideoGradientStripWidget vastVideoGradientStripWidget) {
        C10059q.m1637b(vastVideoGradientStripWidget, "<set-?>");
        this.topGradientStripWidget = vastVideoGradientStripWidget;
    }

    public void setVideoError(boolean z) {
        this.f34368C = z;
    }

    public void updateCountdown$mopub_sdk_base_release(boolean z) {
        if (isCalibrationDone()) {
            getRadialCountdownWidget().updateCountdownProgress(getShowCloseButtonDelay(), getCurrentPosition());
        }
        if (z || getCurrentPosition() >= getShowCloseButtonDelay()) {
            getRadialCountdownWidget().setVisibility(8);
            getCloseButtonWidget().setVisibility(0);
            setShouldAllowClose(true);
            if (this.f34392y || !getVastVideoConfig().isRewarded()) {
                getCtaButtonWidget().m4250b();
            }
        }
    }

    public void updateProgressBar() {
        getProgressBarWidget().updateProgress(getCurrentPosition());
    }
}
