.class public final Le/n/b/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Ls1/s;",
        "run",
        "()V",
        "com/mopub/mobileads/VastVideoViewController$createVideoView$1$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/player/MediaPlayer;

.field public final synthetic b:Lcom/mopub/mobileads/VastVideoViewController;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/media2/player/MediaPlayer;Lcom/mopub/mobileads/VastVideoViewController;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Le/n/b/y0;->a:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    iput-object p3, p0, Le/n/b/y0;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$getExternalViewabilitySessionManager$p(Lcom/mopub/mobileads/VastVideoViewController;)Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iget-object v1, p0, Le/n/b/y0;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->onVideoPrepared(J)V

    .line 2
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$adjustSkipOffset(Lcom/mopub/mobileads/VastVideoViewController;)V

    .line 3
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getMediaPlayer()Landroidx/media2/player/MediaPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->s1(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    .line 5
    iget-object v1, v0, Lcom/mopub/mobileads/BaseVideoViewController;->c:Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    .line 6
    invoke-static {v0}, Lcom/mopub/mobileads/VastVideoViewController;->access$getVastCompanionAdConfigs$p(Lcom/mopub/mobileads/VastVideoViewController;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Le/n/b/y0;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->q()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onCompanionAdsReady(Ljava/util/Set;I)V

    .line 7
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getProgressBarWidget()Lcom/mopub/mobileads/VastVideoProgressBarWidget;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/n/b/y0;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->q()J

    move-result-wide v1

    long-to-int v1, v1

    .line 9
    iget-object v2, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v2}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v2

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoProgressBarWidget;->calibrateAndMakeVisible(II)V

    .line 11
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 12
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastVideoViewController;->getRadialCountdownWidget()Lcom/mopub/mobileads/RadialCountdownWidget;

    move-result-object v0

    iget-object v1, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastVideoViewController;->getShowCloseButtonDelay()I

    move-result v1

    iget-object v2, p0, Le/n/b/y0;->a:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->l()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    .line 13
    iget-object v0, p0, Le/n/b/y0;->b:Lcom/mopub/mobileads/VastVideoViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoViewController;->setCalibrationDone(Z)V

    return-void
.end method
