.class public final Ln3/y/b/a/t0/q0/r/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/a0$b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/q0/r/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/y/b/a/w0/a0$b<",
        "Ln3/y/b/a/w0/b0<",
        "Ln3/y/b/a/t0/q0/r/f;",
        ">;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ln3/y/b/a/w0/a0;

.field public final c:Ln3/y/b/a/w0/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/w0/b0<",
            "Ln3/y/b/a/t0/q0/r/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ln3/y/b/a/t0/q0/r/e;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:Ljava/io/IOException;

.field public final synthetic k:Ln3/y/b/a/t0/q0/r/c;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/r/c;Landroid/net/Uri;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    .line 3
    new-instance v0, Ln3/y/b/a/w0/a0;

    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    invoke-direct {v0, v1}, Ln3/y/b/a/w0/a0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->b:Ln3/y/b/a/w0/a0;

    .line 4
    new-instance v0, Ln3/y/b/a/w0/b0;

    .line 5
    iget-object v1, p1, Ln3/y/b/a/t0/q0/r/c;->a:Ln3/y/b/a/t0/q0/e;

    const/4 v2, 0x4

    .line 6
    invoke-interface {v1, v2}, Ln3/y/b/a/t0/q0/e;->a(I)Ln3/y/b/a/w0/h;

    move-result-object v1

    .line 7
    iget-object p1, p1, Ln3/y/b/a/t0/q0/r/c;->f:Ln3/y/b/a/w0/b0$a;

    .line 8
    invoke-direct {v0, v1, p2, v2, p1}, Ln3/y/b/a/w0/b0;-><init>(Ln3/y/b/a/w0/h;Landroid/net/Uri;ILn3/y/b/a/w0/b0$a;)V

    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->c:Ln3/y/b/a/w0/b0;

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->h:J

    .line 2
    iget-object p1, p0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    iget-object p2, p0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 3
    iget-object p2, p2, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    .line 4
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 5
    iget-object v1, p1, Ln3/y/b/a/t0/q0/r/c;->k:Ln3/y/b/a/t0/q0/r/d;

    iget-object v1, v1, Ln3/y/b/a/t0/q0/r/d;->e:Ljava/util/List;

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_1

    .line 8
    iget-object v6, p1, Ln3/y/b/a/t0/q0/r/c;->d:Ljava/util/HashMap;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/y/b/a/t0/q0/r/d$b;

    iget-object v7, v7, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/b/a/t0/q0/r/c$a;

    .line 9
    iget-wide v7, v6, Ln3/y/b/a/t0/q0/r/c$a;->h:J

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 10
    iget-object v1, v6, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    .line 11
    iput-object v1, p1, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    .line 12
    invoke-virtual {v6}, Ln3/y/b/a/t0/q0/r/c$a;->b()V

    move p1, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    return p2
.end method

.method public b()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->h:J

    .line 2
    iget-boolean v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->b:Ln3/y/b/a/w0/a0;

    invoke-virtual {v0}, Ln3/y/b/a/w0/a0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Ln3/y/b/a/t0/q0/r/c$a;->g:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 5
    iput-boolean v4, p0, Ln3/y/b/a/t0/q0/r/c$a;->i:Z

    .line 6
    iget-object v4, p0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 7
    iget-object v4, v4, Ln3/y/b/a/t0/q0/r/c;->i:Landroid/os/Handler;

    sub-long/2addr v2, v0

    .line 8
    invoke-virtual {v4, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ln3/y/b/a/t0/q0/r/c$a;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->b:Ln3/y/b/a/w0/a0;

    iget-object v1, p0, Ln3/y/b/a/t0/q0/r/c$a;->c:Ln3/y/b/a/w0/b0;

    iget-object v2, p0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 2
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    .line 3
    iget v3, v1, Ln3/y/b/a/w0/b0;->b:I

    check-cast v2, Ln3/y/b/a/w0/t;

    invoke-virtual {v2, v3}, Ln3/y/b/a/w0/t;->b(I)I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, p0, v2}, Ln3/y/b/a/w0/a0;->f(Ln3/y/b/a/w0/a0$e;Ln3/y/b/a/w0/a0$b;I)J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 6
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    .line 7
    iget-object v3, p0, Ln3/y/b/a/t0/q0/r/c$a;->c:Ln3/y/b/a/w0/b0;

    iget-object v4, v3, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    iget v3, v3, Ln3/y/b/a/w0/b0;->b:I

    invoke-virtual {v2, v4, v3, v0, v1}, Ln3/y/b/a/t0/c0$a;->o(Ln3/y/b/a/w0/k;IJ)V

    return-void
