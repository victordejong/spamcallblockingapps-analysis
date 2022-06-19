.class public Lcom/mopub/mobileads/VastVideoViewController;
.super Lcom/mopub/mobileads/BaseVideoViewController;
.source "SourceFile"


# annotations
.annotation runtime Lcom/mopub/mobileads/Mockable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;,
        Lcom/mopub/mobileads/VastVideoViewController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 \u00c7\u00012\u00020\u0001:\u0004\u00c7\u0001\u00c8\u0001B8\u0012\u0006\u0010-\u001a\u00020(\u0012\u0006\u00103\u001a\u00020.\u0012\t\u0010\u00b4\u0001\u001a\u0004\u0018\u00010.\u0012\u0008\u0010\u00c2\u0001\u001a\u00030\u00c1\u0001\u0012\u0008\u0010\u00c4\u0001\u001a\u00030\u00c3\u0001\u00a2\u0006\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0012\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0012\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u000f\u0010\r\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0015\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\tH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J)\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001eJ\u0019\u0010!\u001a\u00020\t2\u0008\u0008\u0002\u0010 \u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008#\u0010\u000bJ\u0017\u0010%\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\'\u0010\u000bR\u001c\u0010-\u001a\u00020(8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R\u001c\u00103\u001a\u00020.8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R(\u00109\u001a\u00020\u00108\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0018\n\u0004\u00084\u00105\u0012\u0004\u00088\u0010\u000b\u001a\u0004\u00086\u0010\u0012\"\u0004\u00087\u0010\"R\"\u0010=\u001a\u00020\u00108\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u00105\u001a\u0004\u0008;\u0010\u0012\"\u0004\u0008<\u0010\"R\"\u0010D\u001a\u00020>8\u0016@\u0017X\u0097\u0004\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u0012\u0004\u0008C\u0010\u000b\u001a\u0004\u0008A\u0010BR(\u0010J\u001a\u00020\u00048\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0018\n\u0004\u0008E\u0010F\u0012\u0004\u0008I\u0010\u000b\u001a\u0004\u0008G\u0010\u001e\"\u0004\u0008H\u0010&R(\u0010L\u001a\u00020K8\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008L\u0010M\u0012\u0004\u0008R\u0010\u000b\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR\"\u0010Y\u001a\u00020S8\u0016@\u0017X\u0097\u0004\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u0012\u0004\u0008X\u0010\u000b\u001a\u0004\u0008V\u0010WR(\u0010[\u001a\u00020Z8\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008[\u0010\\\u0012\u0004\u0008a\u0010\u000b\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R(\u0010c\u001a\u00020\u00108\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0018\n\u0004\u0008b\u00105\u0012\u0004\u0008e\u0010\u000b\u001a\u0004\u0008c\u0010\u0012\"\u0004\u0008d\u0010\"R\u001c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020g0f8\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR(\u0010l\u001a\u00020k8\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008l\u0010m\u0012\u0004\u0008r\u0010\u000b\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR(\u0010t\u001a\u00020\u00108\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0018\n\u0004\u0008s\u00105\u0012\u0004\u0008v\u0010\u000b\u001a\u0004\u0008t\u0010\u0012\"\u0004\u0008u\u0010\"R\u0018\u0010y\u001a\u0004\u0018\u00010\u00198V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010xR*\u0010{\u001a\u00020z8\u0016@\u0016X\u0097.\u00a2\u0006\u001a\n\u0004\u0008{\u0010|\u0012\u0005\u0008\u0081\u0001\u0010\u000b\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020\u00068\u0012@\u0012X\u0092\u0004\u00a2\u0006\u0007\n\u0005\u0008\u000e\u0010\u0082\u0001R-\u0010\u0085\u0001\u001a\u00020\u00108\u0016@\u0016X\u0097\u000e\u00a2\u0006\u001c\n\u0005\u0008\u0084\u0001\u00105\u0012\u0005\u0008\u0087\u0001\u0010\u000b\u001a\u0005\u0008\u0085\u0001\u0010\u0012\"\u0005\u0008\u0086\u0001\u0010\"R\u001a\u0010\u008b\u0001\u001a\u00030\u0088\u00018\u0012@\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R+\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0016@\u0017X\u0097\u0004\u00a2\u0006\u0017\n\u0006\u0008\u008d\u0001\u0010\u008e\u0001\u0012\u0005\u0008\u0091\u0001\u0010\u000b\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001R\u001a\u0010\u0096\u0001\u001a\u00030\u0093\u00018\u0012@\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001R\u001a\u0010\u009a\u0001\u001a\u00030\u0097\u00018\u0012@\u0012X\u0092\u0004\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0099\u0001R%\u0010\u009f\u0001\u001a\u00070\u009b\u0001R\u00020\u00008\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000f\n\u0005\u0008\u0007\u0010\u009c\u0001\u001a\u0006\u0008\u009d\u0001\u0010\u009e\u0001R-\u0010\u00a0\u0001\u001a\u00020k8\u0016@\u0016X\u0097.\u00a2\u0006\u001c\n\u0005\u0008\u00a0\u0001\u0010m\u0012\u0005\u0008\u00a3\u0001\u0010\u000b\u001a\u0005\u0008\u00a1\u0001\u0010o\"\u0005\u0008\u00a2\u0001\u0010qR-\u0010\u00a8\u0001\u001a\u00020\u00108\u0016@\u0016X\u0097\u000e\u00a2\u0006\u001c\n\u0005\u0008\u00a4\u0001\u00105\u0012\u0005\u0008\u00a7\u0001\u0010\u000b\u001a\u0005\u0008\u00a5\u0001\u0010\u0012\"\u0005\u0008\u00a6\u0001\u0010\"R1\u0010\u00aa\u0001\u001a\u00030\u00a9\u00018\u0016@\u0016X\u0097.\u00a2\u0006\u001f\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001\u0012\u0005\u0008\u00b0\u0001\u0010\u000b\u001a\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001\"\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R\u0017\u0010\u00b1\u0001\u001a\u00020\u00048\u0012@\u0012X\u0092\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010FR!\u0010\u00b4\u0001\u001a\u0004\u0018\u00010.8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000e\n\u0005\u0008\u00b2\u0001\u00100\u001a\u0005\u0008\u00b3\u0001\u00102R)\u0010\u00bb\u0001\u001a\u00030\u00b5\u00018\u0016@\u0017X\u0097\u0004\u00a2\u0006\u0017\n\u0006\u0008\u00b6\u0001\u0010\u00b7\u0001\u0012\u0005\u0008\u00ba\u0001\u0010\u000b\u001a\u0006\u0008\u00b8\u0001\u0010\u00b9\u0001R!\u0010\u00c0\u0001\u001a\u00030\u00bc\u00018\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000f\n\u0005\u0008\r\u0010\u00bd\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\u00a8\u0006\u00c9\u0001"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastVideoViewController;",
        "Lcom/mopub/mobileads/BaseVideoViewController;",
        "Landroid/content/Context;",
        "context",
        "",
        "initialVisibility",
        "Ln3/y/e/f0;",
        "g",
        "(Landroid/content/Context;I)Ln3/y/e/f0;",
        "Ls1/s;",
        "h",
        "()V",
        "c",
        "f",
        "e",
        "d",
        "",
        "backButtonEnabled",
        "()Z",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "b",
        "(IILandroid/content/Intent;)V",
        "",
        "enumValue",
        "handleViewabilityQuartileEvent",
        "(Ljava/lang/String;)V",
        "getDuration",
        "()I",
        "getCurrentPosition",
        "forceCloseable",
        "updateCountdown",
        "(Z)V",
        "updateProgressBar",
        "currentPosition",
        "handleIconDisplay",
        "(I)V",
        "handleExitTrackers",
        "Landroid/app/Activity;",
        "x",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "activity",
        "Landroid/os/Bundle;",
        "y",
        "Landroid/os/Bundle;",
        "getExtras",
        "()Landroid/os/Bundle;",
        "extras",
        "v",
        "Z",
        "getHasCompanionAd",
        "setHasCompanionAd",
        "hasCompanionAd$annotations",
        "hasCompanionAd",
        "w",
        "getVideoError",
        "setVideoError",
        "videoError",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        "j",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        "getVastVideoConfig",
        "()Lcom/mopub/mobileads/VastVideoConfig;",
        "vastVideoConfig$annotations",
        "vastVideoConfig",
        "s",
        "I",
        "getShowCloseButtonDelay",
        "setShowCloseButtonDelay",
        "showCloseButtonDelay$annotations",
        "showCloseButtonDelay",
        "Landroid/view/View;",
        "iconView",
        "Landroid/view/View;",
        "getIconView",
        "()Landroid/view/View;",
        "setIconView",
        "(Landroid/view/View;)V",
        "iconView$annotations",
        "Lcom/mopub/mobileads/VideoCtaButtonWidget;",
        "p",
        "Lcom/mopub/mobileads/VideoCtaButtonWidget;",
        "getCtaButtonWidget",
        "()Lcom/mopub/mobileads/VideoCtaButtonWidget;",
        "ctaButtonWidget$annotations",
        "ctaButtonWidget",
        "Lcom/mopub/mobileads/VastVideoCloseButtonWidget;",
        "closeButtonWidget",
        "Lcom/mopub/mobileads/VastVideoCloseButtonWidget;",
        "getCloseButtonWidget",
        "()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;",
        "setCloseButtonWidget",
        "(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V",
        "closeButtonWidget$annotations",
        "u",
        "isClosing",
        "setClosing",
        "isClosing$annotations",
        "",
        "Lcom/mopub/mobileads/VastCompanionAdConfig;",
        "i",
        "Ljava/util/Set;",
        "vastCompanionAdConfigs",
        "Lcom/mopub/mobileads/VastVideoGradientStripWidget;",
        "topGradientStripWidget",
        "Lcom/mopub/mobileads/VastVideoGradientStripWidget;",
        "getTopGradientStripWidget",
        "()Lcom/mopub/mobileads/VastVideoGradientStripWidget;",
        "setTopGradientStripWidget",
        "(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V",
        "topGradientStripWidget$annotations",
        "t",
        "isCalibrationDone",
        "setCalibrationDone",
        "isCalibrationDone$annotations",
        "getNetworkMediaFileUrl",
        "()Ljava/lang/String;",
        "networkMediaFileUrl",
        "Lcom/mopub/mobileads/RadialCountdownWidget;",
        "radialCountdownWidget",
        "Lcom/mopub/mobileads/RadialCountdownWidget;",
        "getRadialCountdownWidget",
        "()Lcom/mopub/mobileads/RadialCountdownWidget;",
        "setRadialCountdownWidget",
        "(Lcom/mopub/mobileads/RadialCountdownWidget;)V",
        "radialCountdownWidget$annotations",
        "Ln3/y/e/f0;",
        "videoView",
        "q",
        "isComplete",
        "setComplete",
        "isComplete$annotations",
        "Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;",
        "n",
        "Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;",
        "countdownRunnable",
        "Lcom/mopub/mobileads/VastIconConfig;",
        "k",
        "Lcom/mopub/mobileads/VastIconConfig;",
        "getVastIconConfig",
        "()Lcom/mopub/mobileads/VastIconConfig;",
        "vastIconConfig$annotations",
        "vastIconConfig",
        "Lcom/mopub/common/ExternalViewabilitySessionManager;",
        "l",
        "Lcom/mopub/common/ExternalViewabilitySessionManager;",
        "externalViewabilitySessionManager",
        "Lcom/mopub/mobileads/VastVideoViewProgressRunnable;",
        "m",
        "Lcom/mopub/mobileads/VastVideoViewProgressRunnable;",
        "progressCheckerRunnable",
        "Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "getPlayerCallback",
        "()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "playerCallback",
        "bottomGradientStripWidget",
        "getBottomGradientStripWidget",
        "setBottomGradientStripWidget",
        "bottomGradientStripWidget$annotations",
        "r",
        "getShouldAllowClose",
        "setShouldAllowClose",
        "shouldAllowClose$annotations",
        "shouldAllowClose",
        "Lcom/mopub/mobileads/VastVideoProgressBarWidget;",
        "progressBarWidget",
        "Lcom/mopub/mobileads/VastVideoProgressBarWidget;",
        "getProgressBarWidget",
        "()Lcom/mopub/mobileads/VastVideoProgressBarWidget;",
        "setProgressBarWidget",
        "(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V",
        "progressBarWidget$annotations",
        "seekerPositionOnPause",
        "z",
        "getSavedInstanceState",
        "savedInstanceState",
        "Landroid/view/View$OnTouchListener;",
        "o",
        "Landroid/view/View$OnTouchListener;",
        "getClickThroughListener",
        "()Landroid/view/View$OnTouchListener;",
        "clickThroughListener$annotations",
        "clickThroughListener",
        "Landroidx/media2/player/MediaPlayer;",
        "Landroidx/media2/player/MediaPlayer;",
        "getMediaPlayer",
        "()Landroidx/media2/player/MediaPlayer;",
        "mediaPlayer",
        "",
        "broadcastIdentifier",
        "Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;",
        "baseListener",
        "<init>",
        "(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V",
        "Companion",
        "PlayerCallback",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION:Ljava/lang/String; = "current_position"

