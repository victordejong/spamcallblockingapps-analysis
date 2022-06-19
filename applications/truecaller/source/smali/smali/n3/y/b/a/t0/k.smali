.class public final Ln3/y/b/a/t0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/y/b/a/t0/i0;

.field public final b:Ln3/y/b/a/p0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/c<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/x;

.field public final d:Z

.field public e:Landroidx/media2/exoplayer/external/Format;

.field public f:Ln3/y/b/a/p0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/p0/b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/i0;Ln3/y/b/a/p0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/t0/i0;",
            "Ln3/y/b/a/p0/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/k;->a:Ln3/y/b/a/t0/i0;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/t0/k;->b:Ln3/y/b/a/p0/c;

    .line 4
    new-instance p1, Ln3/y/b/a/x;

    invoke-direct {p1}, Ln3/y/b/a/x;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/t0/k;->c:Ln3/y/b/a/x;

    .line 5
    invoke-interface {p2}, Ln3/y/b/a/p0/c;->a()I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Ln3/y/b/a/t0/k;->d:Z

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/k;->a:Ln3/y/b/a/t0/i0;

    .line 2
    iget-object v1, v0, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    iget-object v0, v0, Ln3/y/b/a/t0/i0;->i:Landroidx/media2/exoplayer/external/Format;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget v2, v1, Ln3/y/b/a/t0/h0;->l:I

    iget v3, v1, Ln3/y/b/a/t0/h0;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v3, :cond_0

    .line 5
    monitor-exit v1

    move v0, v6

    goto :goto_1

    .line 6
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v2

    .line 7
    iget-object v3, v1, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v0, :cond_1

    .line 8
    monitor-exit v1

    move v0, v7

    goto :goto_1

    .line 9
    :cond_1
    :try_start_2
    iget-object v0, v1, Ln3/y/b/a/t0/h0;->e:[I

    aget v0, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    monitor-exit v1

    :goto_1
    if-nez v0, :cond_3

    return p1

    :cond_3
    if-ne v0, v7, :cond_4

    return v7

    :cond_4
    if-ne v0, v5, :cond_7

    .line 10
    iget-object p1, p0, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Ln3/y/b/a/t0/k;->d:Z

    if-eqz p1, :cond_6

    :cond_5
    move v6, v7

    :cond_6
    return v6

    :cond_7
    if-ne v0, v4, :cond_a

    .line 11
    iget-object p1, p0, Ln3/y/b/a/t0/k;->b:Ln3/y/b/a/p0/c;

    sget-object v0, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1}, Ln3/y/b/a/p0/b;->getState()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    :cond_8
    move v6, v7

    :cond_9
    return v6

    .line 14
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v1

    throw p1
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    invoke-interface {v0}, Ln3/y/b/a/p0/b;->b()Ln3/y/b/a/p0/b$a;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ln3/y/b/a/x;Ln3/y/b/a/o0/c;ZZJ)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Ln3/y/b/a/t0/k;->e:Landroidx/media2/exoplayer/external/Format;

    const/4 v4, 0x4

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v7, v1, Ln3/y/b/a/t0/k;->b:Ln3/y/b/a/p0/c;

    sget-object v8, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    if-eq v7, v8, :cond_2

    iget-object v3, v3, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v3, :cond_2

    iget-object v3, v1, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v3}, Ln3/y/b/a/p0/b;->getState()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 5
    iget-boolean v3, v1, Ln3/y/b/a/t0/k;->d:Z

    if-eqz v3, :cond_1

    move v7, v6

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    move v3, v6

    move v8, v3

    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v6

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x0

    .line 6
    :goto_3
    iget-object v9, v1, Ln3/y/b/a/t0/k;->a:Ln3/y/b/a/t0/i0;

    iget-object v10, v1, Ln3/y/b/a/t0/k;->c:Ln3/y/b/a/x;

    .line 7
    iget-object v11, v9, Ln3/y/b/a/t0/i0;->c:Ln3/y/b/a/t0/h0;

    iget-object v12, v9, Ln3/y/b/a/t0/i0;->i:Landroidx/media2/exoplayer/external/Format;

    iget-object v13, v9, Ln3/y/b/a/t0/i0;->d:Ln3/y/b/a/t0/h0$a;

    .line 8
    monitor-enter v11

    .line 9
    :try_start_0
    invoke-virtual {v11}, Ln3/y/b/a/t0/h0;->f()Z

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-nez v14, :cond_8

    if-nez p4, :cond_7

    .line 10
    iget-boolean v7, v11, Ln3/y/b/a/t0/h0;->o:Z

    if-eqz v7, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    iget-object v7, v11, Ln3/y/b/a/t0/h0;->r:Landroidx/media2/exoplayer/external/Format;

    if-eqz v7, :cond_6

    if-nez v3, :cond_5

    if-eq v7, v12, :cond_6

    .line 12
    :cond_5
    iput-object v7, v10, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit v11

    goto :goto_a

    .line 14
    :cond_6
    monitor-exit v11

    goto :goto_5

    .line 15
    :cond_7
    :goto_4
    :try_start_1
    iput v4, v2, Ln3/y/b/a/o0/c;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v11

    goto :goto_7

    .line 17
    :cond_8
    :try_start_2
    iget v14, v11, Ln3/y/b/a/t0/h0;->l:I

    invoke-virtual {v11, v14}, Ln3/y/b/a/t0/h0;->e(I)I

    move-result v14

    if-nez v3, :cond_d

    .line 18
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v14

    if-eq v3, v12, :cond_9

    goto :goto_9

    :cond_9
    if-eqz v7, :cond_a

    .line 19
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->e:[I

    aget v3, v3, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v3, v15

    if-eqz v3, :cond_a

    .line 20
    monitor-exit v11

    :goto_5
    const/4 v3, -0x3

    goto :goto_8

    .line 21
    :cond_a
    :try_start_3
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->e:[I

    aget v3, v3, v14

    .line 22
    iput v3, v2, Ln3/y/b/a/o0/c;->a:I

    .line 23
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->f:[J

    aget-wide v4, v3, v14

    iput-wide v4, v2, Ln3/y/b/a/o0/c;->d:J

    .line 24
    iget-object v3, v2, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_b

    iget v3, v2, Ln3/y/b/a/o0/c;->f:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_b

    move v3, v6

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    .line 25
    monitor-exit v11

    goto :goto_7

    .line 26
    :cond_c
    :try_start_4
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->d:[I

    aget v3, v3, v14

    iput v3, v13, Ln3/y/b/a/t0/h0$a;->a:I

    .line 27
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->c:[J

    aget-wide v4, v3, v14

    iput-wide v4, v13, Ln3/y/b/a/t0/h0$a;->b:J

    .line 28
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->g:[Ln3/y/b/a/q0/p$a;

    aget-object v3, v3, v14

    iput-object v3, v13, Ln3/y/b/a/t0/h0$a;->c:Ln3/y/b/a/q0/p$a;

    .line 29
    iget v3, v11, Ln3/y/b/a/t0/h0;->l:I

    add-int/2addr v3, v6

    iput v3, v11, Ln3/y/b/a/t0/h0;->l:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 30
    monitor-exit v11

    :goto_7
    const/4 v3, -0x4

    :goto_8
    const/4 v4, -0x5

    goto :goto_b

    .line 31
    :cond_d
    :goto_9
    :try_start_5
    iget-object v3, v11, Ln3/y/b/a/t0/h0;->h:[Landroidx/media2/exoplayer/external/Format;

    aget-object v3, v3, v14

    iput-object v3, v10, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    monitor-exit v11

    :goto_a
    const/4 v3, -0x5

    goto :goto_8

    :goto_b
    if-eq v3, v4, :cond_21

    const/4 v4, -0x4

    if-eq v3, v4, :cond_f

    const/4 v5, -0x3

    if-ne v3, v5, :cond_e

    const/4 v5, -0x3

    goto/16 :goto_12

    .line 33
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 34
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ln3/y/b/a/o0/c;->g()Z

    move-result v3

    if-nez v3, :cond_20

    .line 35
    iget-wide v10, v2, Ln3/y/b/a/o0/c;->d:J

    cmp-long v3, v10, p5

    if-gez v3, :cond_10

    const/high16 v3, -0x80000000

    .line 36
    iget v5, v2, Ln3/y/b/a/o0/c;->a:I

    or-int/2addr v3, v5

    iput v3, v2, Ln3/y/b/a/o0/c;->a:I

    .line 37
    :cond_10
    iget-object v3, v2, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_11

    iget v3, v2, Ln3/y/b/a/o0/c;->f:I

    if-nez v3, :cond_11

    move v3, v6

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_20

    .line 38
    iget-object v3, v9, Ln3/y/b/a/t0/i0;->d:Ln3/y/b/a/t0/h0$a;

    .line 39
    invoke-virtual {v2, v15}, Ln3/y/b/a/o0/c;->e(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 40
    iget-wide v10, v3, Ln3/y/b/a/t0/h0$a;->b:J

    .line 41
    iget-object v5, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v5, v6}, Ln3/y/b/a/x0/m;->v(I)V

    .line 42
    iget-object v5, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v9, v10, v11, v5, v6}, Ln3/y/b/a/t0/i0;->p(J[BI)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 43
    iget-object v5, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    const/4 v12, 0x0

    aget-byte v5, v5, v12

    and-int/lit16 v12, v5, 0x80

    if-eqz v12, :cond_12

    move v12, v6

    goto :goto_d

    :cond_12
    const/4 v12, 0x0

    :goto_d
    and-int/lit8 v5, v5, 0x7f

    .line 44
    iget-object v13, v2, Ln3/y/b/a/o0/c;->b:Ln3/y/b/a/o0/a;

    iget-object v14, v13, Ln3/y/b/a/o0/a;->a:[B

    if-nez v14, :cond_13

    const/16 v14, 0x10

    new-array v14, v14, [B

    .line 45
    iput-object v14, v13, Ln3/y/b/a/o0/a;->a:[B

    .line 46
    :cond_13
    iget-object v13, v13, Ln3/y/b/a/o0/a;->a:[B

    invoke-virtual {v9, v10, v11, v13, v5}, Ln3/y/b/a/t0/i0;->p(J[BI)V

    int-to-long v13, v5

    add-long/2addr v10, v13

    if-eqz v12, :cond_14

    .line 47
    iget-object v5, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    const/4 v13, 0x2

    invoke-virtual {v5, v13}, Ln3/y/b/a/x0/m;->v(I)V

    .line 48
    iget-object v5, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    iget-object v5, v5, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v9, v10, v11, v5, v13}, Ln3/y/b/a/t0/i0;->p(J[BI)V

    const-wide/16 v13, 0x2

    add-long/2addr v10, v13

    .line 49
    iget-object v5, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->t()I

    move-result v5

    goto :goto_e

    :cond_14
    move v5, v6

    .line 50
    :goto_e
    iget-object v13, v2, Ln3/y/b/a/o0/c;->b:Ln3/y/b/a/o0/a;

    iget-object v14, v13, Ln3/y/b/a/o0/a;->b:[I

    if-eqz v14, :cond_15

    .line 51
    array-length v15, v14

    if-ge v15, v5, :cond_16

    .line 52
    :cond_15
    new-array v14, v5, [I

    .line 53
    :cond_16
    iget-object v13, v13, Ln3/y/b/a/o0/a;->c:[I

    if-eqz v13, :cond_17

    .line 54
    array-length v15, v13

    if-ge v15, v5, :cond_18

    .line 55
    :cond_17
    new-array v13, v5, [I

    :cond_18
    if-eqz v12, :cond_1a

    mul-int/lit8 v12, v5, 0x6

    .line 56
    iget-object v15, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v15, v12}, Ln3/y/b/a/x0/m;->v(I)V

    .line 57
    iget-object v15, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    iget-object v15, v15, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v9, v10, v11, v15, v12}, Ln3/y/b/a/t0/i0;->p(J[BI)V

    int-to-long v6, v12

    add-long/2addr v10, v6

    .line 58
    iget-object v6, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ln3/y/b/a/x0/m;->z(I)V

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_19

    .line 59
    iget-object v7, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->t()I

    move-result v7

    aput v7, v14, v6

    .line 60
    iget-object v7, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v7}, Ln3/y/b/a/x0/m;->r()I

    move-result v7

    aput v7, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_19
    move/from16 p5, v5

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    .line 61
    aput v6, v14, v6

    .line 62
    iget v7, v3, Ln3/y/b/a/t0/h0$a;->a:I

    move/from16 p5, v5

    iget-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    sub-int/2addr v7, v4

    aput v7, v13, v6

    .line 63
    :goto_10
    iget-object v4, v3, Ln3/y/b/a/t0/h0$a;->c:Ln3/y/b/a/q0/p$a;

    .line 64
    iget-object v5, v2, Ln3/y/b/a/o0/c;->b:Ln3/y/b/a/o0/a;

    iget-object v6, v4, Ln3/y/b/a/q0/p$a;->b:[B

    iget-object v7, v5, Ln3/y/b/a/o0/a;->a:[B

    iget v12, v4, Ln3/y/b/a/q0/p$a;->a:I

    iget v15, v4, Ln3/y/b/a/q0/p$a;->c:I

    iget v4, v4, Ln3/y/b/a/q0/p$a;->d:I

    .line 65
    iput-object v14, v5, Ln3/y/b/a/o0/a;->b:[I

    .line 66
    iput-object v13, v5, Ln3/y/b/a/o0/a;->c:[I

    .line 67
    iput-object v7, v5, Ln3/y/b/a/o0/a;->a:[B

    .line 68
    iget-object v0, v5, Ln3/y/b/a/o0/a;->d:Landroid/media/MediaCodec$CryptoInfo;

    move/from16 v1, p5

    iput v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 69
    iput-object v14, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 70
    iput-object v13, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 71
    iput-object v6, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 72
    iput-object v7, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 73
    iput v12, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 74
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1b

    .line 75
    iget-object v0, v5, Ln3/y/b/a/o0/a;->e:Ln3/y/b/a/o0/a$b;

    .line 76
    iget-object v1, v0, Ln3/y/b/a/o0/a$b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1, v15, v4}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 77
    iget-object v1, v0, Ln3/y/b/a/o0/a$b;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Ln3/y/b/a/o0/a$b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 78
    :cond_1b
    iget-wide v0, v3, Ln3/y/b/a/t0/h0$a;->b:J

    sub-long/2addr v10, v0

    long-to-int v4, v10

    int-to-long v5, v4

    add-long/2addr v0, v5

    .line 79
    iput-wide v0, v3, Ln3/y/b/a/t0/h0$a;->b:J

    .line 80
    iget v0, v3, Ln3/y/b/a/t0/h0$a;->a:I

    sub-int/2addr v0, v4

    iput v0, v3, Ln3/y/b/a/t0/h0$a;->a:I

    :cond_1c
    const/high16 v0, 0x10000000

    .line 81
    invoke-virtual {v2, v0}, Ln3/y/b/a/o0/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 82
    iget-object v0, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/m;->v(I)V

    .line 83
    iget-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    iget-object v0, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v9, v4, v5, v0, v1}, Ln3/y/b/a/t0/i0;->p(J[BI)V

    .line 84
    iget-object v0, v9, Ln3/y/b/a/t0/i0;->e:Ln3/y/b/a/x0/m;

    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->r()I

    move-result v0

    .line 85
    iget-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    .line 86
    iget v4, v3, Ln3/y/b/a/t0/h0$a;->a:I

    sub-int/2addr v4, v1

    iput v4, v3, Ln3/y/b/a/t0/h0$a;->a:I

    .line 87
    invoke-virtual {v2, v0}, Ln3/y/b/a/o0/c;->c(I)V

    .line 88
    iget-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    iget-object v1, v2, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v9, v4, v5, v1, v0}, Ln3/y/b/a/t0/i0;->o(JLjava/nio/ByteBuffer;I)V

    .line 89
    iget-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v3, Ln3/y/b/a/t0/h0$a;->b:J

    .line 90
    iget v1, v3, Ln3/y/b/a/t0/h0$a;->a:I

    sub-int/2addr v1, v0

    iput v1, v3, Ln3/y/b/a/t0/h0$a;->a:I

    .line 91
    iget-object v0, v2, Ln3/y/b/a/o0/c;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_1e

    .line 92
    :cond_1d
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Ln3/y/b/a/o0/c;->e:Ljava/nio/ByteBuffer;

    .line 93
    :cond_1e
    iget-object v0, v2, Ln3/y/b/a/o0/c;->e:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    iget-object v0, v2, Ln3/y/b/a/o0/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    iget-wide v0, v3, Ln3/y/b/a/t0/h0$a;->b:J

    iget-object v2, v2, Ln3/y/b/a/o0/c;->e:Ljava/nio/ByteBuffer;

    iget v3, v3, Ln3/y/b/a/t0/h0$a;->a:I

    invoke-virtual {v9, v0, v1, v2, v3}, Ln3/y/b/a/t0/i0;->o(JLjava/nio/ByteBuffer;I)V

    goto :goto_11

    .line 96
    :cond_1f
    iget v0, v3, Ln3/y/b/a/t0/h0$a;->a:I

    invoke-virtual {v2, v0}, Ln3/y/b/a/o0/c;->c(I)V

    .line 97
    iget-wide v0, v3, Ln3/y/b/a/t0/h0$a;->b:J

    iget-object v2, v2, Ln3/y/b/a/o0/c;->c:Ljava/nio/ByteBuffer;

    iget v3, v3, Ln3/y/b/a/t0/h0$a;->a:I

    invoke-virtual {v9, v0, v1, v2, v3}, Ln3/y/b/a/t0/i0;->o(JLjava/nio/ByteBuffer;I)V

    :cond_20
    :goto_11
    const/4 v5, -0x4

    goto :goto_12

    .line 98
    :cond_21
    iget-object v0, v10, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    iput-object v0, v9, Ln3/y/b/a/t0/i0;->i:Landroidx/media2/exoplayer/external/Format;

    const/4 v5, -0x5

    :goto_12
    const/4 v0, -0x5

    move-object/from16 v1, p0

    if-ne v5, v0, :cond_27

    if-eqz v8, :cond_22

    .line 99
    iget-object v0, v1, Ln3/y/b/a/t0/k;->e:Landroidx/media2/exoplayer/external/Format;

    iget-object v2, v1, Ln3/y/b/a/t0/k;->c:Ln3/y/b/a/x;

    iget-object v2, v2, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    if-ne v0, v2, :cond_22

    const/4 v0, -0x3

    return v0

    .line 100
    :cond_22
    iget-object v0, v1, Ln3/y/b/a/t0/k;->c:Ln3/y/b/a/x;

    iget-object v0, v0, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 101
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p1

    .line 102
    iput-object v0, v2, Ln3/y/b/a/x;->c:Landroidx/media2/exoplayer/external/Format;

    .line 103
    iget-object v3, v1, Ln3/y/b/a/t0/k;->e:Landroidx/media2/exoplayer/external/Format;

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    iget-object v3, v3, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    goto :goto_13

    :cond_23
    move-object v3, v4

    .line 104
    :goto_13
    iput-object v0, v1, Ln3/y/b/a/t0/k;->e:Landroidx/media2/exoplayer/external/Format;

    .line 105
    iget-object v6, v1, Ln3/y/b/a/t0/k;->b:Ln3/y/b/a/p0/c;

    sget-object v7, Ln3/y/b/a/p0/c;->a:Ln3/y/b/a/p0/c;

    if-ne v6, v7, :cond_24

    goto :goto_15

    :cond_24
    const/4 v6, 0x1

    .line 106
    iput-boolean v6, v2, Ln3/y/b/a/x;->a:Z

    .line 107
    iget-object v6, v1, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    iput-object v6, v2, Ln3/y/b/a/x;->b:Ln3/y/b/a/p0/b;

    .line 108
    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-static {v3, v0}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_15

    .line 109
    :cond_25
    iget-object v0, v1, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    .line 110
    iget-object v3, v1, Ln3/y/b/a/t0/k;->e:Landroidx/media2/exoplayer/external/Format;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    if-eqz v3, :cond_26

    .line 111
    iget-object v4, v1, Ln3/y/b/a/t0/k;->b:Ln3/y/b/a/p0/c;

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    .line 113
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {v4, v6, v3}, Ln3/y/b/a/p0/c;->c(Landroid/os/Looper;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Ln3/y/b/a/p0/b;

    move-result-object v3

    iput-object v3, v1, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    goto :goto_14

    .line 115
    :cond_26
    iput-object v4, v1, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    .line 116
    :goto_14
    iget-object v3, v1, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    iput-object v3, v2, Ln3/y/b/a/x;->b:Ln3/y/b/a/p0/b;

    if-eqz v0, :cond_27

    .line 117
    invoke-interface {v0}, Ln3/y/b/a/p0/b;->d()V

    :cond_27
    :goto_15
    return v5

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit v11

    throw v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ln3/y/b/a/p0/b;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/y/b/a/t0/k;->f:Ln3/y/b/a/p0/b;

    :cond_0
    return-void
.end method
