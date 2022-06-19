.class public final Ln3/y/c/j0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ln3/y/c/j0$c;

.field public final c:Ln3/y/b/a/k0;

.field public final d:Ln3/y/b/a/w0/h$a;

.field public final e:Ln3/y/b/a/t0/j;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/c/j0$d;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ln3/y/c/j0$b;

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/y/b/a/k0;Ln3/y/c/j0$c;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/c/j0$e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/y/c/j0$e;->c:Ln3/y/b/a/k0;

    .line 4
    iput-object p3, p0, Ln3/y/c/j0$e;->b:Ln3/y/c/j0$c;

    .line 5
    sget p2, Ln3/y/b/a/x0/x;->a:I

    const/4 p2, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p3

    .line 8
    iget-object p3, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p3, "?"

    .line 9
    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "MediaPlayer2"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-static {p3, v2}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "/"

    const-string v4, " (Linux;Android "

    invoke-static {v2, v1, v3, p3, v4}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ") "

    const-string v2, "ExoPlayerLib/2.10.4"

    invoke-static {p3, v0, v1, v2}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 10
    new-instance v0, Ln3/y/b/a/w0/q;

    invoke-direct {v0, p1, p3}, Ln3/y/b/a/w0/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Ln3/y/c/j0$e;->d:Ln3/y/b/a/w0/h$a;

    .line 11
    new-instance p1, Ln3/y/b/a/t0/j;

    new-array p2, p2, [Ln3/y/b/a/t0/t;

    invoke-direct {p1, p2}, Ln3/y/b/a/t0/j;-><init>([Ln3/y/b/a/t0/t;)V

    iput-object p1, p0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    .line 12
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    .line 13
    new-instance p1, Ln3/y/c/j0$b;

    invoke-direct {p1}, Ln3/y/c/j0$b;-><init>()V

    iput-object p1, p0, Ln3/y/c/j0$e;->g:Ln3/y/c/j0$b;

    const-wide/16 p1, -0x1

    .line 14
    iput-wide p1, p0, Ln3/y/c/j0$e;->h:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/c/j0$d;

    invoke-virtual {p0, v0}, Ln3/y/c/j0$e;->e(Ln3/y/c/j0$d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/c/j0$d;

    iget-object v0, v0, Ln3/y/c/j0$d;->a:Landroidx/media2/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/c/j0$d;

    iget-boolean v0, v0, Ln3/y/c/j0$d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/c/j0$e;->c:Ln3/y/b/a/k0;

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/k0;->n()V

    .line 4
    iget-object v0, v0, Ln3/y/b/a/k0;->c:Ln3/y/b/a/t;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Ln3/y/c/j0$e;->c:Ln3/y/b/a/k0;

    invoke-virtual {v0}, Ln3/y/b/a/k0;->getCurrentWindowIndex()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p0, Ln3/y/c/j0$e;->b:Ln3/y/c/j0$c;

    invoke-virtual {p0}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v3

    check-cast v2, Ln3/y/c/m;

    const/4 v4, 0x5

    .line 7
    invoke-static {v2, v3, v4, v1}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    iget-object v3, p0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/c/j0$d;

    invoke-virtual {p0, v3}, Ln3/y/c/j0$e;->e(Ln3/y/c/j0$d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Ln3/y/c/j0$e;->b:Ln3/y/c/j0$c;

    invoke-virtual {p0}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object v2

    check-cast p1, Ln3/y/c/m;

    const/4 v3, 0x2

    .line 10
    invoke-static {p1, v2, v3, v1}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 11
    :cond_3
    iget-object p1, p0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    invoke-virtual {p1, v1, v0}, Ln3/y/b/a/t0/j;->D(II)V

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Ln3/y/c/j0$e;->i:J

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Ln3/y/c/j0$e;->h:J

    .line 14
    iget-object p1, p0, Ln3/y/c/j0$e;->c:Ln3/y/b/a/k0;

    invoke-virtual {p1}, Ln3/y/b/a/k0;->e()I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 15
    iget-wide v2, p0, Ln3/y/c/j0$e;->h:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ln3/y/c/j0$e;->h:J

    :cond_5
    :goto_1
    return-void
.end method

.method public final e(Ln3/y/c/j0$d;)V
    .locals 2

    .line 1
    iget-object p1, p1, Ln3/y/c/j0$d;->a:Landroidx/media2/common/MediaItem;

    .line 2
    :try_start_0
    instance-of v0, p1, Landroidx/media2/common/FileMediaItem;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p1, Landroidx/media2/common/CallbackMediaItem;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/CallbackMediaItem;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    .line 5
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/common/FileMediaItem;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    throw v1

    .line 8
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error releasing media item "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    invoke-virtual {v1}, Ln3/y/b/a/t0/j;->B()I

    move-result v1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-le v1, v3, :cond_1

    .line 3
    iget-object v4, v0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    invoke-virtual {v4, v3, v1}, Ln3/y/b/a/t0/j;->D(II)V

    .line 4
    :goto_1
    iget-object v1, v0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 5
    iget-object v1, v0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/c/j0$d;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/common/MediaItem;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 8
    iget-object v1, v0, Ln3/y/c/j0$e;->b:Ln3/y/c/j0$c;

    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v6, v3}, Ln3/y/c/m;->i(Landroidx/media2/common/MediaItem;I)V

    return-void

    .line 9
    :cond_2
    iget-object v15, v0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    .line 10
    iget-object v8, v0, Ln3/y/c/j0$e;->d:Ln3/y/b/a/w0/h$a;

    .line 11
    instance-of v7, v5, Landroidx/media2/common/FileMediaItem;

    if-nez v7, :cond_17

    .line 12
    iget-object v9, v0, Ln3/y/c/j0$e;->a:Landroid/content/Context;

    .line 13
    sget-object v10, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    .line 14
    instance-of v14, v5, Landroidx/media2/common/UriMediaItem;

    if-eqz v14, :cond_e

    .line 15
    move-object v7, v5

    check-cast v7, Landroidx/media2/common/UriMediaItem;

    .line 16
    iget-object v7, v7, Landroidx/media2/common/UriMediaItem;->e:Landroid/net/Uri;

    .line 17
    sget v10, Ln3/y/b/a/x0/x;->a:I

    .line 18
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    if-nez v10, :cond_3

    goto :goto_3

    .line 19
    :cond_3
    invoke-static {v10}, Ln3/y/b/a/x0/x;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, ".mpd"

    .line 20
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    const-string v12, ".m3u8"

    .line 21
    invoke-virtual {v10, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v10, v11

    goto :goto_4

    :cond_5
    const-string v12, ".*\\.ism(l)?(/manifest(\\(.+\\))?)?"

    .line 22
    invoke-virtual {v10, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x3

    :goto_4
    if-ne v10, v11, :cond_7

    .line 23
    new-instance v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;

    invoke-direct {v6, v8}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;-><init>(Ln3/y/b/a/w0/h$a;)V

    .line 24
    iget-boolean v8, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->h:Z

    xor-int/2addr v8, v3

    invoke-static {v8}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 25
    iput-object v5, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->i:Ljava/lang/Object;

    .line 26
    iput-boolean v3, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->h:Z

    .line 27
    new-instance v3, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    iget-object v8, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->a:Ln3/y/b/a/t0/q0/e;

    iget-object v9, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->b:Ln3/y/b/a/t0/q0/f;

    iget-object v10, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->e:Ln3/y/b/a/t0/l;

    iget-object v11, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->f:Ln3/y/b/a/p0/c;

    iget-object v12, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->g:Ln3/y/b/a/w0/z;

    iget-object v13, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->d:Ln3/y/b/a/t0/q0/r/i$a;

    move-object/from16 p1, v4

    iget-object v4, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->c:Ln3/y/b/a/t0/q0/r/h;

    .line 28
    check-cast v13, Ln3/y/b/a/t0/q0/r/b;

    .line 29
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ln3/y/b/a/t0/q0/r/c;

    invoke-direct {v13, v8, v12, v4}, Ln3/y/b/a/t0/q0/r/c;-><init>(Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/q0/r/h;)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 30
    iget-object v4, v6, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$Factory;->i:Ljava/lang/Object;

    const/16 v27, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v26, v4

    invoke-direct/range {v16 .. v27}, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;-><init>(Landroid/net/Uri;Ln3/y/b/a/t0/q0/e;Ln3/y/b/a/t0/q0/f;Ln3/y/b/a/t0/l;Ln3/y/b/a/p0/c;Ln3/y/b/a/w0/z;Ln3/y/b/a/t0/q0/r/i;ZZLjava/lang/Object;Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource$a;)V

    const/4 v4, 0x1

    move-object v7, v3

    move v3, v4

    move/from16 v16, v14

    goto/16 :goto_8

    :cond_7
    move-object/from16 p1, v4

    .line 31
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.resource"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_8

    .line 35
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "\\d+"

    invoke-virtual {v4, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 36
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    :cond_9
    const-string v4, ""

    const-string v11, "^/"

    .line 37
    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 39
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_a

    const-string v4, ":"

    invoke-static {v7, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_a
    invoke-static {v11, v4, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 41
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "raw"

    invoke-virtual {v4, v3, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_5
    if-eqz v3, :cond_b

    const/4 v10, 0x1

    .line 42
    :cond_b
    invoke-static {v10, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x1a

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "rawresource:///"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v7, v3

    .line 44
    :cond_c
    new-instance v10, Ln3/y/b/a/w0/t;

    invoke-direct {v10}, Ln3/y/b/a/w0/t;-><init>()V

    .line 45
    sget-object v3, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    const/4 v4, 0x1

    .line 46
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 47
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    if-nez v3, :cond_d

    .line 48
    new-instance v3, Ln3/y/b/a/q0/e;

    invoke-direct {v3}, Ln3/y/b/a/q0/e;-><init>()V

    :cond_d
    move-object v9, v3

    .line 49
    new-instance v3, Ln3/y/b/a/t0/n;

    const/4 v11, 0x0

    const/high16 v12, 0x100000

    const/4 v4, 0x0

    move-object v6, v3

    move-object v13, v5

    move/from16 v16, v14

    move-object v14, v4

    invoke-direct/range {v6 .. v14}, Ln3/y/b/a/t0/n;-><init>(Landroid/net/Uri;Ln3/y/b/a/w0/h$a;Ln3/y/b/a/q0/i;Ln3/y/b/a/w0/z;Ljava/lang/String;ILjava/lang/Object;Ln3/y/b/a/t0/n$a;)V

    goto :goto_6

    :cond_e
    move-object/from16 p1, v4

    move/from16 v16, v14

    if-eqz v7, :cond_10

    .line 50
    new-instance v10, Ln3/y/b/a/w0/t;

    invoke-direct {v10}, Ln3/y/b/a/w0/t;-><init>()V

    .line 51
    sget-object v3, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    const/4 v4, 0x1

    .line 52
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 53
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 54
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-nez v3, :cond_f

    .line 55
    new-instance v3, Ln3/y/b/a/q0/e;

    invoke-direct {v3}, Ln3/y/b/a/q0/e;-><init>()V

    :cond_f
    move-object v9, v3

    .line 56
    new-instance v3, Ln3/y/b/a/t0/n;

    const/4 v11, 0x0

    const/high16 v12, 0x100000

    const/4 v14, 0x0

    move-object v6, v3

    move-object v13, v5

    invoke-direct/range {v6 .. v14}, Ln3/y/b/a/t0/n;-><init>(Landroid/net/Uri;Ln3/y/b/a/w0/h$a;Ln3/y/b/a/q0/i;Ln3/y/b/a/w0/z;Ljava/lang/String;ILjava/lang/Object;Ln3/y/b/a/t0/n$a;)V

    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    .line 57
    :cond_10
    instance-of v3, v5, Landroidx/media2/common/CallbackMediaItem;

    if-eqz v3, :cond_16

    .line 58
    move-object v3, v5

    check-cast v3, Landroidx/media2/common/CallbackMediaItem;

    .line 59
    new-instance v8, Ln3/y/c/e;

    invoke-direct {v8, v6}, Ln3/y/c/e;-><init>(Ln3/y/a/b;)V

    .line 60
    new-instance v10, Ln3/y/b/a/w0/t;

    invoke-direct {v10}, Ln3/y/b/a/w0/t;-><init>()V

    .line 61
    sget-object v3, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    const/4 v4, 0x1

    .line 62
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 63
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 64
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-nez v3, :cond_11

    .line 65
    new-instance v3, Ln3/y/b/a/q0/e;

    invoke-direct {v3}, Ln3/y/b/a/q0/e;-><init>()V

    :cond_11
    move-object v9, v3

    .line 66
    new-instance v3, Ln3/y/b/a/t0/n;

    const/4 v11, 0x0

    const/high16 v12, 0x100000

    const/4 v14, 0x0

    move-object v6, v3

    move-object v13, v5

    invoke-direct/range {v6 .. v14}, Ln3/y/b/a/t0/n;-><init>(Landroid/net/Uri;Ln3/y/b/a/w0/h$a;Ln3/y/b/a/q0/i;Ln3/y/b/a/w0/z;Ljava/lang/String;ILjava/lang/Object;Ln3/y/b/a/t0/n$a;)V

    :goto_7
    move-object v7, v3

    move v3, v4

    .line 67
    :goto_8
    iget-wide v8, v5, Landroidx/media2/common/MediaItem;->c:J

    .line 68
    iget-wide v10, v5, Landroidx/media2/common/MediaItem;->d:J

    const-wide/16 v12, 0x0

    cmp-long v4, v8, v12

    const-wide v12, 0x7ffffffffffffffL

    if-nez v4, :cond_12

    cmp-long v4, v10, v12

    if-eqz v4, :cond_14

    :cond_12
    cmp-long v4, v10, v12

    if-nez v4, :cond_13

    const-wide/high16 v10, -0x8000000000000000L

    .line 69
    :cond_13
    new-instance v4, Ln3/y/b/a/t0/e;

    .line 70
    invoke-static {v8, v9}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v8

    .line 71
    invoke-static {v10, v11}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Ln3/y/b/a/t0/e;-><init>(Ln3/y/b/a/t0/t;JJZZZ)V

    move-object v7, v4

    :cond_14
    if-eqz v16, :cond_15

    .line 72
    move-object v4, v5

    check-cast v4, Landroidx/media2/common/UriMediaItem;

    .line 73
    iget-object v4, v4, Landroidx/media2/common/UriMediaItem;->e:Landroid/net/Uri;

    .line 74
    invoke-static {v4}, Ln3/y/b/a/x0/x;->u(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v3

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    .line 75
    :goto_9
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v6, Ln3/y/c/j0$d;

    invoke-direct {v6, v5, v4}, Ln3/y/c/j0$d;-><init>(Landroidx/media2/common/MediaItem;Z)V

    invoke-interface {v15, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p1

    goto/16 :goto_2

    .line 77
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 78
    :cond_17
    check-cast v5, Landroidx/media2/common/FileMediaItem;

    .line 79
    throw v6

    .line 80
    :cond_18
    iget-object v3, v0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    invoke-virtual {v3, v1}, Ln3/y/b/a/t0/j;->v(Ljava/util/Collection;)V

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/c/j0$d;

    .line 82
    invoke-virtual {v0, v2}, Ln3/y/c/j0$e;->e(Ln3/y/c/j0$d;)V

    goto :goto_a

    :cond_19
    return-void
.end method