.field public static final Companion:Lcom/mopub/mobileads/VastVideoViewController$Companion;

.field public static final DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x1388

.field public static final MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON:I = 0x3e80

.field public static final RESUMED_VAST_CONFIG:Ljava/lang/String; = "resumed_vast_config"

.field public static final VAST_VIDEO_CONFIG:Ljava/lang/String; = "vast_video_config"

.field public static final WEBVIEW_PADDING:I = 0x10


# instance fields
.field public bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field public closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

.field public final e:Ln3/y/e/f0;

.field public final f:Landroidx/media2/player/MediaPlayer;

.field public final g:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

.field public h:I

.field public i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field public iconView:Landroid/view/View;

.field public final j:Lcom/mopub/mobileads/VastVideoConfig;

.field public final k:Lcom/mopub/mobileads/VastIconConfig;

.field public final l:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field public final m:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

.field public final n:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

.field public final o:Landroid/view/View$OnTouchListener;

.field public final p:Lcom/mopub/mobileads/VideoCtaButtonWidget;

.field public progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

.field public q:Z

.field public r:Z

.field public radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

.field public s:I

.field public t:Z

.field public topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

.field public u:Z

.field public v:Z

.field public w:Z

.field public final x:Landroid/app/Activity;

.field public final y:Landroid/os/Bundle;

