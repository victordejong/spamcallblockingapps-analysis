.class public Ln3/y/e/x$b;
.super Landroidx/media2/common/SessionPlayer$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/x;


# direct methods
.method public constructor <init>(Ln3/y/e/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    invoke-direct {p0}, Landroidx/media2/common/SessionPlayer$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentMediaItemChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/media2/common/MediaItem;->e()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Ln3/y/e/x;->h:Landroidx/media2/common/MediaMetadata;

    .line 2
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->b(Ln3/y/e/x;Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public onPlaybackCompleted(Landroidx/media2/common/SessionPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1}, Ln3/y/e/x$a;->c(Ln3/y/e/x;)V

    return-void
.end method

.method public onPlaybackSpeedChanged(Landroidx/media2/common/SessionPlayer;F)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->d(Ln3/y/e/x;F)V

    return-void
.end method

.method public onPlayerStateChanged(Landroidx/media2/common/SessionPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget v0, p1, Ln3/y/e/x;->f:I

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, p1, Ln3/y/e/x;->f:I

    .line 3
    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->e(Ln3/y/e/x;I)V

    return-void
.end method

.method public onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object p2, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Ln3/y/e/x$a;->f(Ln3/y/e/x;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method public onSeekCompleted(Landroidx/media2/common/SessionPlayer;J)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/e/x$a;->g(Ln3/y/e/x;J)V

    return-void
.end method

.method public onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Ln3/y/e/x$a;->h(Ln3/y/e/x;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    return-void
.end method

.method public onTrackDeselected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->i(Ln3/y/e/x;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public onTrackSelected(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->j(Ln3/y/e/x;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->k(Ln3/y/e/x;Ljava/util/List;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/VideoSize;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/y/e/x$b;->a:Ln3/y/e/x;

    iget-object v0, p1, Ln3/y/e/x;->c:Ln3/y/e/x$a;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/x$a;->l(Ln3/y/e/x;Landroidx/media2/common/VideoSize;)V

    return-void
.end method
