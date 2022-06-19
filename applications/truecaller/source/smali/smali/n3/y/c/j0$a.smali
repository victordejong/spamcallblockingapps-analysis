.class public final Ln3/y/c/j0$a;
.super Ln3/y/b/a/f0$a;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/y0/o;
.implements Ln3/y/b/a/n0/f;
.implements Ln3/y/c/b1$c;
.implements Ln3/y/b/a/s0/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/c/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/c/j0;


# direct methods
.method public constructor <init>(Ln3/y/c/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    invoke-direct {p0}, Ln3/y/b/a/f0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public A0()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    check-cast v0, Ln3/y/c/m;

    invoke-virtual {v0}, Ln3/y/c/m;->k()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Ln3/y/c/j0;->q:Z

    .line 5
    iget-object v1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {v1}, Ln3/y/b/a/k0;->e()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ln3/y/c/j0;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public G5(ZI)V
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0}, Ln3/y/c/j0;->d()Ln3/y/c/y0;

    move-result-object v3

    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v2, v3}, Ln3/y/c/m;->j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    const-wide/16 v1, 0x3e8

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-ne p2, v5, :cond_1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 4
    iget-wide v6, p1, Ln3/y/c/j0$e;->h:J

    cmp-long v3, v6, v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p1, Ln3/y/c/j0$e;->h:J

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 7
    iget-wide v6, p1, Ln3/y/c/j0$e;->h:J

    cmp-long v6, v6, v3

    if-nez v6, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 9
    iget-wide v8, p1, Ln3/y/c/j0$e;->i:J

    iget-wide v10, p1, Ln3/y/c/j0$e;->h:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x1f4

    add-long/2addr v6, v10

    div-long/2addr v6, v1

    add-long/2addr v6, v8

    iput-wide v6, p1, Ln3/y/c/j0$e;->i:J

    .line 10
    iput-wide v3, p1, Ln3/y/c/j0$e;->h:J

    :goto_0
    const/4 p1, 0x2

    if-eq p2, v5, :cond_4

    if-ne p2, p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v3, v0, Ln3/y/c/j0;->d:Landroid/os/Handler;

    iget-object v4, v0, Ln3/y/c/j0;->f:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 12
    :cond_4
    :goto_1
    iget-object v3, v0, Ln3/y/c/j0;->d:Landroid/os/Handler;

    iget-object v4, v0, Ln3/y/c/j0;->f:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    const/4 v3, 0x1

    if-eq p2, v3, :cond_a

    const/4 v4, 0x0

    if-eq p2, p1, :cond_8

    if-eq p2, v5, :cond_7

    const/4 p1, 0x4

    if-ne p2, p1, :cond_6

    .line 13
    iget-boolean p1, v0, Ln3/y/c/j0;->q:Z

    if-eqz p1, :cond_5

    .line 14
    iput-boolean v4, v0, Ln3/y/c/j0;->q:Z

    .line 15
    iget-object p1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    check-cast p1, Ln3/y/c/m;

    invoke-virtual {p1}, Ln3/y/c/m;->k()V

    .line 16
    :cond_5
    iget-object p1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {p1}, Ln3/y/b/a/k0;->d()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 17
    iget-object p1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 18
    invoke-virtual {p1}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object p2

    .line 19
    iget-object v1, p1, Ln3/y/c/j0$e;->b:Ln3/y/c/j0$c;

    check-cast v1, Ln3/y/c/m;

    const/4 v2, 0x5

    .line 20
    invoke-static {v1, p2, v2, v4}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 21
    iget-object p1, p1, Ln3/y/c/j0$e;->b:Ln3/y/c/j0$c;

    check-cast p1, Ln3/y/c/m;

    const/4 v1, 0x6

    .line 22
    invoke-static {p1, p2, v1, v4}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 23
    iget-object p1, v0, Ln3/y/c/j0;->g:Ln3/y/b/a/k0;

    invoke-virtual {p1, v4}, Ln3/y/b/a/k0;->k(Z)V

    goto :goto_3

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 25
    :cond_7
    invoke-virtual {v0}, Ln3/y/c/j0;->h()V

    goto :goto_3

    .line 26
    :cond_8
    iget-boolean p1, v0, Ln3/y/c/j0;->n:Z

    if-eqz p1, :cond_a

    iget-boolean p1, v0, Ln3/y/c/j0;->p:Z

    if-nez p1, :cond_a

    .line 27
    iput-boolean v3, v0, Ln3/y/c/j0;->p:Z

    .line 28
    iget-object p1, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {p1}, Ln3/y/c/j0$e;->c()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 29
    iget-object p1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    .line 30
    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object p2

    iget-object v3, v0, Ln3/y/c/j0;->e:Ln3/y/b/a/w0/n;

    invoke-virtual {v3}, Ln3/y/b/a/w0/n;->c()J

    move-result-wide v5

    div-long/2addr v5, v1

    long-to-int v1, v5

    .line 31
    check-cast p1, Ln3/y/c/m;

    const/16 v2, 0x2bf

    .line 32
    invoke-static {p1, p2, v2, v1}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    .line 33
    :cond_9
    iget-object p1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object p2

    check-cast p1, Ln3/y/c/m;

    const/16 v0, 0x2bd

    .line 34
    invoke-static {p1, p2, v0, v4}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    :cond_a
    :goto_3
    return-void
