.class public final Le/m/a/c/g1/e0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/m/a/c/q1/t;

.field public final c:Le/m/a/c/q1/s;

.field public d:Le/m/a/c/g1/s;

.field public e:Lcom/google/android/exoplayer2/Format;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/o;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    .line 4
    new-instance v0, Le/m/a/c/q1/s;

    iget-object p1, p1, Le/m/a/c/q1/t;->a:[B

    invoke-direct {v0, p1}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/e0/o;->c:Le/m/a/c/q1/s;

    return-void
.end method

.method public static f(Le/m/a/c/q1/s;)J
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, v0}, Le/m/a/c/q1/s;->f(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Le/m/a/c/q1/s;->f(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/e0/o;->g:I

    .line 2
    iput-boolean v0, p0, Le/m/a/c/g1/e0/o;->l:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/e0/o;->k:J

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v1

    if-lez v1, :cond_1e

    .line 2
    iget v1, v0, Le/m/a/c/g1/e0/o;->g:I

    const/16 v2, 0x56

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1b

    const/16 v2, 0x8

    const/4 v6, 0x3

    if-eq v1, v4, :cond_18

    if-ne v1, v6, :cond_17

    .line 3
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v1

    iget v4, v0, Le/m/a/c/g1/e0/o;->i:I

    iget v7, v0, Le/m/a/c/g1/e0/o;->h:I

    sub-int/2addr v4, v7

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget-object v4, v0, Le/m/a/c/g1/e0/o;->c:Le/m/a/c/q1/s;

    iget-object v4, v4, Le/m/a/c/q1/s;->a:[B

    iget v7, v0, Le/m/a/c/g1/e0/o;->h:I

    move-object/from16 v8, p1

    invoke-virtual {v8, v4, v7, v1}, Le/m/a/c/q1/t;->d([BII)V

    .line 5
    iget v4, v0, Le/m/a/c/g1/e0/o;->h:I

    add-int/2addr v4, v1

    iput v4, v0, Le/m/a/c/g1/e0/o;->h:I

    .line 6
    iget v1, v0, Le/m/a/c/g1/e0/o;->i:I

    if-ne v4, v1, :cond_0

    .line 7
    iget-object v1, v0, Le/m/a/c/g1/e0/o;->c:Le/m/a/c/q1/s;

    invoke-virtual {v1, v5}, Le/m/a/c/q1/s;->j(I)V

    .line 8
    iget-object v1, v0, Le/m/a/c/g1/e0/o;->c:Le/m/a/c/q1/s;

    .line 9
    invoke-virtual {v1}, Le/m/a/c/q1/s;->e()Z

    move-result v4

    if-nez v4, :cond_f

    .line 10
    iput-boolean v3, v0, Le/m/a/c/g1/e0/o;->l:Z

    .line 11
    invoke-virtual {v1, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 12
    invoke-virtual {v1, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    iput v7, v0, Le/m/a/c/g1/e0/o;->m:I

    if-nez v7, :cond_e

    if-ne v4, v3, :cond_2

    .line 13
    invoke-static {v1}, Le/m/a/c/g1/e0/o;->f(Le/m/a/c/q1/s;)J

    .line 14
    :cond_2
    invoke-virtual {v1}, Le/m/a/c/q1/s;->e()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x6

    .line 15
    invoke-virtual {v1, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v9

    iput v9, v0, Le/m/a/c/g1/e0/o;->n:I

    const/4 v9, 0x4

    .line 16
    invoke-virtual {v1, v9}, Le/m/a/c/q1/s;->f(I)I

    move-result v10

    .line 17
    invoke-virtual {v1, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v11

    if-nez v10, :cond_c

    if-nez v11, :cond_c

    if-nez v4, :cond_3

    .line 18
    invoke-virtual {v1}, Le/m/a/c/q1/s;->d()I

    move-result v10

    .line 19
    invoke-virtual {v0, v1}, Le/m/a/c/g1/e0/o;->g(Le/m/a/c/q1/s;)I

    move-result v11

    .line 20
    invoke-virtual {v1, v10}, Le/m/a/c/q1/s;->j(I)V

    add-int/lit8 v10, v11, 0x7

    .line 21
    div-int/2addr v10, v2

    new-array v10, v10, [B

    .line 22
    invoke-virtual {v1, v10, v5, v11}, Le/m/a/c/q1/s;->g([BII)V

    .line 23
    iget-object v12, v0, Le/m/a/c/g1/e0/o;->f:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    iget v11, v0, Le/m/a/c/g1/e0/o;->t:I

    iget v13, v0, Le/m/a/c/g1/e0/o;->r:I

    .line 24
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v10, v0, Le/m/a/c/g1/e0/o;->a:Ljava/lang/String;

    const-string v17, "audio/mp4a-latm"

    move/from16 v18, v13

    move-object/from16 v13, v17

    move/from16 v17, v11

    move-object/from16 v22, v10

    .line 25
    invoke-static/range {v12 .. v22}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    .line 26
    iget-object v11, v0, Le/m/a/c/g1/e0/o;->e:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v10, v11}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 27
    iput-object v10, v0, Le/m/a/c/g1/e0/o;->e:Lcom/google/android/exoplayer2/Format;

    const-wide/32 v11, 0x3d090000

    .line 28
    iget v13, v10, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v13, v13

    div-long/2addr v11, v13

    iput-wide v11, v0, Le/m/a/c/g1/e0/o;->s:J

    .line 29
    iget-object v11, v0, Le/m/a/c/g1/e0/o;->d:Le/m/a/c/g1/s;

    invoke-interface {v11, v10}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_2

    .line 30
    :cond_3
    invoke-static {v1}, Le/m/a/c/g1/e0/o;->f(Le/m/a/c/q1/s;)J

    move-result-wide v10

    long-to-int v10, v10

    .line 31
    invoke-virtual {v0, v1}, Le/m/a/c/g1/e0/o;->g(Le/m/a/c/q1/s;)I

    move-result v11

    sub-int/2addr v10, v11

    .line 32
    invoke-virtual {v1, v10}, Le/m/a/c/q1/s;->l(I)V

    .line 33
    :cond_4
    :goto_2
    invoke-virtual {v1, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v10

    iput v10, v0, Le/m/a/c/g1/e0/o;->o:I

    if-eqz v10, :cond_9

    if-eq v10, v3, :cond_8

    if-eq v10, v6, :cond_7

    if-eq v10, v9, :cond_7

    const/4 v6, 0x5

    if-eq v10, v6, :cond_7

    if-eq v10, v7, :cond_6

    const/4 v6, 0x7

    if-ne v10, v6, :cond_5

    goto :goto_3

    .line 34
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 35
    :cond_6
    :goto_3
    invoke-virtual {v1, v3}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_4

    .line 36
    :cond_7
    invoke-virtual {v1, v7}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_4

    :cond_8
    const/16 v6, 0x9

    .line 37
    invoke-virtual {v1, v6}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_4

    .line 38
    :cond_9
    invoke-virtual {v1, v2}, Le/m/a/c/q1/s;->l(I)V

    .line 39
    :goto_4
    invoke-virtual {v1}, Le/m/a/c/q1/s;->e()Z

    move-result v6

    iput-boolean v6, v0, Le/m/a/c/g1/e0/o;->p:Z

    const-wide/16 v9, 0x0

    .line 40
    iput-wide v9, v0, Le/m/a/c/g1/e0/o;->q:J

    if-eqz v6, :cond_b

    if-ne v4, v3, :cond_a

    .line 41
    invoke-static {v1}, Le/m/a/c/g1/e0/o;->f(Le/m/a/c/q1/s;)J

    move-result-wide v3

    iput-wide v3, v0, Le/m/a/c/g1/e0/o;->q:J

    goto :goto_5

    .line 42
    :cond_a
    invoke-virtual {v1}, Le/m/a/c/q1/s;->e()Z

    move-result v3

    .line 43
    iget-wide v6, v0, Le/m/a/c/g1/e0/o;->q:J

    shl-long/2addr v6, v2

    invoke-virtual {v1, v2}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v6, v9

    iput-wide v6, v0, Le/m/a/c/g1/e0/o;->q:J

    if-nez v3, :cond_a

    .line 44
    :cond_b
    :goto_5
    invoke-virtual {v1}, Le/m/a/c/q1/s;->e()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 45
    invoke-virtual {v1, v2}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_6

    .line 46
    :cond_c
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 47
    :cond_d
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 48
    :cond_e
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 49
    :cond_f
    iget-boolean v3, v0, Le/m/a/c/g1/e0/o;->l:Z

    if-nez v3, :cond_10

    goto :goto_9

    .line 50
    :cond_10
    :goto_6
    iget v3, v0, Le/m/a/c/g1/e0/o;->m:I

    if-nez v3, :cond_16

    .line 51
    iget v3, v0, Le/m/a/c/g1/e0/o;->n:I

    if-nez v3, :cond_15

    .line 52
    iget v3, v0, Le/m/a/c/g1/e0/o;->o:I

    if-nez v3, :cond_14

    move v3, v5

    .line 53
    :goto_7
    invoke-virtual {v1, v2}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    add-int v13, v3, v4

    const/16 v3, 0xff

    if-eq v4, v3, :cond_13

    .line 54
    invoke-virtual {v1}, Le/m/a/c/q1/s;->d()I

    move-result v2

    and-int/lit8 v3, v2, 0x7

    if-nez v3, :cond_11

    .line 55
    iget-object v3, v0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v3, v2}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_8

    .line 56
    :cond_11
    iget-object v2, v0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    mul-int/lit8 v3, v13, 0x8

    invoke-virtual {v1, v2, v5, v3}, Le/m/a/c/q1/s;->g([BII)V

    .line 57
    iget-object v2, v0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/t;->C(I)V

    .line 58
    :goto_8
    iget-object v2, v0, Le/m/a/c/g1/e0/o;->d:Le/m/a/c/g1/s;

    iget-object v3, v0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    invoke-interface {v2, v3, v13}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 59
    iget-object v9, v0, Le/m/a/c/g1/e0/o;->d:Le/m/a/c/g1/s;

    iget-wide v10, v0, Le/m/a/c/g1/e0/o;->k:J

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 60
    iget-wide v2, v0, Le/m/a/c/g1/e0/o;->k:J

    iget-wide v6, v0, Le/m/a/c/g1/e0/o;->s:J

    add-long/2addr v2, v6

    iput-wide v2, v0, Le/m/a/c/g1/e0/o;->k:J

    .line 61
    iget-boolean v2, v0, Le/m/a/c/g1/e0/o;->p:Z

    if-eqz v2, :cond_12

    .line 62
    iget-wide v2, v0, Le/m/a/c/g1/e0/o;->q:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Le/m/a/c/q1/s;->l(I)V

    .line 63
    :cond_12
    :goto_9
    iput v5, v0, Le/m/a/c/g1/e0/o;->g:I

    goto/16 :goto_0

    :cond_13
    move v3, v13

    goto :goto_7

    .line 64
    :cond_14
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 65
    :cond_15
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 66
    :cond_16
    new-instance v1, Le/m/a/c/m0;

    invoke-direct {v1}, Le/m/a/c/m0;-><init>()V

    throw v1

    .line 67
    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_18
    move-object/from16 v8, p1

    .line 68
    iget v1, v0, Le/m/a/c/g1/e0/o;->j:I

    and-int/lit16 v1, v1, -0xe1

    shl-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Le/m/a/c/g1/e0/o;->i:I

    .line 69
    iget-object v2, v0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    iget-object v3, v2, Le/m/a/c/q1/t;->a:[B

    array-length v4, v3

    if-le v1, v4, :cond_1a

    .line 70
    array-length v4, v3

    if-ge v4, v1, :cond_19

    .line 71
    new-array v3, v1, [B

    :cond_19
    invoke-virtual {v2, v3, v1}, Le/m/a/c/q1/t;->A([BI)V

    .line 72
    iget-object v1, v0, Le/m/a/c/g1/e0/o;->c:Le/m/a/c/q1/s;

    iget-object v2, v0, Le/m/a/c/g1/e0/o;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 73
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    array-length v3, v2

    .line 75
    iput-object v2, v1, Le/m/a/c/q1/s;->a:[B

    .line 76
    iput v5, v1, Le/m/a/c/q1/s;->b:I

    .line 77
    iput v5, v1, Le/m/a/c/q1/s;->c:I

    .line 78
    iput v3, v1, Le/m/a/c/q1/s;->d:I

    .line 79
    :cond_1a
    iput v5, v0, Le/m/a/c/g1/e0/o;->h:I

    .line 80
    iput v6, v0, Le/m/a/c/g1/e0/o;->g:I

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v8, p1

    .line 81
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v1

    and-int/lit16 v3, v1, 0xe0

    const/16 v6, 0xe0

    if-ne v3, v6, :cond_1c

    .line 82
    iput v1, v0, Le/m/a/c/g1/e0/o;->j:I

    .line 83
    iput v4, v0, Le/m/a/c/g1/e0/o;->g:I

    goto/16 :goto_0

    :cond_1c
    if-eq v1, v2, :cond_0

    .line 84
    iput v5, v0, Le/m/a/c/g1/e0/o;->g:I

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v8, p1

    .line 85
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 86
    iput v3, v0, Le/m/a/c/g1/e0/o;->g:I

    goto/16 :goto_0

    :cond_1e
    return-void
.end method

.method public e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/o;->d:Le/m/a/c/g1/s;

    .line 3
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/o;->f:Ljava/lang/String;

    return-void
.end method

.method public final g(Le/m/a/c/q1/s;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/a/c/q1/s;->b()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Le/m/a/c/q1/g;->b(Le/m/a/c/q1/s;Z)Landroid/util/Pair;

    move-result-object v1

    .line 3
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Le/m/a/c/g1/e0/o;->r:I

    .line 4
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Le/m/a/c/g1/e0/o;->t:I

    .line 5
    invoke-virtual {p1}, Le/m/a/c/q1/s;->b()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method