.end method

.method public final d(Ln3/y/b/a/t0/q0/r/e;J)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3
    iput-wide v3, v0, Ln3/y/b/a/t0/q0/r/c$a;->e:J

    .line 4
    iget-object v5, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 5
    sget v6, Ln3/y/b/a/t0/q0/r/c;->p:I

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    .line 8
    iget-wide v8, v1, Ln3/y/b/a/t0/q0/r/e;->i:J

    iget-wide v10, v2, Ln3/y/b/a/t0/q0/r/e;->i:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    goto :goto_1

    :cond_0
    if-gez v8, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v8, v1, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 10
    iget-object v9, v2, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-gt v8, v9, :cond_3

    if-ne v8, v9, :cond_2

    .line 11
    iget-boolean v8, v1, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v2, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v8, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v8, v6

    :goto_2
    if-nez v8, :cond_6

    .line 12
    iget-boolean v5, v1, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-eqz v5, :cond_5

    .line 13
    iget-boolean v5, v2, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-eqz v5, :cond_4

    goto :goto_3

    .line 14
    :cond_4
    new-instance v5, Ln3/y/b/a/t0/q0/r/e;

    move-object v11, v5

    iget v12, v2, Ln3/y/b/a/t0/q0/r/e;->d:I

    iget-object v13, v2, Ln3/y/b/a/t0/q0/r/f;->a:Ljava/lang/String;

    iget-object v14, v2, Ln3/y/b/a/t0/q0/r/f;->b:Ljava/util/List;

    iget-wide v9, v2, Ln3/y/b/a/t0/q0/r/e;->e:J

    move-wide v15, v9

    iget-wide v8, v2, Ln3/y/b/a/t0/q0/r/e;->f:J

    move-wide/from16 v17, v8

    iget-boolean v8, v2, Ln3/y/b/a/t0/q0/r/e;->g:Z

    move/from16 v19, v8

    iget v8, v2, Ln3/y/b/a/t0/q0/r/e;->h:I

    move/from16 v20, v8

    iget-wide v8, v2, Ln3/y/b/a/t0/q0/r/e;->i:J

    move-wide/from16 v21, v8

    iget v8, v2, Ln3/y/b/a/t0/q0/r/e;->j:I

    move/from16 v23, v8

    iget-wide v8, v2, Ln3/y/b/a/t0/q0/r/e;->k:J

    move-wide/from16 v24, v8

    iget-boolean v8, v2, Ln3/y/b/a/t0/q0/r/f;->c:Z

    move/from16 v26, v8

    const/16 v27, 0x1

    iget-boolean v8, v2, Ln3/y/b/a/t0/q0/r/e;->m:Z

    move/from16 v28, v8

    iget-object v8, v2, Ln3/y/b/a/t0/q0/r/e;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v29, v8

    iget-object v8, v2, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    move-object/from16 v30, v8

    invoke-direct/range {v11 .. v30}, Ln3/y/b/a/t0/q0/r/e;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    goto/16 :goto_b

    :cond_5
    :goto_3
    move-object v5, v2

    goto/16 :goto_b

    .line 15
    :cond_6
    iget-boolean v8, v1, Ln3/y/b/a/t0/q0/r/e;->m:Z

    if-eqz v8, :cond_8

    .line 16
    iget-wide v8, v1, Ln3/y/b/a/t0/q0/r/e;->f:J

    :cond_7
    :goto_4
    move-wide/from16 v16, v8

    goto :goto_7

    .line 17
    :cond_8
    iget-object v8, v5, Ln3/y/b/a/t0/q0/r/c;->m:Ln3/y/b/a/t0/q0/r/e;

    if-eqz v8, :cond_9

    iget-wide v8, v8, Ln3/y/b/a/t0/q0/r/e;->f:J

    goto :goto_5

    :cond_9
    const-wide/16 v8, 0x0

    :goto_5
    if-nez v2, :cond_a

    goto :goto_4

    .line 18
    :cond_a
    iget-object v10, v2, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 19
    invoke-static {v2, v1}, Ln3/y/b/a/t0/q0/r/c;->n(Ln3/y/b/a/t0/q0/r/e;Ln3/y/b/a/t0/q0/r/e;)Ln3/y/b/a/t0/q0/r/e$a;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 20
    iget-wide v8, v2, Ln3/y/b/a/t0/q0/r/e;->f:J

    iget-wide v10, v11, Ln3/y/b/a/t0/q0/r/e$a;->e:J

    goto :goto_6

    :cond_b
    int-to-long v10, v10

    .line 21
    iget-wide v12, v1, Ln3/y/b/a/t0/q0/r/e;->i:J

    iget-wide v14, v2, Ln3/y/b/a/t0/q0/r/e;->i:J

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 22
    iget-wide v8, v2, Ln3/y/b/a/t0/q0/r/e;->f:J

    iget-wide v10, v2, Ln3/y/b/a/t0/q0/r/e;->p:J

    :goto_6
    add-long/2addr v8, v10

    goto :goto_4

    .line 23
    :goto_7
    iget-boolean v8, v1, Ln3/y/b/a/t0/q0/r/e;->g:Z

    if-eqz v8, :cond_d

    .line 24
    iget v5, v1, Ln3/y/b/a/t0/q0/r/e;->h:I

    :cond_c
    :goto_8
    move/from16 v19, v5

    goto :goto_a

    .line 25
    :cond_d
    iget-object v5, v5, Ln3/y/b/a/t0/q0/r/c;->m:Ln3/y/b/a/t0/q0/r/e;

    if-eqz v5, :cond_e

    .line 26
    iget v5, v5, Ln3/y/b/a/t0/q0/r/e;->h:I

    goto :goto_9

    :cond_e
    move v5, v7

    :goto_9
    if-nez v2, :cond_f

    goto :goto_8

    .line 27
    :cond_f
    invoke-static {v2, v1}, Ln3/y/b/a/t0/q0/r/c;->n(Ln3/y/b/a/t0/q0/r/e;Ln3/y/b/a/t0/q0/r/e;)Ln3/y/b/a/t0/q0/r/e$a;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 28
    iget v5, v2, Ln3/y/b/a/t0/q0/r/e;->h:I

    iget v8, v8, Ln3/y/b/a/t0/q0/r/e$a;->d:I

    add-int/2addr v5, v8

    iget-object v8, v1, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    .line 29
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/y/b/a/t0/q0/r/e$a;

    iget v8, v8, Ln3/y/b/a/t0/q0/r/e$a;->d:I

    sub-int/2addr v5, v8

    goto :goto_8

    .line 30
    :goto_a
    new-instance v5, Ln3/y/b/a/t0/q0/r/e;

    move-object v10, v5

    iget v11, v1, Ln3/y/b/a/t0/q0/r/e;->d:I

    iget-object v12, v1, Ln3/y/b/a/t0/q0/r/f;->a:Ljava/lang/String;

    iget-object v13, v1, Ln3/y/b/a/t0/q0/r/f;->b:Ljava/util/List;

    iget-wide v14, v1, Ln3/y/b/a/t0/q0/r/e;->e:J

    iget-wide v8, v1, Ln3/y/b/a/t0/q0/r/e;->i:J

    move-wide/from16 v20, v8

    iget v8, v1, Ln3/y/b/a/t0/q0/r/e;->j:I

    move/from16 v22, v8

    iget-wide v8, v1, Ln3/y/b/a/t0/q0/r/e;->k:J

    move-wide/from16 v23, v8

    iget-boolean v8, v1, Ln3/y/b/a/t0/q0/r/f;->c:Z

    move/from16 v25, v8

    iget-boolean v8, v1, Ln3/y/b/a/t0/q0/r/e;->l:Z

    move/from16 v26, v8

    iget-boolean v8, v1, Ln3/y/b/a/t0/q0/r/e;->m:Z

    move/from16 v27, v8

    iget-object v8, v1, Ln3/y/b/a/t0/q0/r/e;->n:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v28, v8

    iget-object v8, v1, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    move-object/from16 v29, v8

    const/16 v18, 0x1

    invoke-direct/range {v10 .. v29}, Ln3/y/b/a/t0/q0/r/e;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    .line 31
    :goto_b
    iput-object v5, v0, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    if-eq v5, v2, :cond_1a

    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->j:Ljava/io/IOException;

    .line 33
    iput-wide v3, v0, Ln3/y/b/a/t0/q0/r/c$a;->f:J

    .line 34
    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    iget-object v10, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    .line 35
    iget-object v11, v1, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 36
    iget-object v10, v1, Ln3/y/b/a/t0/q0/r/c;->m:Ln3/y/b/a/t0/q0/r/e;

    if-nez v10, :cond_10

    .line 37
    iget-boolean v10, v5, Ln3/y/b/a/t0/q0/r/e;->l:Z

    xor-int/2addr v10, v6

    iput-boolean v10, v1, Ln3/y/b/a/t0/q0/r/c;->n:Z

    .line 38
    iget-wide v10, v5, Ln3/y/b/a/t0/q0/r/e;->f:J

    iput-wide v10, v1, Ln3/y/b/a/t0/q0/r/c;->o:J

    .line 39
    :cond_10
    iput-object v5, v1, Ln3/y/b/a/t0/q0/r/c;->m:Ln3/y/b/a/t0/q0/r/e;

    .line 40
    iget-object v10, v1, Ln3/y/b/a/t0/q0/r/c;->j:Ln3/y/b/a/t0/q0/r/i$e;

    check-cast v10, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;

    .line 41
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-boolean v11, v5, Ln3/y/b/a/t0/q0/r/e;->m:Z

    if-eqz v11, :cond_11

    iget-wide v11, v5, Ln3/y/b/a/t0/q0/r/e;->f:J

    invoke-static {v11, v12}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v11

    move-wide/from16 v16, v11

    goto :goto_c

    :cond_11
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    :goto_c
    iget v11, v5, Ln3/y/b/a/t0/q0/r/e;->d:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_13

    if-ne v11, v6, :cond_12

    goto :goto_d

    :cond_12
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_e

    :cond_13
    :goto_d
    move-wide/from16 v14, v16

    .line 44
    :goto_e
    iget-wide v11, v5, Ln3/y/b/a/t0/q0/r/e;->e:J

    .line 45
    new-instance v13, Ln3/y/b/a/t0/q0/g;

    iget-object v6, v10, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v6}, Ln3/y/b/a/t0/q0/r/i;->c()Ln3/y/b/a/t0/q0/r/d;

    move-result-object v6

    invoke-direct {v13, v6, v5}, Ln3/y/b/a/t0/q0/g;-><init>(Ln3/y/b/a/t0/q0/r/d;Ln3/y/b/a/t0/q0/r/e;)V

    .line 46
    iget-object v6, v10, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    invoke-interface {v6}, Ln3/y/b/a/t0/q0/r/i;->i()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 47
    iget-wide v7, v5, Ln3/y/b/a/t0/q0/r/e;->f:J

    iget-object v9, v10, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->n:Ln3/y/b/a/t0/q0/r/i;

    .line 48
    invoke-interface {v9}, Ln3/y/b/a/t0/q0/r/i;->b()J

    move-result-wide v21

    sub-long v22, v7, v21

    .line 49
    iget-boolean v7, v5, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-eqz v7, :cond_14

    iget-wide v7, v5, Ln3/y/b/a/t0/q0/r/e;->p:J

    add-long v7, v22, v7

    goto :goto_f

    :cond_14
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    :goto_f
    iget-object v9, v5, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v19, v11, v19

    if-nez v19, :cond_16

    .line 51
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v6, 0x0

    const-wide/16 v31, 0x0

    goto :goto_10

    .line 52
    :cond_15
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    const/4 v6, 0x0

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/y/b/a/t0/q0/r/e$a;

    iget-wide v11, v9, Ln3/y/b/a/t0/q0/r/e$a;->e:J

    move-wide/from16 v31, v11

    :goto_10
    move-wide/from16 v24, v31

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    move-wide/from16 v24, v11

    .line 53
    :goto_11
    new-instance v9, Ln3/y/b/a/t0/m0;

    move-object/from16 v28, v13

    move-object v13, v9

    iget-wide v11, v5, Ln3/y/b/a/t0/q0/r/e;->p:J

    move-wide/from16 v20, v11

    const/16 v26, 0x1

    iget-boolean v5, v5, Ln3/y/b/a/t0/q0/r/e;->l:Z

    const/4 v11, 0x1

    xor-int/lit8 v27, v5, 0x1

    iget-object v5, v10, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->o:Ljava/lang/Object;

    move-object/from16 v29, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v13 .. v29}, Ln3/y/b/a/t0/m0;-><init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_17
    move v6, v7

    move-object/from16 v28, v13

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v11, v7

    if-nez v7, :cond_18

    const-wide/16 v24, 0x0

    goto :goto_12

    :cond_18
    move-wide/from16 v24, v11

    .line 54
    :goto_12
    new-instance v9, Ln3/y/b/a/t0/m0;

    move-object v13, v9

    iget-wide v7, v5, Ln3/y/b/a/t0/q0/r/e;->p:J

    move-wide/from16 v18, v7

    move-wide/from16 v20, v7

    const-wide/16 v22, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    iget-object v5, v10, Landroidx/media2/exoplayer/external/source/hls/HlsMediaSource;->o:Ljava/lang/Object;

    move-object/from16 v29, v5

    invoke-direct/range {v13 .. v29}, Ln3/y/b/a/t0/m0;-><init>(JJJJJJZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 55
    :goto_13
    invoke-virtual {v10, v9}, Ln3/y/b/a/t0/b;->n(Ln3/y/b/a/l0;)V

    goto :goto_14

    :cond_19
    move v6, v7

    .line 56
    :goto_14
    iget-object v5, v1, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v7, v6

    :goto_15
    if-ge v7, v5, :cond_1c

    .line 57
    iget-object v6, v1, Ln3/y/b/a/t0/q0/r/c;->e:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/b/a/t0/q0/r/i$b;

    invoke-interface {v6}, Ln3/y/b/a/t0/q0/r/i$b;->g()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 58
    :cond_1a
    iget-boolean v5, v5, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-nez v5, :cond_1c

    .line 59
    iget-wide v5, v1, Ln3/y/b/a/t0/q0/r/e;->i:J

    iget-object v1, v1, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v7, v1

    add-long/2addr v5, v7

    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    iget-wide v7, v1, Ln3/y/b/a/t0/q0/r/e;->i:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1b

    .line 60
    new-instance v1, Ln3/y/b/a/t0/q0/r/i$c;

    iget-object v5, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    invoke-direct {v1, v5}, Ln3/y/b/a/t0/q0/r/i$c;-><init>(Landroid/net/Uri;)V

    iput-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->j:Ljava/io/IOException;

    .line 61
    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    iget-object v5, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v1, v5, v6, v7}, Ln3/y/b/a/t0/q0/r/c;->m(Ln3/y/b/a/t0/q0/r/c;Landroid/net/Uri;J)Z

    goto :goto_16

    .line 62
    :cond_1b
    iget-wide v5, v0, Ln3/y/b/a/t0/q0/r/c$a;->f:J

    sub-long v5, v3, v5

    long-to-double v5, v5

    iget-wide v7, v1, Ln3/y/b/a/t0/q0/r/e;->k:J

    .line 63
    invoke-static {v7, v8}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v7

    long-to-double v7, v7

    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 64
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    mul-double/2addr v7, v9

    cmpl-double v1, v5, v7

    if-lez v1, :cond_1c

    .line 65
    new-instance v9, Ln3/y/b/a/t0/q0/r/i$d;

    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    invoke-direct {v9, v1}, Ln3/y/b/a/t0/q0/r/i$d;-><init>(Landroid/net/Uri;)V

    iput-object v9, v0, Ln3/y/b/a/t0/q0/r/c$a;->j:Ljava/io/IOException;

    .line 66
    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 67
    iget-object v1, v1, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    const/4 v6, 0x4

    const/4 v10, 0x1

    .line 68
    move-object v5, v1

    check-cast v5, Ln3/y/b/a/w0/t;

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Ln3/y/b/a/w0/t;->a(IJLjava/io/IOException;I)J

    move-result-wide v5

    .line 69
    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    iget-object v7, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    invoke-static {v1, v7, v5, v6}, Ln3/y/b/a/t0/q0/r/c;->m(Ln3/y/b/a/t0/q0/r/c;Landroid/net/Uri;J)Z

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1c

    .line 70
    invoke-virtual {v0, v5, v6}, Ln3/y/b/a/t0/q0/r/c$a;->a(J)Z

    .line 71
    :cond_1c
    :goto_16
    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    if-eq v1, v2, :cond_1d

    .line 72
    iget-wide v1, v1, Ln3/y/b/a/t0/q0/r/e;->k:J

    goto :goto_17

    .line 73
    :cond_1d
    iget-wide v1, v1, Ln3/y/b/a/t0/q0/r/e;->k:J

    const-wide/16 v5, 0x2

    div-long/2addr v1, v5

    .line 74
    :goto_17
    invoke-static {v1, v2}, Ln3/y/b/a/c;->b(J)J

    move-result-wide v1

    add-long/2addr v1, v3

    iput-wide v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->g:J

    .line 75
    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    iget-object v2, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 76
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/c;->l:Landroid/net/Uri;

    .line 77
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->d:Ln3/y/b/a/t0/q0/r/e;

    iget-boolean v1, v1, Ln3/y/b/a/t0/q0/r/e;->l:Z

    if-nez v1, :cond_1e

    .line 78
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/q0/r/c$a;->b()V

    :cond_1e
    return-void
