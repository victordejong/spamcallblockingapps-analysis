.class public abstract Le/m/a/c/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/t$b;,
        Le/m/a/c/t$a;
    }
.end annotation


# instance fields
.field public final window:Le/m/a/c/y0$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/y0$c;

    invoke-direct {v0}, Le/m/a/c/y0$c;-><init>()V

    iput-object v0, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 2

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final getBufferedPercentage()I
    .locals 9

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getBufferedPosition()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Le/m/a/c/q0;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v0, v4

    const/16 v7, 0x64

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    .line 3
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 4
    invoke-static {v0, v8, v7}, Le/m/a/c/q1/d0;->f(III)I

    move-result v7

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v8

    :goto_1
    return v7
.end method

.method public final getContentDuration()J
    .locals 3

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    invoke-virtual {v0}, Le/m/a/c/y0$c;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-object v0, v0, Le/m/a/c/y0$c;->c:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getCurrentTag()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-object v0, v0, Le/m/a/c/y0$c;->b:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getNextWindowIndex()I
    .locals 4

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    invoke-direct {p0}, Le/m/a/c/t;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Le/m/a/c/q0;->getShuffleModeEnabled()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Le/m/a/c/y0;->e(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getPreviousWindowIndex()I
    .locals 5

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    invoke-direct {p0}, Le/m/a/c/t;->getRepeatModeForNavigation()I

    move-result v3

    invoke-interface {p0}, Le/m/a/c/q0;->getShuffleModeEnabled()Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v2, 0x2

    if-ne v3, v2, :cond_2

    .line 4
    invoke-virtual {v0}, Le/m/a/c/y0;->a()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Le/m/a/c/y0;->c()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_0
    move v2, v0

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    move v2, v1

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v0}, Le/m/a/c/y0;->a()I

    move-result v0

    if-ne v1, v0, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v1, -0x1

    :goto_1
    return v2
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/t;->getNextWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/t;->getPreviousWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-boolean v0, v0, Le/m/a/c/y0$c;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowLive()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-boolean v0, v0, Le/m/a/c/y0$c;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentTimeline()Le/m/a/c/y0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/m/a/c/y0;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Le/m/a/c/t;->window:Le/m/a/c/y0$c;

    invoke-virtual {v0, v1, v2}, Le/m/a/c/y0;->m(ILe/m/a/c/y0$c;)Le/m/a/c/y0$c;

    move-result-object v0

    iget-boolean v0, v0, Le/m/a/c/y0$c;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Le/m/a/c/q0;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Le/m/a/c/q0;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/t;->getNextWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/t;->seekToDefaultPosition(I)V

    :cond_0
    return-void
.end method

.method public final previous()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/c/t;->getPreviousWindowIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/t;->seekToDefaultPosition(I)V

    :cond_0
    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Le/m/a/c/q0;->seekTo(IJ)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 1

    .line 1
    invoke-interface {p0}, Le/m/a/c/q0;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Le/m/a/c/t;->seekToDefaultPosition(I)V

    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-interface {p0, p1, v0, v1}, Le/m/a/c/q0;->seekTo(IJ)V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, v0}, Le/m/a/c/q0;->stop(Z)V

    return-void
.end method