.end method

.method public I5(Landroidx/media2/exoplayer/external/source/TrackGroupArray;Ln3/y/b/a/v0/f;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    invoke-virtual {v2}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v3

    .line 3
    iget-object v4, v2, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 4
    iget-object v5, v4, Ln3/y/c/d1;->b:Landroidx/media2/common/MediaItem;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v3, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 5
    :goto_0
    iput-object v3, v4, Ln3/y/c/d1;->b:Landroidx/media2/common/MediaItem;

    .line 6
    iput-boolean v7, v4, Ln3/y/c/d1;->i:Z

    .line 7
    iget-object v3, v4, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 8
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->d()Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;

    move-result-object v8

    .line 9
    iget-object v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->y:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v9, v8, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;->y:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 11
    :goto_1
    invoke-virtual {v3, v8}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->m(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$c;)V

    const/4 v3, 0x0

    .line 12
    iput-object v3, v4, Ln3/y/c/d1;->j:Ln3/y/c/d1$b;

    .line 13
    iput-object v3, v4, Ln3/y/c/d1;->k:Ln3/y/c/d1$b;

    .line 14
    iput-object v3, v4, Ln3/y/c/d1;->l:Ln3/y/c/d1$b;

    .line 15
    iput-object v3, v4, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    const/4 v8, -0x1

    .line 16
    iput v8, v4, Ln3/y/c/d1;->n:I

    .line 17
    iget-object v8, v4, Ln3/y/c/d1;->c:Ln3/y/c/b1;

    invoke-virtual {v8}, Ln3/y/c/b1;->G()V

    if-eqz v5, :cond_2

    .line 18
    iget-object v5, v4, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 19
    iget-object v5, v4, Ln3/y/c/d1;->f:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 20
    iget-object v5, v4, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 21
    iget-object v5, v4, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 22
    :cond_2
    iget-object v5, v4, Ln3/y/c/d1;->d:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;

    .line 23
    iget-object v5, v5, Ln3/y/b/a/v0/d;->c:Ln3/y/b/a/v0/d$a;

    if-nez v5, :cond_3

    goto/16 :goto_d

    .line 24
    :cond_3
    iget-object v8, v1, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v8, v8, v7

    if-nez v8, :cond_4

    move-object v8, v3

    goto :goto_2

    .line 25
    :cond_4
    invoke-interface {v8}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v8

    .line 26
    :goto_2
    iget-object v9, v1, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    aget-object v9, v9, v6

    if-nez v9, :cond_5

    move-object v9, v3

    goto :goto_3

    .line 27
    :cond_5
    invoke-interface {v9}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v9

    .line 28
    :goto_3
    iget-object v10, v1, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    const/4 v11, 0x3

    aget-object v10, v10, v11

    if-nez v10, :cond_6

    move-object v10, v3

    goto :goto_4

    .line 29
    :cond_6
    invoke-interface {v10}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v10

    .line 30
    :goto_4
    iget-object v1, v1, Ln3/y/b/a/v0/f;->b:[Ln3/y/b/a/v0/e;

    const/4 v11, 0x2

    aget-object v1, v1, v11

    if-nez v1, :cond_7

    goto :goto_5

    .line 31
    :cond_7
    invoke-interface {v1}, Ln3/y/b/a/v0/e;->f()Landroidx/media2/exoplayer/external/source/TrackGroup;

    move-result-object v3

    .line 32
    :goto_5
    iget-object v1, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v7

    .line 33
    iget-object v7, v4, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_6
    iget v12, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v7, v12, :cond_9

    .line 34
    iget-object v12, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v12, v12, v7

    .line 35
    new-instance v13, Ln3/y/c/d1$b;

    .line 36
    iget-object v14, v12, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v6, v14, v6

    .line 37
    invoke-static {v6}, Ln3/y/c/h0;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v6

    iget v14, v4, Ln3/y/c/d1;->a:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v4, Ln3/y/c/d1;->a:I

    invoke-direct {v13, v7, v11, v6, v14}, Ln3/y/c/d1$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 38
    iget-object v6, v4, Ln3/y/c/d1;->e:Landroid/util/SparseArray;

    iget-object v14, v13, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 39
    iget v14, v14, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 40
    invoke-virtual {v6, v14, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    invoke-virtual {v12, v8}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 42
    iput-object v13, v4, Ln3/y/c/d1;->j:Ln3/y/c/d1$b;

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_6

    .line 43
    :cond_9
    iget-object v1, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    .line 44
    iget-object v7, v4, Ln3/y/c/d1;->f:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_7
    iget v8, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v7, v8, :cond_b

    .line 45
    iget-object v8, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v8, v8, v7

    .line 46
    new-instance v12, Ln3/y/c/d1$b;

    .line 47
    iget-object v13, v8, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    aget-object v6, v13, v6

    .line 48
    invoke-static {v6}, Ln3/y/c/h0;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v6

    iget v13, v4, Ln3/y/c/d1;->a:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v4, Ln3/y/c/d1;->a:I

    const/4 v14, 0x1

    invoke-direct {v12, v7, v14, v6, v13}, Ln3/y/c/d1$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 49
    iget-object v6, v4, Ln3/y/c/d1;->f:Landroid/util/SparseArray;

    iget-object v13, v12, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 50
    iget v13, v13, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 51
    invoke-virtual {v6, v13, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 53
    iput-object v12, v4, Ln3/y/c/d1;->k:Ln3/y/c/d1$b;

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_7

    .line 54
    :cond_b
    iget-object v1, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v6, 0x3

    aget-object v1, v1, v6

    .line 55
    iget-object v6, v4, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    :goto_8
    iget v7, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v6, v7, :cond_d

    .line 56
    iget-object v7, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v7, v7, v6

    .line 57
    new-instance v8, Ln3/y/c/d1$b;

    const/4 v9, 0x5

    .line 58
    iget-object v12, v7, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    .line 59
    invoke-static {v12}, Ln3/y/c/h0;->a(Landroidx/media2/exoplayer/external/Format;)Landroid/media/MediaFormat;

    move-result-object v12

    iget v13, v4, Ln3/y/c/d1;->a:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v4, Ln3/y/c/d1;->a:I

    invoke-direct {v8, v6, v9, v12, v13}, Ln3/y/c/d1$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 60
    iget-object v9, v4, Ln3/y/c/d1;->g:Landroid/util/SparseArray;

    iget-object v12, v8, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 61
    iget v12, v12, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 62
    invoke-virtual {v9, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {v7, v10}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 64
    iput-object v8, v4, Ln3/y/c/d1;->l:Ln3/y/c/d1$b;

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 65
    :cond_d
    iget-object v1, v5, Ln3/y/b/a/v0/d$a;->c:[Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    aget-object v1, v1, v11

    .line 66
    iget-object v5, v4, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_9
    iget v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->a:I

    if-ge v5, v6, :cond_18

    .line 67
    iget-object v6, v1, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->b:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v6, v6, v5

    .line 68
    iget-object v7, v6, Landroidx/media2/exoplayer/external/source/TrackGroup;->b:[Landroidx/media2/exoplayer/external/Format;

    const/4 v8, 0x0

    aget-object v15, v7, v8

    .line 69
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v7, v15, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 71
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x3be2f26c

    if-eq v8, v9, :cond_12

    const v9, 0x5d578071

    if-eq v8, v9, :cond_10

    const v9, 0x5d578432

    if-eq v8, v9, :cond_e

    goto :goto_a

    :cond_e
    const-string v8, "application/cea-708"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_a

    :cond_f
    move v8, v11

    goto :goto_b

    :cond_10
    const-string v8, "application/cea-608"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto :goto_a

    :cond_11
    const/4 v8, 0x1

    goto :goto_b

    :cond_12
    const-string v8, "text/vtt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    :goto_a
    const/4 v8, -0x1

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_16

    const/4 v9, 0x1

    if-eq v8, v9, :cond_15

    if-ne v8, v11, :cond_14

    move v14, v9

    goto :goto_c

    .line 72
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unexpected text MIME type "

    invoke-static {v2, v7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    const/4 v7, 0x0

    move v14, v7

    goto :goto_c

    :cond_16
    move v14, v11

    .line 73
    :goto_c
    new-instance v7, Ln3/y/c/d1$a;

    const/16 v16, -0x1

    iget v8, v4, Ln3/y/c/d1;->a:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v4, Ln3/y/c/d1;->a:I

    move-object v12, v7

    move v13, v5

    move/from16 v17, v8

    invoke-direct/range {v12 .. v17}, Ln3/y/c/d1$a;-><init>(IILandroidx/media2/exoplayer/external/Format;II)V

    .line 74
    iget-object v8, v4, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    iget-object v9, v7, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 75
    iget v9, v9, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 76
    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    invoke-virtual {v6, v3}, Landroidx/media2/exoplayer/external/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 78
    iput v5, v4, Ln3/y/c/d1;->n:I

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 79
    :cond_18
    :goto_d
    iget-object v1, v2, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 80
    iget-boolean v3, v1, Ln3/y/c/d1;->i:Z

    const/4 v4, 0x0

    .line 81
    iput-boolean v4, v1, Ln3/y/c/d1;->i:Z

    if-eqz v3, :cond_19

    .line 82
    iget-object v1, v2, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v2}, Ln3/y/c/j0;->e()Ljava/util/List;

    move-result-object v2

    check-cast v1, Ln3/y/c/m;

    .line 83
    new-instance v3, Ln3/y/c/a;

    invoke-direct {v3, v1, v2}, Ln3/y/c/a;-><init>(Ln3/y/c/m;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    :cond_19
    return-void
.end method

.method public K5(Ln3/y/b/a/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0}, Ln3/y/c/j0;->d()Ln3/y/c/y0;

    move-result-object v3

    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v2, v3}, Ln3/y/c/m;->j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    .line 3
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 4
    sget-object v2, Ln3/y/c/h0;->a:Ln3/y/b/a/q0/i;

    .line 5
    iget v2, p1, Ln3/y/b/a/f;->a:I

    const/4 v3, 0x1

    if-nez v2, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 7
    iget-object p1, p1, Ln3/y/b/a/f;->b:Ljava/lang/Throwable;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/io/IOException;

    .line 10
    instance-of v2, p1, Ln3/y/b/a/c0;

    if-eqz v2, :cond_1

    const/16 v3, -0x3ef

    goto :goto_1

    .line 11
    :cond_1
    instance-of v2, p1, Ln3/y/b/a/w0/w;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_2

    const/16 v3, -0x6e

    goto :goto_1

    :cond_2
    const/16 v3, -0x3ec

    .line 13
    :cond_3
    :goto_1
    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v0, v3}, Ln3/y/c/m;->i(Landroidx/media2/common/MediaItem;I)V

    return-void
.end method

.method public a(IIIF)V
    .locals 0

    .line 1
    iget-object p3, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    invoke-virtual {p3, p1, p2, p4}, Ln3/y/c/j0;->f(IIF)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    iput p1, v0, Ln3/y/c/j0;->m:I

    return-void
.end method

.method public e(IJ)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public g(Landroid/view/Surface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    iget-object v0, p1, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    iget-object p1, p1, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    invoke-virtual {p1}, Ln3/y/c/j0$e;->b()Landroidx/media2/common/MediaItem;

    move-result-object p1

    check-cast v0, Ln3/y/c/m;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 3
    invoke-static {v0, p1, v2, v1}, Le/d/c/a/a;->t0(Ln3/y/c/m;Landroidx/media2/common/MediaItem;II)V

    return-void
.end method

.method public h5(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0}, Ln3/y/c/j0;->d()Ln3/y/c/y0;

    move-result-object v3

    check-cast v1, Ln3/y/c/m;

    invoke-virtual {v1, v2, v3}, Ln3/y/c/m;->j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    .line 3
    iget-object v0, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ln3/y/c/j0$e;->d(Z)V

    return-void
.end method

.method public j(F)V
    .locals 0

    return-void
.end method

.method public n(Landroidx/media2/exoplayer/external/Format;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    invoke-static {v0}, Ln3/y/b/a/x0/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    iget v1, p1, Landroidx/media2/exoplayer/external/Format;->n:I

    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->o:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->r:F

    invoke-virtual {v0, v1, v2, p1}, Ln3/y/c/j0;->f(IIF)V

    :cond_0
    return-void
.end method

.method public p(Ln3/y/b/a/n0/c;)V
    .locals 0

    return-void
.end method

.method public u(Ln3/y/b/a/o0/b;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v1}, Ln3/y/c/j0;->f(IIF)V

    return-void
.end method

.method public v(Ln3/y/b/a/o0/b;)V
    .locals 0

    return-void
.end method

.method public x(Landroidx/media2/exoplayer/external/metadata/Metadata;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->a:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v3, v3, v2

    .line 5
    check-cast v3, Landroidx/media2/player/ByteArrayFrame;

    .line 6
    iget-object v4, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    .line 7
    invoke-virtual {v0}, Ln3/y/c/j0;->a()Landroidx/media2/common/MediaItem;

    move-result-object v5

    new-instance v6, Ln3/y/c/c1;

    iget-wide v7, v3, Landroidx/media2/player/ByteArrayFrame;->a:J

    iget-object v3, v3, Landroidx/media2/player/ByteArrayFrame;->b:[B

    invoke-direct {v6, v7, v8, v3}, Ln3/y/c/c1;-><init>(J[B)V

    .line 8
    check-cast v4, Ln3/y/c/m;

    .line 9
    new-instance v3, Ln3/y/c/z;

    invoke-direct {v3, v4, v5, v6}, Ln3/y/c/z;-><init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;Ln3/y/c/c1;)V

    invoke-virtual {v4, v3}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