.end method

.method public l(Ln3/y/b/a/w0/a0$e;JJLjava/io/IOException;I)Ln3/y/b/a/w0/a0$c;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ln3/y/b/a/w0/b0;

    .line 2
    iget-object v2, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 3
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    .line 4
    iget v4, v1, Ln3/y/b/a/w0/b0;->b:I

    move-object v3, v2

    check-cast v3, Ln3/y/b/a/w0/t;

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Ln3/y/b/a/w0/t;->a(IJLjava/io/IOException;I)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    move v6, v7

    .line 5
    :goto_0
    iget-object v9, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    iget-object v10, v0, Ln3/y/b/a/t0/q0/r/c$a;->a:Landroid/net/Uri;

    .line 6
    invoke-static {v9, v10, v2, v3}, Ln3/y/b/a/t0/q0/r/c;->m(Ln3/y/b/a/t0/q0/r/c;Landroid/net/Uri;J)Z

    move-result v9

    if-nez v9, :cond_2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v9, v7

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v8

    :goto_2
    if-eqz v6, :cond_3

    .line 7
    invoke-virtual {v0, v2, v3}, Ln3/y/b/a/t0/q0/r/c$a;->a(J)Z

    move-result v2

    or-int/2addr v9, v2

    :cond_3
    if-eqz v9, :cond_5

    .line 8
    iget-object v2, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 9
    iget-object v2, v2, Ln3/y/b/a/t0/q0/r/c;->c:Ln3/y/b/a/w0/z;

    .line 10
    iget v10, v1, Ln3/y/b/a/w0/b0;->b:I

    move-object v9, v2

    check-cast v9, Ln3/y/b/a/w0/t;

    move-wide/from16 v11, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v9 .. v14}, Ln3/y/b/a/w0/t;->c(IJLjava/io/IOException;I)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    .line 11
    invoke-static {v7, v2, v3}, Ln3/y/b/a/w0/a0;->b(ZJ)Ln3/y/b/a/w0/a0$c;

    move-result-object v2

    goto :goto_3

    .line 12
    :cond_4
    sget-object v2, Ln3/y/b/a/w0/a0;->e:Ln3/y/b/a/w0/a0$c;

    goto :goto_3

    .line 13
    :cond_5
    sget-object v2, Ln3/y/b/a/w0/a0;->d:Ln3/y/b/a/w0/a0$c;

    .line 14
    :goto_3
    iget-object v3, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 15
    iget-object v9, v3, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    .line 16
    iget-object v10, v1, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 17
    iget-object v1, v1, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 18
    iget-object v11, v1, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 19
    iget-object v12, v1, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v13, 0x4

    .line 20
    iget-wide v3, v1, Ln3/y/b/a/w0/d0;->b:J

    .line 21
    invoke-virtual {v2}, Ln3/y/b/a/w0/a0$c;->a()Z

    move-result v1

    xor-int/lit8 v21, v1, 0x1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v18, v3

    move-object/from16 v20, p6

    .line 22
    invoke-virtual/range {v9 .. v21}, Ln3/y/b/a/t0/c0$a;->l(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IJJJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/b/a/t0/q0/r/c$a;->i:Z

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/t0/q0/r/c$a;->c()V

    return-void
.end method

.method public s(Ln3/y/b/a/w0/a0$e;JJ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Ln3/y/b/a/w0/b0;

    .line 2
    iget-object v2, v1, Ln3/y/b/a/w0/b0;->e:Ljava/lang/Object;

    .line 3
    check-cast v2, Ln3/y/b/a/t0/q0/r/f;

    .line 4
    instance-of v3, v2, Ln3/y/b/a/t0/q0/r/e;

    if-eqz v3, :cond_0

    .line 5
    check-cast v2, Ln3/y/b/a/t0/q0/r/e;

    move-wide/from16 v10, p4

    invoke-virtual {p0, v2, v10, v11}, Ln3/y/b/a/t0/q0/r/c$a;->d(Ln3/y/b/a/t0/q0/r/e;J)V

    .line 6
    iget-object v2, v0, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 7
    iget-object v3, v2, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    .line 8
    iget-object v4, v1, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 9
    iget-object v1, v1, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 10
    iget-object v5, v1, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 11
    iget-object v6, v1, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v7, 0x4

    .line 12
    iget-wide v12, v1, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v8, p2

    .line 13
    invoke-virtual/range {v3 .. v13}, Ln3/y/b/a/t0/c0$a;->i(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Loaded playlist has unexpected type."

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Ln3/y/b/a/t0/q0/r/c$a;->j:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method public t(Ln3/y/b/a/w0/a0$e;JJZ)V
    .locals 14

    .line 1
    move-object v0, p1

    check-cast v0, Ln3/y/b/a/w0/b0;

    move-object v1, p0

    .line 2
    iget-object v2, v1, Ln3/y/b/a/t0/q0/r/c$a;->k:Ln3/y/b/a/t0/q0/r/c;

    .line 3
    iget-object v3, v2, Ln3/y/b/a/t0/q0/r/c;->g:Ln3/y/b/a/t0/c0$a;

    .line 4
    iget-object v4, v0, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 5
    iget-object v0, v0, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 6
    iget-object v5, v0, Ln3/y/b/a/w0/d0;->c:Landroid/net/Uri;

    .line 7
    iget-object v6, v0, Ln3/y/b/a/w0/d0;->d:Ljava/util/Map;

    const/4 v7, 0x4

    .line 8
    iget-wide v12, v0, Ln3/y/b/a/w0/d0;->b:J

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    .line 9
    invoke-virtual/range {v3 .. v13}, Ln3/y/b/a/t0/c0$a;->f(Ln3/y/b/a/w0/k;Landroid/net/Uri;Ljava/util/Map;IJJJ)V

    return-void
.end method