.field public final z:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastVideoViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController$Companion;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/mopub/mobileads/VastVideoViewController;->Companion:Lcom/mopub/mobileads/VastVideoViewController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    const-string v4, "activity"

    invoke-static {v1, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "extras"

    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "baseListener"

    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v1, v4, v3}, Lcom/mopub/mobileads/BaseVideoViewController;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->x:Landroid/app/Activity;

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->y:Landroid/os/Bundle;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->z:Landroid/os/Bundle;

    .line 2
    sget-object v1, Lcom/mopub/mobileads/factories/MediaPlayerFactory;->Companion:Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;

    .line 3
    iget-object v2, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v3, "context"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/factories/MediaPlayerFactory$Companion;->create(Landroid/content/Context;)Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroidx/media2/player/MediaPlayer;

    .line 5
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->g:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/util/Set;

    .line 8
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v2

    const-string v3, "ExternalViewabilitySessionManager.create()"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    const/16 v3, 0x1388

    .line 9
    iput v3, v0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    .line 10
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v5, "resumed_vast_config"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    instance-of v5, v3, Lcom/mopub/mobileads/VastVideoConfig;

    if-nez v5, :cond_1

    move-object v3, v4

    :cond_1
    check-cast v3, Lcom/mopub/mobileads/VastVideoConfig;

    .line 11
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com_mopub_ad_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/mopub/mobileads/AdData;

    if-eqz v3, :cond_2

    move-object v6, v3

    goto :goto_1

    .line 12
    :cond_2
    sget-object v6, Lcom/mopub/mobileads/VastVideoConfig;->Companion:Lcom/mopub/mobileads/VastVideoConfig$Companion;

    if-eqz v5, :cond_11

    .line 13
    invoke-virtual {v5}, Lcom/mopub/mobileads/AdData;->getVastVideoConfigString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 14
    invoke-virtual {v6, v7}, Lcom/mopub/mobileads/VastVideoConfig$Companion;->fromVastVideoConfigString(Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 15
    :goto_1
    iput-object v6, v0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/mobileads/VastVideoConfig;

    if-eqz v5, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v6, v5}, Lcom/mopub/mobileads/VastVideoConfig;->setCountdownTimerDuration(I)V

    :cond_3
    if-eqz v3, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getSavedInstanceState()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "current_position"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_5

    .line 18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 19
    :cond_5
    iput v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    .line 20
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 21
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAdConfigs()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/util/Set;

    .line 22
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 24
    new-instance v7, Lcom/mopub/mobileads/VastResource;

    .line 25
    sget-object v4, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    .line 26
    sget-object v5, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    const/4 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object/from16 p1, v7

    move-object/from16 p2, v1

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v9

    move/from16 p6, v8

    .line 27
    invoke-direct/range {p1 .. p6}, Lcom/mopub/mobileads/VastResource;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastResource$CreativeType;II)V

    .line 28
    iget-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/util/Set;

    .line 29
    new-instance v12, Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v5, -0x1

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getClickTrackers()Ljava/util/ArrayList;

    move-result-object v9

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const-string v4, "Collections.emptyList()"

    invoke-static {v10, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v11

    move-object v4, v12

    .line 34
    invoke-direct/range {v4 .. v11}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 35
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoViewController;->setHasCompanionAd(Z)V

    .line 37
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastIconConfig;

    .line 38
    new-instance v1, Lcom/mopub/mobileads/VastVideoViewController$d;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$d;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->o:Landroid/view/View$OnTouchListener;

    .line 39
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 40
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->g(Landroid/content/Context;)Ln3/y/e/f0;

    move-result-object v1

    iput-object v1, v0, Lcom/mopub/mobileads/VastVideoViewController;->e:Ln3/y/e/f0;

    .line 41
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 42
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mopub/mobileads/VastVideoConfig;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v4

    .line 43
    invoke-virtual {v2, v1, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createVideoSession(Landroid/view/View;Ljava/util/Set;)V

    .line 44
    iget-object v4, v0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 45
    new-instance v13, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 46
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 47
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v9, 0x0

    const/4 v10, 0x6

    .line 48
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    const-string v8, "layout"

    invoke-static {v5, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v11

    const/4 v12, 0x1

    move-object v5, v13

    move v8, v4

    .line 49
    invoke-direct/range {v5 .. v12}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V

    .line 50
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    sget-object v14, Lcom/mopub/common/ViewabilityObstruction;->OVERLAY:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v13, v14}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 52
    invoke-virtual {p0, v13}, Lcom/mopub/mobileads/VastVideoViewController;->setTopGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V

    .line 53
    new-instance v5, Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    .line 54
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 55
    invoke-direct {v5, v6}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->setAnchorId(I)V

    const/4 v1, 0x4

    .line 57
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 59
    sget-object v6, Lcom/mopub/common/ViewabilityObstruction;->PROGRESS_BAR:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v5, v6}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 60
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoViewController;->setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V

    .line 61
    new-instance v13, Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    .line 62
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 63
    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v9, 0x8

    const/4 v10, 0x2

    .line 64
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v11

    const/4 v12, 0x0

    move-object v5, v13

    .line 65
    invoke-direct/range {v5 .. v12}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;-><init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;ZIIIZ)V

    .line 66
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v2, v13, v14}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 68
    invoke-virtual {p0, v13}, Lcom/mopub/mobileads/VastVideoViewController;->setBottomGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V

    .line 69
    new-instance v5, Lcom/mopub/mobileads/RadialCountdownWidget;

    .line 70
    iget-object v6, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 71
    invoke-direct {v5, v6}, Lcom/mopub/mobileads/RadialCountdownWidget;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    sget-object v1, Lcom/mopub/common/ViewabilityObstruction;->COUNTDOWN_TIMER:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v5, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 75
    sget-object v1, Lcom/mopub/mobileads/VastVideoViewController$b;->INSTANCE:Lcom/mopub/mobileads/VastVideoViewController$b;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    sget-object v1, Lcom/mopub/mobileads/VastVideoViewController$c;->INSTANCE:Lcom/mopub/mobileads/VastVideoViewController$c;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoViewController;->setRadialCountdownWidget(Lcom/mopub/mobileads/RadialCountdownWidget;)V

    .line 78
    iget-object v1, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v3

    :goto_4
    xor-int/2addr v5, v3

    .line 80
    new-instance v6, Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-direct {v6, v1, v4, v5}, Lcom/mopub/mobileads/VideoCtaButtonWidget;-><init>(Landroid/content/Context;ZZ)V

    .line 81
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 82
    sget-object v1, Lcom/mopub/common/ViewabilityObstruction;->CTA_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v6, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 83
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 84
    iget-object v4, v6, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {v4, v1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 85
    :cond_a
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iput-object v6, v0, Lcom/mopub/mobileads/VastVideoViewController;->p:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    .line 87
    new-instance v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    .line 88
    iget-object v4, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 89
    invoke-direct {v1, v4}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x8

    .line 90
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    sget-object v4, Lcom/mopub/common/ViewabilityObstruction;->CLOSE_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v2, v1, v4}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 93
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewController$a;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/VastVideoViewController$a;-><init>(Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->setOnTouchListenerToContent(Landroid/view/View$OnTouchListener;)V

    .line 94
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 95
    iget-object v4, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->a:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    .line 96
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_b
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 98
    iget-object v4, v1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->c:Lcom/mopub/volley/toolbox/ImageLoader;

    new-instance v5, Le/n/b/x0;

    invoke-direct {v5, v1, v2}, Le/n/b/x0;-><init>(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 99
    :cond_c
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setCloseButtonWidget(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V

    .line 100
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result v1

    if-nez v1, :cond_d

    .line 101
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;

    move-result-object v1

    .line 102
    iput-boolean v3, v1, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    .line 103
    invoke-virtual {v1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a()V

    .line 104
    :cond_d
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 106
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    .line 107
    invoke-direct {v2, p0, v3, v1}, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->m:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    .line 108
    new-instance v2, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-direct {v2, p0, v1}, Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;-><init>(Lcom/mopub/mobileads/VastVideoViewController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/mopub/mobileads/VastVideoViewController;->n:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    return-void

    .line 109
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfig does not have a video disk path"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfig is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "VastVideoConfigByteArray is null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AdData is invalid"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getHasCompanionAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCountdownTimerDuration()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoConfig;->getCountdownTimerDuration()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getCountdownTimerDuration()I

    move-result v0

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x3e80

    if-ge v0, v1, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V

    .line 9
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetMillis(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoViewController;->setShowCloseButtonDelay(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Failed to parse skipoffset "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffset()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static final synthetic access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    return-object p0
.end method

.method public static final synthetic access$getVastCompanionAdConfigs$p(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getVideoView$p(Lcom/mopub/mobileads/VastVideoViewController;)Ln3/y/e/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mopub/mobileads/VastVideoViewController;->e:Ln3/y/e/f0;

    return-object p0
.end method

.method public static final synthetic access$setVastCompanionAdConfigs$p(Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->i:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()V

    return-void
.end method

.method public static synthetic bottomGradientStripWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic clickThroughListener$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic closeButtonWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic ctaButtonWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic hasCompanionAd$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic iconView$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isCalibrationDone$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isClosing$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isComplete$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic progressBarWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic radialCountdownWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic shouldAllowClose$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic showCloseButtonDelay$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic topGradientStripWidget$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic updateCountdown$default(Lcom/mopub/mobileads/VastVideoViewController;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown(Z)V

    return-void

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateCountdown"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic vastIconConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic vastVideoConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/mopub/common/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public b(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isClosing()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->c:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onVideoFinish(I)V

    :cond_0
    return-void
.end method

.method public backButtonEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShouldAllowClose()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleImpression(Landroid/content/Context;I)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endSession()V

    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->S()Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-class v2, Landroidx/media2/player/MediaPlayer;

    const-string v3, "k"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-string v3, "audioFocusHandlerField"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "close"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Unable to call close() on the AudioFocusHandler due to an exception."

    aput-object v5, v4, v1

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 13
    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handlePause(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->isTracking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startSession()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->m:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->n:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    .line 5
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    if-lez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    int-to-long v6, v1

    const/4 v5, 0x3

    .line 7
    iget-object v1, v0, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, v0, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    new-instance v8, Ln3/y/c/n0;

    iget-object v3, v0, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x1

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Ln3/y/c/n0;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V

    .line 12
    invoke-virtual {v0, v8}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    move-object v0, v8

    :goto_0
    const-string v1, "mediaPlayer.seekTo(seeke\u2026MediaPlayer.SEEK_CLOSEST)"

    .line 13
    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->W()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 17
    :cond_3
    :goto_1
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 20
    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/mopub/mobileads/VastVideoViewController;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleResume(Landroid/content/Context;I)V

    :cond_4
    return-void
.end method

.method public final g(Landroid/content/Context;)Ln3/y/e/f0;
    .locals 5

    .line 1
    sget-object v0, Lcom/mopub/mobileads/factories/VideoViewFactory;->Companion:Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/factories/VideoViewFactory$Companion;->create(Landroid/content/Context;)Ln3/y/e/f0;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ln3/k/b/a;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 6
    new-instance v2, Ln3/y/c/z0;

    invoke-direct {v2, v1}, Ln3/y/c/z0;-><init>(Landroid/media/PlaybackParams;)V

    const-string v1, "PlaybackParams.Builder()\u2026.0f)\n            .build()"

    .line 7
    invoke-static {v2, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, v1, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 11
    :try_start_0
    iget-boolean v4, v1, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v4, :cond_0

    .line 12
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    monitor-exit v3

    goto :goto_0

    .line 13
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    new-instance v3, Ln3/y/c/m0;

    iget-object v4, v1, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v1, v4, v2}, Ln3/y/c/m0;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Ln3/y/c/z0;)V

    .line 15
    invoke-virtual {v1, v3}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    .line 16
    :goto_0
    sget-object v1, Landroidx/media/AudioAttributesCompat;->b:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 18
    new-instance v1, Landroidx/media/AudioAttributesImplApi26$a;

    invoke-direct {v1}, Landroidx/media/AudioAttributesImplApi26$a;-><init>()V

    goto :goto_1

    .line 19
    :cond_1
    new-instance v1, Landroidx/media/AudioAttributesImplApi21$a;

    invoke-direct {v1}, Landroidx/media/AudioAttributesImplApi21$a;-><init>()V

    :goto_1
    const/4 v2, 0x1

    .line 20
    invoke-interface {v1, v2}, Landroidx/media/AudioAttributesImpl$a;->a(I)Landroidx/media/AudioAttributesImpl$a;

    const/4 v2, 0x3

    .line 21
    iget-object v3, v1, Landroidx/media/AudioAttributesImplApi21$a;->a:Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 22
    new-instance v2, Landroidx/media/AudioAttributesCompat;

    invoke-interface {v1}, Landroidx/media/AudioAttributesImpl$a;->build()Landroidx/media/AudioAttributesImpl;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/AudioAttributesImpl;)V

    .line 23
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v4, v1, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 26
    :try_start_1
    iget-boolean v3, v1, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v3, :cond_2

    .line 27
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    monitor-exit v4

    goto :goto_2

    .line 28
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 29
    new-instance v3, Ln3/y/c/v0;

    iget-object v4, v1, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v1, v4, v2}, Ln3/y/c/v0;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media/AudioAttributesCompat;)V

    .line 30
    invoke-virtual {v1, v3}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    .line 31
    :goto_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getPlayerCallback()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    move-result-object v2

    .line 32
    invoke-virtual {v1, p1, v2}, Landroidx/media2/common/SessionPlayer;->k0(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V

    .line 33
    invoke-virtual {v0}, Ln3/y/e/f0;->getMediaControlView()Ln3/y/e/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 34
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    .line 35
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/y/e/f0;->setPlayer(Landroidx/media2/common/SessionPlayer;)V

    .line 36
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getClickThroughListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v1

    .line 38
    new-instance v2, Landroidx/media2/common/UriMediaItem$a;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastVideoConfig;->getDiskMediaFileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media2/common/UriMediaItem$a;-><init>(Landroid/net/Uri;)V

    .line 39
    new-instance v3, Landroidx/media2/common/UriMediaItem;

    invoke-direct {v3, v2}, Landroidx/media2/common/UriMediaItem;-><init>(Landroidx/media2/common/UriMediaItem$a;)V

    .line 40
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    instance-of v2, v3, Landroidx/media2/common/FileMediaItem;

    if-nez v2, :cond_5

    .line 42
    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 43
    :try_start_2
    iget-boolean v4, v1, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v4, :cond_3

    .line 44
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    monitor-exit v2

    goto :goto_3

    .line 45
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    new-instance v2, Ln3/y/c/w0;

    iget-object v4, v1, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v1, v4, v3}, Ln3/y/c/w0;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V

    .line 47
    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    .line 48
    :goto_3
    iget-object v3, v1, Landroidx/media2/player/MediaPlayer;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 49
    :try_start_3
    iget-boolean v2, v1, Landroidx/media2/player/MediaPlayer;->j:Z

    if-eqz v2, :cond_4

    .line 50
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->J0()Ln3/h/a/f;

    move-result-object v2

    monitor-exit v3

    goto :goto_4

    .line 51
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    new-instance v2, Ln3/y/c/u0;

    iget-object v3, v1, Landroidx/media2/player/MediaPlayer;->d:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v1, v3}, Ln3/y/c/u0;-><init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V

    .line 53
    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->G0(Landroidx/media2/player/MediaPlayer$v;)V

    .line 54
    :goto_4
    new-instance v3, Le/n/b/y0;

    invoke-direct {v3, v1, p0, p1}, Le/n/b/y0;-><init>(Landroidx/media2/player/MediaPlayer;Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/concurrent/Executor;)V

    .line 55
    invoke-virtual {v2, v3, p1}, Ln3/h/a/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 56
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 57
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    .line 58
    :cond_5
    check-cast v3, Landroidx/media2/common/FileMediaItem;

    const/4 p1, 0x0

    .line 59
    throw p1

    :catchall_2
    move-exception p1

    .line 60
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 61
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->x:Landroid/app/Activity;

    return-object v0
.end method

.method public getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "bottomGradientStripWidget"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getClickThroughListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->o:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "closeButtonWidget"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->p:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->l()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->q()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->y:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHasCompanionAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->v:Z

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "iconView"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getMediaPlayer()Landroidx/media2/player/MediaPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->f:Landroidx/media2/player/MediaPlayer;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoConfig;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerCallback()Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->g:Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;

    return-object v0
.end method

.method public getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "progressBarWidget"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "radialCountdownWidget"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->z:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShouldAllowClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Z

    return v0
.end method

.method public getShowCloseButtonDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    return v0
.end method

.method public getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "topGradientStripWidget"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->k:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->j:Lcom/mopub/mobileads/VastVideoConfig;

    return-object v0
.end method

.method public getVideoError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->w:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->m:Lcom/mopub/mobileads/VastVideoViewProgressRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->n:Lcom/mopub/mobileads/VastVideoViewCountdownRunnable;

    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    return-void
.end method

.method public handleExitTrackers()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isComplete()Z

    move-result v1

    const-string v2, "context"

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 4
    sget-object v3, Lcom/mopub/common/VideoEvent;->AD_SKIPPED:Lcom/mopub/common/VideoEvent;

    .line 5
    invoke-virtual {v1, v3, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 8
    invoke-static {v3, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleSkip(Landroid/content/Context;I)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 11
    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 14
    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleClose(Landroid/content/Context;I)V

    return-void
.end method

.method public handleIconDisplay(I)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastIconConfig;->getOffsetMS()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-nez v1, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 4
    iget-object v3, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v4

    .line 6
    sget v5, Lcom/mopub/mobileads/VastWebView;->f:I

    .line 7
    invoke-static {v3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    new-instance v5, Lcom/mopub/mobileads/VastWebView;

    invoke-direct {v5, v3}, Lcom/mopub/mobileads/VastWebView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastResource;->initializeWebView(Lcom/mopub/mobileads/VastWebView;)V

    const-string v3, "it"

    .line 11
    invoke-static {v5, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/mopub/mobileads/VastVideoViewController$e;

    invoke-direct {v3, v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$e;-><init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v5, v3}, Lcom/mopub/mobileads/VastWebView;->setVastWebViewClickListener(Lcom/mopub/mobileads/VastWebView$a;)V

    .line 12
    new-instance v3, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;

    invoke-direct {v3, v1, p0}, Lcom/mopub/mobileads/VastVideoViewController$handleIconDisplay$$inlined$let$lambda$2;-><init>(Lcom/mopub/mobileads/VastIconConfig;Lcom/mopub/mobileads/VastVideoViewController;)V

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 15
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 16
    iget-object v6, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 17
    invoke-static {v4, v6}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 18
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 19
    iget-object v6, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 20
    invoke-static {v1, v6}, Lcom/mopub/common/util/Dips;->asIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 21
    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/16 v1, 0xc

    int-to-float v1, v1

    .line 22
    iget-object v4, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 23
    invoke-static {v1, v4}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 24
    iget-object v6, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 25
    invoke-static {v1, v6}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v3, v4, v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/BaseVideoViewController;->getLayout()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 29
    sget-object v3, Lcom/mopub/common/ViewabilityObstruction;->INDUSTRY_ICON:Lcom/mopub/common/ViewabilityObstruction;

    .line 30
    invoke-virtual {v1, v5, v3}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    goto :goto_1

    .line 31
    :cond_3
    new-instance v5, Landroid/view/View;

    .line 32
    iget-object v1, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    .line 33
    invoke-direct {v5, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoViewController;->setIconView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_4
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 36
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 37
    iget-object v3, p0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v4, "context"

    .line 38
    invoke-static {v3, v4}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, p1, v1}, Lcom/mopub/mobileads/VastIconConfig;->handleImpression(Landroid/content/Context;ILjava/lang/String;)V

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastIconConfig;->getDurationMS()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_6

    .line 40
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 41
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public handleViewabilityQuartileEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "enumValue"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcom/mopub/common/VideoEvent;->valueOf(Ljava/lang/String;)Lcom/mopub/common/VideoEvent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->l:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    :cond_0
    return-void
.end method

.method public isCalibrationDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->t:Z

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->u:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:Z

    return v0
.end method

.method public setBottomGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->bottomGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-void
.end method

.method public setCalibrationDone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->t:Z

    return-void
.end method

.method public setCloseButtonWidget(Lcom/mopub/mobileads/VastVideoCloseButtonWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->closeButtonWidget:Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    return-void
.end method

.method public setClosing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->u:Z

    return-void
.end method

.method public setComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->q:Z

    return-void
.end method

.method public setHasCompanionAd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->v:Z

    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    return-void
.end method

.method public setProgressBarWidget(Lcom/mopub/mobileads/VastVideoProgressBarWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->progressBarWidget:Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    return-void
.end method

.method public setRadialCountdownWidget(Lcom/mopub/mobileads/RadialCountdownWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->radialCountdownWidget:Lcom/mopub/mobileads/RadialCountdownWidget;

    return-void
.end method

.method public setShouldAllowClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->r:Z

    return-void
.end method

.method public setShowCloseButtonDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->s:I

    return-void
.end method

.method public setTopGradientStripWidget(Lcom/mopub/mobileads/VastVideoGradientStripWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->topGradientStripWidget:Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    return-void
.end method

.method public setVideoError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController;->w:Z

    return-void
.end method

.method public updateCountdown(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->isCalibrationDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastVideoViewController;->setShouldAllowClose(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;

    move-result-object v0

    .line 11
    iput-boolean p1, v0, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    .line 12
    invoke-virtual {v0}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a()V

    :cond_2
    return-void
.end method

.method public updateProgressBar()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->updateProgress(I)V

    return-void
.end method
