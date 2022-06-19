.class public final synthetic Ln3/y/b/a/t0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/t0/f0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/d0;->a:Ln3/y/b/a/t0/f0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 45

    move-object/from16 v1, p0

    iget-object v0, v1, Ln3/y/b/a/t0/d0;->a:Ln3/y/b/a/t0/f0;

    .line 1
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->q:Ln3/y/b/a/q0/n;

    .line 2
    iget-boolean v3, v0, Ln3/y/b/a/t0/f0;->P:Z

    if-nez v3, :cond_b

    iget-boolean v3, v0, Ln3/y/b/a/t0/f0;->w:Z

    if-nez v3, :cond_b

    iget-boolean v3, v0, Ln3/y/b/a/t0/f0;->v:Z

    if-eqz v3, :cond_b

    if-nez v2, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v3, v0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 4
    invoke-virtual {v7}, Ln3/y/b/a/t0/i0;->k()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v3, v0, Ln3/y/b/a/t0/f0;->l:Ln3/y/b/a/x0/c;

    .line 6
    monitor-enter v3

    .line 7
    :try_start_0
    iput-boolean v5, v3, Ln3/y/b/a/x0/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v3

    .line 9
    iget-object v3, v0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    array-length v3, v3

    .line 10
    new-array v4, v3, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 11
    new-array v6, v3, [Z

    .line 12
    invoke-interface {v2}, Ln3/y/b/a/q0/n;->g()J

    move-result-wide v7

    iput-wide v7, v0, Ln3/y/b/a/t0/f0;->E:J

    move v7, v5

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v3, :cond_9

    .line 13
    iget-object v9, v0, Ln3/y/b/a/t0/f0;->s:[Ln3/y/b/a/t0/i0;

    aget-object v9, v9, v7

    invoke-virtual {v9}, Ln3/y/b/a/t0/i0;->k()Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    .line 14
    iget-object v10, v9, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    .line 15
    invoke-static {v10}, Ln3/y/b/a/x0/j;->f(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 16
    invoke-static {v10}, Ln3/y/b/a/x0/j;->g(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v10, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v8

    .line 17
    :goto_3
    aput-boolean v10, v6, v7

    .line 18
    iget-boolean v12, v0, Ln3/y/b/a/t0/f0;->y:Z

    or-int/2addr v10, v12

    iput-boolean v10, v0, Ln3/y/b/a/t0/f0;->y:Z

    .line 19
    iget-object v10, v0, Ln3/y/b/a/t0/f0;->r:Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    if-eqz v10, :cond_8

    if-nez v11, :cond_5

    .line 20
    iget-object v12, v0, Ln3/y/b/a/t0/f0;->u:[Ln3/y/b/a/t0/f0$f;

    aget-object v12, v12, v7

    iget-boolean v12, v12, Ln3/y/b/a/t0/f0$f;->b:Z

    if-eqz v12, :cond_7

    .line 21
    :cond_5
    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v12, :cond_6

    .line 22
    new-instance v12, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v13, v8, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v10, v13, v5

    invoke-direct {v12, v13}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v13, v8, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v10, v13, v5

    .line 23
    invoke-virtual {v12, v13}, Landroidx/media2/exoplayer/external/metadata/Metadata;->a([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v12

    .line 24
    :goto_4
    iget-object v13, v9, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v9, v13, v12}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v9

    :cond_7
    if-eqz v11, :cond_8

    .line 25
    iget v11, v9, Landroidx/media2/exoplayer/external/Format;->e:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_8

    iget v10, v10, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    if-eq v10, v12, :cond_8

    .line 26
    new-instance v11, Landroidx/media2/exoplayer/external/Format;

    move-object v13, v11

    iget-object v14, v9, Landroidx/media2/exoplayer/external/Format;->a:Ljava/lang/String;

    iget-object v15, v9, Landroidx/media2/exoplayer/external/Format;->b:Ljava/lang/String;

    iget v12, v9, Landroidx/media2/exoplayer/external/Format;->c:I

    move/from16 v16, v12

    iget v12, v9, Landroidx/media2/exoplayer/external/Format;->d:I

    move/from16 v17, v12

    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    move-object/from16 v19, v12

    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v20, v12

    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->h:Ljava/lang/String;

    move-object/from16 v21, v12

    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    move-object/from16 v22, v12

    iget v12, v9, Landroidx/media2/exoplayer/external/Format;->j:I

    move/from16 v23, v12

    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->k:Ljava/util/List;

    move-object/from16 v24, v12

    iget-object v12, v9, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v25, v12

    move-object/from16 v44, v6

    iget-wide v5, v9, Landroidx/media2/exoplayer/external/Format;->m:J

    move-wide/from16 v26, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->n:I

    move/from16 v28, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->o:I

    move/from16 v29, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->p:F

    move/from16 v30, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->q:I

    move/from16 v31, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->r:F

    move/from16 v32, v5

    iget-object v5, v9, Landroidx/media2/exoplayer/external/Format;->t:[B

    move-object/from16 v33, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->s:I

    move/from16 v34, v5

    iget-object v5, v9, Landroidx/media2/exoplayer/external/Format;->u:Landroidx/media2/exoplayer/external/video/ColorInfo;

    move-object/from16 v35, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->v:I

    move/from16 v36, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->w:I

    move/from16 v37, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->x:I

    move/from16 v38, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->y:I

    move/from16 v39, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->z:I

    move/from16 v40, v5

    iget-object v5, v9, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    move-object/from16 v41, v5

    iget v5, v9, Landroidx/media2/exoplayer/external/Format;->B:I

    move/from16 v42, v5

    iget-object v5, v9, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/Class;

    move-object/from16 v43, v5

    move/from16 v18, v10

    invoke-direct/range {v13 .. v43}, Landroidx/media2/exoplayer/external/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;JIIFIF[BILandroidx/media2/exoplayer/external/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    goto :goto_5

    :cond_8
    move-object/from16 v44, v6

    move-object v11, v9

    .line 27
    :goto_5
    new-instance v5, Landroidx/media2/exoplayer/external/source/TrackGroup;

    new-array v6, v8, [Landroidx/media2/exoplayer/external/Format;

    const/4 v9, 0x0

    aput-object v11, v6, v9

    invoke-direct {v5, v6}, Landroidx/media2/exoplayer/external/source/TrackGroup;-><init>([Landroidx/media2/exoplayer/external/Format;)V

    aput-object v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    move-object/from16 v6, v44

    goto/16 :goto_1

    :cond_9
    move-object/from16 v44, v6

    .line 28
    iget-wide v5, v0, Ln3/y/b/a/t0/f0;->J:J

    const-wide/16 v9, -0x1

    cmp-long v3, v5, v9

    if-nez v3, :cond_a

    invoke-interface {v2}, Ln3/y/b/a/q0/n;->g()J

    move-result-wide v5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v5, v9

    if-nez v3, :cond_a

    const/4 v3, 0x7

    goto :goto_6

    :cond_a
    move v3, v8

    .line 29
    :goto_6
    iput v3, v0, Ln3/y/b/a/t0/f0;->z:I

    .line 30
    new-instance v3, Ln3/y/b/a/t0/f0$d;

    new-instance v5, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    invoke-direct {v5, v4}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    move-object/from16 v4, v44

    invoke-direct {v3, v2, v5, v4}, Ln3/y/b/a/t0/f0$d;-><init>(Ln3/y/b/a/q0/n;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V

    iput-object v3, v0, Ln3/y/b/a/t0/f0;->x:Ln3/y/b/a/t0/f0$d;

    .line 31
    iput-boolean v8, v0, Ln3/y/b/a/t0/f0;->w:Z

    .line 32
    iget-object v3, v0, Ln3/y/b/a/t0/f0;->f:Ln3/y/b/a/t0/f0$c;

    iget-wide v4, v0, Ln3/y/b/a/t0/f0;->E:J

    invoke-interface {v2}, Ln3/y/b/a/q0/n;->c()Z

    move-result v2

    check-cast v3, Ln3/y/b/a/t0/g0;

    invoke-virtual {v3, v4, v5, v2}, Ln3/y/b/a/t0/g0;->q(JZ)V

    .line 33
    iget-object v2, v0, Ln3/y/b/a/t0/f0;->p:Ln3/y/b/a/t0/s$a;

    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v2, v0}, Ln3/y/b/a/t0/s$a;->i(Ln3/y/b/a/t0/s;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 36
    monitor-exit v3

    throw v2

    :cond_b
    :goto_7
    return-void
.end method
