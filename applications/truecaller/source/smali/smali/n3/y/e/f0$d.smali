.class public Ln3/y/e/f0$d;
.super Ln3/y/e/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/f0;


# direct methods
.method public constructor <init>(Ln3/y/e/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    invoke-direct {p0}, Ln3/y/e/x$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/y/e/x;Landroidx/media2/common/MediaItem;)V
    .locals 2

    .line 1
    sget-boolean v0, Ln3/y/e/f0;->r:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCurrentMediaItemChanged(): MediaItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    invoke-virtual {p1, p2}, Ln3/y/e/f0;->c(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public e(Ln3/y/e/x;I)V
    .locals 0

    .line 1
    sget-boolean p2, Ln3/y/e/f0;->r:Z

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method public h(Ln3/y/e/x;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V
    .locals 6

    .line 1
    sget-boolean p2, Ln3/y/e/f0;->r:Z

    const-wide/16 v0, 0x3e8

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubtitleData(): TrackInfo: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", getCurrentPosition: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Ln3/y/e/x;->f()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", getStartTimeUs(): "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-wide v2, p4, Landroidx/media2/common/SubtitleData;->a:J

    .line 5
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", diff: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-wide v2, p4, Landroidx/media2/common/SubtitleData;->a:J

    .line 7
    div-long/2addr v2, v0

    invoke-virtual {p1}, Ln3/y/e/x;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms, getDurationUs(): "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-wide v2, p4, Landroidx/media2/common/SubtitleData;->b:J

    .line 9
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->o:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p3, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->m:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/e/b0;

    if-eqz p1, :cond_8

    .line 13
    iget-wide p2, p4, Landroidx/media2/common/SubtitleData;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    .line 14
    iget-object v2, p4, Landroidx/media2/common/SubtitleData;->c:[B

    const/4 v3, 0x1

    .line 15
    invoke-virtual {p1, v2, v3, p2, p3}, Ln3/y/e/b0;->c([BZJ)V

    .line 16
    iget-wide v2, p4, Landroidx/media2/common/SubtitleData;->a:J

    .line 17
    iget-wide v4, p4, Landroidx/media2/common/SubtitleData;->b:J

    add-long/2addr v2, v4

    .line 18
    div-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-eqz p4, :cond_8

    const-wide/16 v4, -0x1

    cmp-long p4, p2, v4

    if-eqz p4, :cond_8

    .line 19
    iget-object p4, p1, Ln3/y/e/b0;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p4, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/e/b0$c;

    if-eqz p2, :cond_8

    .line 20
    iput-wide v2, p2, Ln3/y/e/b0$c;->c:J

    .line 21
    iget-object p1, p1, Ln3/y/e/b0;->a:Landroid/util/LongSparseArray;

    .line 22
    iget-wide p3, p2, Ln3/y/e/b0$c;->d:J

    invoke-virtual {p1, p3, p4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p3

    const/4 p4, 0x0

    if-ltz p3, :cond_6

    .line 23
    iget-object v2, p2, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    if-nez v2, :cond_4

    .line 24
    iget-object v2, p2, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    if-nez v2, :cond_3

    .line 25
    invoke-virtual {p1, p3}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_0

    .line 26
    :cond_3
    invoke-virtual {p1, p3, v2}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 27
    :cond_4
    :goto_0
    iget-object p3, p2, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    if-eqz p3, :cond_5

    .line 28
    iget-object v2, p2, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    iput-object v2, p3, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    .line 29
    iput-object p4, p2, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    .line 30
    :cond_5
    iget-object v2, p2, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    if-eqz v2, :cond_6

    .line 31
    iput-object p3, v2, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    .line 32
    iput-object p4, p2, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    .line 33
    :cond_6
    iget-wide v2, p2, Ln3/y/e/b0$c;->c:J

    cmp-long p3, v2, v0

    if-ltz p3, :cond_8

    .line 34
    iput-object p4, p2, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    .line 35
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/y/e/b0$c;

    iput-object p3, p2, Ln3/y/e/b0$c;->a:Ln3/y/e/b0$c;

    if-eqz p3, :cond_7

    .line 36
    iput-object p2, p3, Ln3/y/e/b0$c;->b:Ln3/y/e/b0$c;

    .line 37
    :cond_7
    iget-wide p3, p2, Ln3/y/e/b0$c;->c:J

    invoke-virtual {p1, p3, p4, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 38
    iget-wide p3, p2, Ln3/y/e/b0$c;->c:J

    iput-wide p3, p2, Ln3/y/e/b0$c;->d:J

    :cond_8
    return-void
.end method

.method public i(Ln3/y/e/x;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 1
    sget-boolean v0, Ln3/y/e/f0;->r:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackDeselected(): deselected track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/e/b0;

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->n:Ln3/y/e/a0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ln3/y/e/a0;->c(Ln3/y/e/b0;)Z

    :cond_2
    return-void
.end method

.method public j(Ln3/y/e/x;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 2

    .line 1
    sget-boolean v0, Ln3/y/e/f0;->r:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackSelected(): selected track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->m:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/y/e/b0;

    if-eqz p1, :cond_2

    .line 5
    iget-object p2, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p2, p2, Ln3/y/e/f0;->n:Ln3/y/e/a0;

    invoke-virtual {p2, p1}, Ln3/y/e/a0;->c(Ln3/y/e/b0;)Z

    :cond_2
    return-void
.end method

.method public k(Ln3/y/e/x;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/e/x;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Ln3/y/e/f0;->r:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackInfoChanged(): tracks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/f0;->d(Ln3/y/e/x;Ljava/util/List;)V

    .line 5
    iget-object p2, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    invoke-virtual {p1}, Ln3/y/e/x;->e()Landroidx/media2/common/MediaItem;

    move-result-object p1

    invoke-virtual {p2, p1}, Ln3/y/e/f0;->c(Landroidx/media2/common/MediaItem;)V

    return-void
.end method

.method public l(Ln3/y/e/x;Landroidx/media2/common/VideoSize;)V
    .locals 2

    .line 1
    sget-boolean v0, Ln3/y/e/f0;->r:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged(): size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/f0$d;->m(Ln3/y/e/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget v1, v0, Ln3/y/e/f0;->k:I

    if-nez v1, :cond_3

    .line 5
    iget v1, p2, Landroidx/media2/common/VideoSize;->b:I

    if-lez v1, :cond_3

    .line 6
    iget p2, p2, Landroidx/media2/common/VideoSize;->a:I

    if-lez p2, :cond_3

    .line 7
    iget-object p2, v0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Ln3/y/e/x;->h()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    iget-object p2, v0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    .line 9
    invoke-virtual {p2}, Ln3/y/e/x;->h()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p1}, Ln3/y/e/x;->k()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 11
    iget-object v0, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    invoke-virtual {v0, p1, p2}, Ln3/y/e/f0;->d(Ln3/y/e/x;Ljava/util/List;)V

    .line 12
    :cond_3
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->e:Ln3/y/e/e0;

    invoke-virtual {p1}, Landroid/view/TextureView;->forceLayout()V

    .line 13
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object p1, p1, Ln3/y/e/f0;->f:Ln3/y/e/d0;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->forceLayout()V

    .line 14
    iget-object p1, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final m(Ln3/y/e/x;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/e/f0$d;->a:Ln3/y/e/f0;

    iget-object v0, v0, Ln3/y/e/f0;->g:Ln3/y/e/x;

    if-eq p1, v0, :cond_1

    .line 2
    sget-boolean p1, Ln3/y/e/f0;->r:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
