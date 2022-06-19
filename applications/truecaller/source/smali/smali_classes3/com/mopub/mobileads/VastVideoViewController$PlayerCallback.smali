.class public final Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;
.super Landroidx/media2/player/MediaPlayer$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastVideoViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;",
        "Landroidx/media2/player/MediaPlayer$w;",
        "Landroidx/media2/common/SessionPlayer;",
        "player",
        "",
        "playerState",
        "Ls1/s;",
        "onPlayerStateChanged",
        "(Landroidx/media2/common/SessionPlayer;I)V",
        "onPlaybackCompleted",
        "(Landroidx/media2/common/SessionPlayer;)V",
        "",
        "position",
        "onSeekCompleted",
        "(Landroidx/media2/common/SessionPlayer;J)V",
        "",
        "a",
        "Z",
        "getComplete",
        "()Z",
        "setComplete",
        "(Z)V",
        "complete",
        "<init>",
        "(Lcom/mopub/mobileads/VastVideoViewController;)V",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-direct {p0}, Landroidx/media2/player/MediaPlayer$w;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Z

    return v0
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 3

    const-string v0, "player"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 2
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown$default(Lcom/mopub/mobileads/VastVideoViewController;ZILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setComplete(Z)V

    .line 4
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVideoError()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->getRemainingProgressTrackerCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/mopub/common/VideoEvent;->AD_COMPLETE:Lcom/mopub/common/VideoEvent;

    .line 7
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    .line 8
    invoke-virtual {p1, v0, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    .line 9
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 10
    iget-object v0, v0, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v2, "context"

    .line 11
    invoke-static {v0, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/mopub/mobileads/VastVideoConfig;->handleComplete(Landroid/content/Context;I)V

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getVideoView$p(Lcom/mopub/mobileads/VastVideoViewController;)Ln3/y/e/f0;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iget-object v2, p1, Lcom/mopub/mobileads/VastVideoViewController;->iconView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 15
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getIconView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getTopGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    .line 17
    iput-boolean v1, p1, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->c:Z

    .line 18
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->a()V

    .line 19
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getBottomGradientStripWidget()Lcom/mopub/mobileads/VastVideoGradientStripWidget;

    move-result-object p1

    .line 20
    iput-boolean v1, p1, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->c:Z

    .line 21
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->a()V

    .line 22
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getCtaButtonWidget()Lcom/mopub/mobileads/VideoCtaButtonWidget;

    move-result-object p1

    .line 23
    iput-boolean v1, p1, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    .line 24
    iput-boolean v1, p1, Lcom/mopub/mobileads/VideoCtaButtonWidget;->d:Z

    .line 25
    invoke-virtual {p1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a()V

    .line 26
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getCloseButtonWidget()Lcom/mopub/mobileads/VastVideoCloseButtonWidget;

    move-result-object p1

    .line 27
    iget-boolean v0, p1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->d:Z

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p1, Lcom/mopub/mobileads/VastVideoCloseButtonWidget;->b:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/mopub/mobileads/base/R$drawable;->ic_mopub_close_button:I

    .line 30
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 31
    invoke-static {p1, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v0

    .line 34
    iget-object p1, p1, Lcom/mopub/mobileads/BaseVideoViewController;->c:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onVideoFinish(I)V

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 6

    const-string v0, "player"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/media2/common/SessionPlayer$a;->onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V

    const/4 p1, 0x1

    if-eq p2, p1, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 2
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, p1, [Ljava/lang/Object;

    const-string v5, "Player state changed to "

    .line 3
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_3

    if-eq p2, p1, :cond_2

    if-eq p2, v0, :cond_1

    if-eq p2, v2, :cond_0

    const-string p1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string p1, "PLAYER_STATE_ERROR"

    goto :goto_0

    :cond_1
    const-string p1, "PLAYER_STATE_PLAYING"

    goto :goto_0

    :cond_2
    const-string p1, "PLAYER_STATE_PAUSED"

    goto :goto_0

    :cond_3
    const-string p1, "PLAYER_STATE_IDLE"

    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    .line 4
    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 5
    :cond_4
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p2

    .line 6
    sget-object v0, Lcom/mopub/common/VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/VideoEvent;

    .line 7
    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v2

    .line 8
    invoke-virtual {p2, v0, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    .line 9
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p2}, Lcom/mopub/mobileads/VastVideoViewController;->access$stopRunnables(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 10
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoViewController;->updateCountdown(Z)V

    .line 11
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "Video cannot be played."

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const-string v0, "com.mopub.action.fullscreen.fail"

    .line 14
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/BaseVideoViewController;->a(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/VastVideoViewController;->setVideoError(Z)V

    .line 16
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getVastVideoConfig()Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 18
    iget-object p2, p2, Lcom/mopub/mobileads/BaseVideoViewController;->a:Landroid/content/Context;

    const-string v0, "context"

    .line 19
    invoke-static {p2, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->GENERAL_LINEAR_AD_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v1

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V

    goto :goto_1

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->hasImpressionOccurred()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 23
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 24
    sget-object p2, Lcom/mopub/common/VideoEvent;->AD_RESUMED:Lcom/mopub/common/VideoEvent;

    .line 25
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 26
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    goto :goto_1

    .line 27
    :cond_6
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->trackImpression()V

    goto :goto_1

    .line 28
    :cond_7
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->hasImpressionOccurred()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 29
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {p1}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object p1

    .line 30
    sget-object p2, Lcom/mopub/common/VideoEvent;->AD_PAUSED:Lcom/mopub/common/VideoEvent;

    .line 31
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 0

    const-string p2, "player"

    invoke-static {p1, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media2/player/MediaPlayer;->W()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final setComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoViewController$PlayerCallback;->a:Z

    return-void
.end method
