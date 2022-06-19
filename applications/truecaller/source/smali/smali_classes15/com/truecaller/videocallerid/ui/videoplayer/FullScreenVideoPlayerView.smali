.class public final Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;
.super Le/a/k/a/k/o;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001d\u0010 \u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;",
        "Le/a/k/a/k/c;",
        "Lcom/google/android/exoplayer2/SimpleExoPlayer;",
        "player",
        "Lcom/google/android/exoplayer2/ui/PlayerView;",
        "e",
        "(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;",
        "Le/a/k/a/k/l;",
        "config",
        "",
        "analyticsContext",
        "Ls1/s;",
        "g",
        "(Le/a/k/a/k/l;Ljava/lang/String;)V",
        "",
        "mute",
        "f",
        "(Z)V",
        "visible",
        "E",
        "getVideoPlayerView",
        "()Lcom/google/android/exoplayer2/ui/PlayerView;",
        "getVideoUrl",
        "()Ljava/lang/String;",
        "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;",
        "getAnalyticsInfo",
        "()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;",
        "Le/a/k/m/q;",
        "h",
        "Ls1/g;",
        "getBinding",
        "()Le/a/k/m/q;",
        "binding",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final h:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Le/a/k/a/k/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Ls1/h;->c:Ls1/h;

    new-instance v0, Le/a/k/a/k/m;

    invoke-direct {v0, p0, p1}, Le/a/k/a/k/m;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroid/content/Context;)V

    invoke-static {p2, v0}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->h:Ls1/g;

    return-void
.end method

.method private final getBinding()Le/a/k/m/q;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/m/q;

    return-object v0
.end method


# virtual methods
.method public E(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->getBinding()Le/a/k/m/q;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/q;->b:Landroidx/constraintlayout/widget/Group;

    const-string v1, "binding.loadingGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 2

    const-string v0, "player"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->getBinding()Le/a/k/m/q;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/q;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v1, "binding.playerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Le/m/a/c/q0;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->getBinding()Le/a/k/m/q;

    move-result-object p1

    iget-object p1, p1, Le/a/k/m/q;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/k/a/k/c;->getPresenter$video_caller_id_release()Le/a/k/a/k/w;

    move-result-object v0

    check-cast v0, Le/a/k/a/k/r;

    .line 2
    iget-object v1, v0, Le/a/k/a/k/r;->k:Le/a/k/a/k/z/a;

    instance-of v2, v1, Le/a/k/a/k/z/a$a;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type com.truecaller.videocallerid.ui.videoplayer.playing.AudioState.HasAudio"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/k/a/k/z/a$a;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {p1, v0}, Le/a/k/a/k/z/c;->a(Lq3/a/i0;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    .line 6
    iget v1, v1, Le/a/k/a/k/z/a$a;->b:F

    .line 7
    invoke-interface {p1, v0, v1}, Le/a/k/a/k/z/c;->g(Lq3/a/i0;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Le/a/k/a/k/l;Ljava/lang/String;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView$a;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Le/a/k/a/k/l;Ljava/lang/String;)V

    invoke-static {p0, v0}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    return-void
.end method

.method public final getAnalyticsInfo()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k/a/k/c;->getPresenter$video_caller_id_release()Le/a/k/a/k/w;

    move-result-object v0

    check-cast v0, Le/a/k/a/k/r;

    .line 2
    iget-object v0, v0, Le/a/k/a/k/r;->g:Le/a/k/a/k/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/k/a/k/l;->a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getVideoPlayerView()Lcom/google/android/exoplayer2/ui/PlayerView;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;->getBinding()Le/a/k/m/q;

    move-result-object v0

    iget-object v0, v0, Le/a/k/m/q;->c:Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v1, "binding.playerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k/a/k/c;->getPresenter$video_caller_id_release()Le/a/k/a/k/w;

    move-result-object v0

    check-cast v0, Le/a/k/a/k/r;

    .line 2
    iget-object v0, v0, Le/a/k/a/k/r;->p:Le/a/k/a/k/z/c;

    invoke-interface {v0}, Le/a/k/a/k/z/c;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
