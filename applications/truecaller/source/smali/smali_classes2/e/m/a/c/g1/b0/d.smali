.class public final Le/m/a/c/g1/b0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# static fields
.field public static final synthetic q:I


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Le/m/a/c/q1/t;

.field public final d:Le/m/a/c/g1/o;

.field public final e:Le/m/a/c/g1/m;

.field public final f:Le/m/a/c/g1/n;

.field public g:Le/m/a/c/g1/i;

.field public h:Le/m/a/c/g1/s;

.field public i:I

.field public j:Lcom/google/android/exoplayer2/metadata/Metadata;

.field public k:Le/m/a/c/g1/b0/e;

.field public l:Z

.field public m:J

.field public n:J

.field public o:J

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/g1/b0/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Le/m/a/c/g1/b0/d;->a:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Le/m/a/c/g1/b0/d;->b:J

    .line 5
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v2, 0xa

    invoke-direct {p1, v2}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    .line 6
    new-instance p1, Le/m/a/c/g1/o;

    invoke-direct {p1}, Le/m/a/c/g1/o;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    .line 7
    new-instance p1, Le/m/a/c/g1/m;

    invoke-direct {p1}, Le/m/a/c/g1/m;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/b0/d;->e:Le/m/a/c/g1/m;

    .line 8
    iput-wide v0, p0, Le/m/a/c/g1/b0/d;->m:J

    .line 9
    new-instance p1, Le/m/a/c/g1/n;

    invoke-direct {p1}, Le/m/a/c/g1/n;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/b0/d;->f:Le/m/a/c/g1/n;

    return-void
.end method

.method public static c(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Le/m/a/c/g1/b0/d;->i:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide p2, p0, Le/m/a/c/g1/b0/d;->m:J

    const-wide/16 p2, 0x0

    .line 3
    iput-wide p2, p0, Le/m/a/c/g1/b0/d;->n:J

    .line 4
    iput p1, p0, Le/m/a/c/g1/b0/d;->p:I

    return-void
.end method

.method public final b(Le/m/a/c/g1/e;)Le/m/a/c/g1/b0/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 3
    iget-object v0, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 4
    iget-object v0, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v0

    iget-object v1, p0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    invoke-static {v0, v1}, Le/m/a/c/g1/o;->d(ILe/m/a/c/g1/o;)Z

    .line 5
    new-instance v0, Le/m/a/c/g1/b0/b;

    .line 6
    iget-wide v3, p1, Le/m/a/c/g1/e;->c:J

    .line 7
    iget-wide v5, p1, Le/m/a/c/g1/e;->d:J

    .line 8
    iget-object v7, p0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le/m/a/c/g1/b0/b;-><init>(JJLe/m/a/c/g1/o;)V

    return-object v0
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Le/m/a/c/g1/b0/d;->i:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v4}, Le/m/a/c/g1/b0/d;->f(Le/m/a/c/g1/e;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    .line 3
    :cond_0
    :goto_0
    iget-object v2, v0, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    const-wide/32 v5, 0xf4240

    const/4 v9, 0x1

    if-nez v2, :cond_22

    .line 4
    new-instance v2, Le/m/a/c/q1/t;

    iget-object v10, v0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v10, v10, Le/m/a/c/g1/o;->c:I

    invoke-direct {v2, v10}, Le/m/a/c/q1/t;-><init>(I)V

    .line 5
    iget-object v10, v2, Le/m/a/c/q1/t;->a:[B

    iget-object v11, v0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v11, v11, Le/m/a/c/g1/o;->c:I

    .line 6
    invoke-virtual {v1, v10, v4, v11, v4}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 7
    iget-object v10, v0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v11, v10, Le/m/a/c/g1/o;->a:I

    and-int/2addr v11, v9

    const/16 v12, 0x24

    const/16 v13, 0x15

    iget v10, v10, Le/m/a/c/g1/o;->e:I

    if-eqz v11, :cond_1

    if-eq v10, v9, :cond_3

    move v13, v12

    goto :goto_1

    :cond_1
    if-eq v10, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v13, 0xd

    .line 8
    :cond_3
    :goto_1
    iget v10, v2, Le/m/a/c/q1/t;->c:I

    add-int/lit8 v11, v13, 0x4

    const v14, 0x56425249

    const v15, 0x58696e67

    const v7, 0x496e666f

    if-lt v10, v11, :cond_4

    .line 9
    invoke-virtual {v2, v13}, Le/m/a/c/q1/t;->C(I)V

    .line 10
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v8

    if-eq v8, v15, :cond_6

    if-ne v8, v7, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    iget v8, v2, Le/m/a/c/q1/t;->c:I

    const/16 v10, 0x28

    if-lt v8, v10, :cond_5

    .line 12
    invoke-virtual {v2, v12}, Le/m/a/c/q1/t;->C(I)V

    .line 13
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v8

    if-ne v8, v14, :cond_5

    move v8, v14

    goto :goto_2

    :cond_5
    move v8, v4

    :cond_6
    :goto_2
    const/4 v11, 0x2

    if-eq v8, v15, :cond_10

    if-ne v8, v7, :cond_7

    goto/16 :goto_9

    :cond_7
    if-ne v8, v14, :cond_f

    .line 14
    iget-wide v7, v1, Le/m/a/c/g1/e;->d:J

    .line 15
    iget-object v13, v0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    const/16 v14, 0xa

    .line 16
    invoke-virtual {v2, v14}, Le/m/a/c/q1/t;->D(I)V

    .line 17
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v14

    if-gtz v14, :cond_8

    goto :goto_5

    .line 18
    :cond_8
    iget v15, v13, Le/m/a/c/g1/o;->d:I

    int-to-long v3, v14

    const/16 v14, 0x7d00

    if-lt v15, v14, :cond_9

    const/16 v14, 0x480

    goto :goto_3

    :cond_9
    const/16 v14, 0x240

    :goto_3
    int-to-long v9, v14

    mul-long v18, v9, v5

    int-to-long v9, v15

    move-wide/from16 v16, v3

    move-wide/from16 v20, v9

    .line 19
    invoke-static/range {v16 .. v21}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v26

    .line 20
    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v3

    .line 21
    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v4

    .line 22
    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v9

    .line 23
    invoke-virtual {v2, v11}, Le/m/a/c/q1/t;->D(I)V

    .line 24
    iget v10, v13, Le/m/a/c/g1/o;->c:I

    int-to-long v13, v10

    add-long/2addr v13, v7

    .line 25
    new-array v10, v3, [J

    .line 26
    new-array v15, v3, [J

    move-wide v5, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v3, :cond_e

    int-to-long v11, v7

    mul-long v11, v11, v26

    int-to-long v0, v3

    .line 27
    div-long/2addr v11, v0

    aput-wide v11, v10, v7

    .line 28
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v15, v7

    const/4 v0, 0x1

    if-eq v9, v0, :cond_d

    const/4 v0, 0x2

    if-eq v9, v0, :cond_c

    const/4 v0, 0x3

    if-eq v9, v0, :cond_b

    const/4 v0, 0x4

    if-eq v9, v0, :cond_a

    :goto_5
    const/4 v0, 0x0

    :goto_6
    move-object/from16 v1, p0

    goto :goto_8

    .line 29
    :cond_a
    invoke-virtual {v2}, Le/m/a/c/q1/t;->t()I

    move-result v0

    goto :goto_7

    .line 30
    :cond_b
    invoke-virtual {v2}, Le/m/a/c/q1/t;->s()I

    move-result v0

    goto :goto_7

    .line 31
    :cond_c
    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v0

    goto :goto_7

    .line 32
    :cond_d
    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v0

    :goto_7
    mul-int/2addr v0, v4

    int-to-long v0, v0

    add-long/2addr v5, v0

    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_4

    .line 33
    :cond_e
    new-instance v0, Le/m/a/c/g1/b0/f;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    move-object/from16 v25, v15

    move-wide/from16 v28, v5

    invoke-direct/range {v23 .. v29}, Le/m/a/c/g1/b0/f;-><init>([J[JJJ)V

    goto :goto_6

    .line 34
    :goto_8
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v2, v2, Le/m/a/c/g1/o;->c:I

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Le/m/a/c/g1/e;->i(I)V

    goto/16 :goto_f

    :cond_f
    move-object v3, v1

    move-object v1, v0

    move v0, v4

    .line 35
    iput v0, v3, Le/m/a/c/g1/e;->f:I

    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_10
    :goto_9
    move-object v3, v1

    move-object v1, v0

    .line 36
    iget-wide v4, v3, Le/m/a/c/g1/e;->d:J

    .line 37
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    .line 38
    iget v6, v0, Le/m/a/c/g1/o;->g:I

    .line 39
    iget v9, v0, Le/m/a/c/g1/o;->d:I

    .line 40
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v10

    and-int/lit8 v11, v10, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_14

    .line 41
    invoke-virtual {v2}, Le/m/a/c/q1/t;->t()I

    move-result v11

    if-nez v11, :cond_11

    goto :goto_c

    :cond_11
    int-to-long v11, v11

    int-to-long v14, v6

    const-wide/32 v16, 0xf4240

    mul-long v25, v14, v16

    int-to-long v14, v9

    move-wide/from16 v23, v11

    move-wide/from16 v27, v14

    .line 42
    invoke-static/range {v23 .. v28}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v27

    const/4 v6, 0x6

    and-int/lit8 v9, v10, 0x6

    if-eq v9, v6, :cond_12

    .line 43
    new-instance v2, Le/m/a/c/g1/b0/g;

    iget v0, v0, Le/m/a/c/g1/o;->c:I

    const-wide/16 v29, -0x1

    const/16 v31, 0x0

    move-object/from16 v23, v2

    move-wide/from16 v24, v4

    move/from16 v26, v0

    .line 44
    invoke-direct/range {v23 .. v31}, Le/m/a/c/g1/b0/g;-><init>(JIJJ[J)V

    :goto_a
    move-object v0, v2

    goto :goto_d

    .line 45
    :cond_12
    invoke-virtual {v2}, Le/m/a/c/q1/t;->t()I

    move-result v6

    int-to-long v9, v6

    const/16 v6, 0x64

    new-array v11, v6, [J

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v6, :cond_13

    .line 46
    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v14

    int-to-long v14, v14

    aput-wide v14, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 47
    :cond_13
    new-instance v2, Le/m/a/c/g1/b0/g;

    iget v0, v0, Le/m/a/c/g1/o;->c:I

    move-object/from16 v23, v2

    move-wide/from16 v24, v4

    move/from16 v26, v0

    move-wide/from16 v29, v9

    move-object/from16 v31, v11

    invoke-direct/range {v23 .. v31}, Le/m/a/c/g1/b0/g;-><init>(JIJJ[J)V

    goto :goto_a

    :cond_14
    :goto_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_17

    .line 48
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->e:Le/m/a/c/g1/m;

    .line 49
    iget v4, v2, Le/m/a/c/g1/m;->a:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_15

    iget v2, v2, Le/m/a/c/g1/m;->b:I

    if-eq v2, v5, :cond_15

    const/4 v2, 0x1

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    if-nez v2, :cond_17

    const/4 v2, 0x0

    .line 50
    iput v2, v3, Le/m/a/c/g1/e;->f:I

    add-int/lit16 v13, v13, 0x8d

    .line 51
    invoke-virtual {v3, v13, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 52
    iget-object v4, v1, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    iget-object v4, v4, Le/m/a/c/q1/t;->a:[B

    const/4 v5, 0x3

    .line 53
    invoke-virtual {v3, v4, v2, v5, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 54
    iget-object v4, v1, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 55
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->e:Le/m/a/c/g1/m;

    iget-object v4, v1, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v4}, Le/m/a/c/q1/t;->s()I

    move-result v4

    .line 56
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/lit8 v5, v4, 0xc

    and-int/lit16 v4, v4, 0xfff

    if-gtz v5, :cond_16

    if-lez v4, :cond_17

    .line 57
    :cond_16
    iput v5, v2, Le/m/a/c/g1/m;->a:I

    .line 58
    iput v4, v2, Le/m/a/c/g1/m;->b:I

    .line 59
    :cond_17
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v2, v2, Le/m/a/c/g1/o;->c:I

    invoke-virtual {v3, v2}, Le/m/a/c/g1/e;->i(I)V

    if-eqz v0, :cond_18

    .line 60
    invoke-virtual {v0}, Le/m/a/c/g1/b0/g;->c()Z

    move-result v2

    if-nez v2, :cond_18

    if-ne v8, v7, :cond_18

    .line 61
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/b0/d;->b(Le/m/a/c/g1/e;)Le/m/a/c/g1/b0/e;

    move-result-object v0

    .line 62
    :cond_18
    :goto_f
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 63
    iget-wide v4, v3, Le/m/a/c/g1/e;->d:J

    if-eqz v2, :cond_1b

    .line 64
    iget-object v6, v2, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    array-length v6, v6

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_1b

    .line 65
    iget-object v8, v2, Lcom/google/android/exoplayer2/metadata/Metadata;->a:[Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aget-object v8, v8, v7

    .line 66
    instance-of v9, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v9, :cond_1a

    .line 67
    check-cast v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    .line 68
    iget-object v2, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->e:[I

    array-length v2, v2

    add-int/lit8 v6, v2, 0x1

    .line 69
    new-array v7, v6, [J

    .line 70
    new-array v6, v6, [J

    const/4 v9, 0x0

    .line 71
    aput-wide v4, v7, v9

    const-wide/16 v10, 0x0

    .line 72
    aput-wide v10, v6, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    :goto_11
    if-gt v11, v2, :cond_19

    .line 73
    iget v12, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->c:I

    iget-object v13, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->e:[I

    add-int/lit8 v14, v11, -0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v4, v12

    .line 74
    iget v12, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->d:I

    iget-object v13, v8, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;->f:[I

    aget v13, v13, v14

    add-int/2addr v12, v13

    int-to-long v12, v12

    add-long/2addr v9, v12

    .line 75
    aput-wide v4, v7, v11

    .line 76
    aput-wide v9, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 77
    :cond_19
    new-instance v2, Le/m/a/c/g1/b0/c;

    invoke-direct {v2, v7, v6}, Le/m/a/c/g1/b0/c;-><init>([J[J)V

    goto :goto_12

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    .line 78
    :goto_12
    iget-boolean v4, v1, Le/m/a/c/g1/b0/d;->l:Z

    if-eqz v4, :cond_1c

    .line 79
    new-instance v0, Le/m/a/c/g1/b0/e$a;

    invoke-direct {v0}, Le/m/a/c/g1/b0/e$a;-><init>()V

    iput-object v0, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    goto :goto_14

    :cond_1c
    if-eqz v2, :cond_1d

    .line 80
    iput-object v2, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    goto :goto_13

    :cond_1d
    if-eqz v0, :cond_1e

    .line 81
    iput-object v0, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    .line 82
    :cond_1e
    :goto_13
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    if-eqz v0, :cond_1f

    .line 83
    invoke-interface {v0}, Le/m/a/c/g1/q;->c()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, v1, Le/m/a/c/g1/b0/d;->a:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_20

    .line 84
    :cond_1f
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/b0/d;->b(Le/m/a/c/g1/e;)Le/m/a/c/g1/b0/e;

    move-result-object v0

    iput-object v0, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    .line 85
    :cond_20
    :goto_14
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->g:Le/m/a/c/g1/i;

    iget-object v2, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    invoke-interface {v0, v2}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    .line 86
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->h:Le/m/a/c/g1/s;

    const/16 v22, 0x0

    iget-object v2, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget-object v4, v2, Le/m/a/c/g1/o;->b:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x1000

    iget v5, v2, Le/m/a/c/g1/o;->e:I

    iget v2, v2, Le/m/a/c/g1/o;->d:I

    const/16 v29, -0x1

    iget-object v6, v1, Le/m/a/c/g1/b0/d;->e:Le/m/a/c/g1/m;

    iget v7, v6, Le/m/a/c/g1/m;->a:I

    iget v6, v6, Le/m/a/c/g1/m;->b:I

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    iget v8, v1, Le/m/a/c/g1/b0/d;->a:I

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-eqz v8, :cond_21

    const/16 v36, 0x0

    goto :goto_15

    :cond_21
    iget-object v12, v1, Le/m/a/c/g1/b0/d;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v36, v12

    :goto_15
    move-object/from16 v23, v4

    move/from16 v27, v5

    move/from16 v28, v2

    move/from16 v30, v7

    move/from16 v31, v6

    .line 87
    invoke-static/range {v22 .. v36}, Lcom/google/android/exoplayer2/Format;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    .line 88
    invoke-interface {v0, v2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 89
    iget-wide v4, v3, Le/m/a/c/g1/e;->d:J

    .line 90
    iput-wide v4, v1, Le/m/a/c/g1/b0/d;->o:J

    goto :goto_16

    :cond_22
    move-object v3, v1

    move-object v1, v0

    .line 91
    iget-wide v4, v1, Le/m/a/c/g1/b0/d;->o:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_23

    .line 92
    iget-wide v6, v3, Le/m/a/c/g1/e;->d:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_23

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 93
    invoke-virtual {v3, v0}, Le/m/a/c/g1/e;->i(I)V

    .line 94
    :cond_23
    :goto_16
    iget v0, v1, Le/m/a/c/g1/b0/d;->p:I

    if-nez v0, :cond_28

    const/4 v0, 0x0

    .line 95
    iput v0, v3, Le/m/a/c/g1/e;->f:I

    .line 96
    invoke-virtual/range {p0 .. p1}, Le/m/a/c/g1/b0/d;->e(Le/m/a/c/g1/e;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v3, -0x1

    goto/16 :goto_1a

    .line 97
    :cond_24
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 98
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v0

    .line 99
    iget v2, v1, Le/m/a/c/g1/b0/d;->i:I

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Le/m/a/c/g1/b0/d;->c(IJ)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 100
    invoke-static {v0}, Le/m/a/c/g1/o;->a(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_25

    goto :goto_17

    .line 101
    :cond_25
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    invoke-static {v0, v2}, Le/m/a/c/g1/o;->d(ILe/m/a/c/g1/o;)Z

    .line 102
    iget-wide v4, v1, Le/m/a/c/g1/b0/d;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_26

    .line 103
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    .line 104
    iget-wide v4, v3, Le/m/a/c/g1/e;->d:J

    .line 105
    invoke-interface {v0, v4, v5}, Le/m/a/c/g1/b0/e;->f(J)J

    move-result-wide v4

    iput-wide v4, v1, Le/m/a/c/g1/b0/d;->m:J

    .line 106
    iget-wide v4, v1, Le/m/a/c/g1/b0/d;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_26

    .line 107
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Le/m/a/c/g1/b0/e;->f(J)J

    move-result-wide v4

    .line 108
    iget-wide v6, v1, Le/m/a/c/g1/b0/d;->m:J

    iget-wide v8, v1, Le/m/a/c/g1/b0/d;->b:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, v1, Le/m/a/c/g1/b0/d;->m:J

    .line 109
    :cond_26
    iget-object v0, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v0, v0, Le/m/a/c/g1/o;->c:I

    iput v0, v1, Le/m/a/c/g1/b0/d;->p:I

    goto :goto_18

    :cond_27
    :goto_17
    const/4 v0, 0x1

    .line 110
    invoke-virtual {v3, v0}, Le/m/a/c/g1/e;->i(I)V

    const/4 v0, 0x0

    .line 111
    iput v0, v1, Le/m/a/c/g1/b0/d;->i:I

    goto :goto_19

    :cond_28
    :goto_18
    const/4 v0, 0x1

    .line 112
    iget-object v2, v1, Le/m/a/c/g1/b0/d;->h:Le/m/a/c/g1/s;

    iget v4, v1, Le/m/a/c/g1/b0/d;->p:I

    invoke-interface {v2, v3, v4, v0}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_29

    move v3, v2

    goto :goto_1a

    .line 113
    :cond_29
    iget v2, v1, Le/m/a/c/g1/b0/d;->p:I

    sub-int/2addr v2, v0

    iput v2, v1, Le/m/a/c/g1/b0/d;->p:I

    if-lez v2, :cond_2a

    :goto_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 114
    :cond_2a
    iget-wide v2, v1, Le/m/a/c/g1/b0/d;->m:J

    iget-wide v4, v1, Le/m/a/c/g1/b0/d;->n:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iget-object v0, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v6, v0, Le/m/a/c/g1/o;->d:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    add-long v7, v4, v2

    .line 115
    iget-object v6, v1, Le/m/a/c/g1/b0/d;->h:Le/m/a/c/g1/s;

    const/4 v9, 0x1

    iget v10, v0, Le/m/a/c/g1/o;->c:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 116
    iget-wide v2, v1, Le/m/a/c/g1/b0/d;->n:J

    iget-object v0, v1, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    iget v0, v0, Le/m/a/c/g1/o;->g:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Le/m/a/c/g1/b0/d;->n:J

    const/4 v0, 0x0

    .line 117
    iput v0, v1, Le/m/a/c/g1/b0/d;->p:I

    move v3, v0

    :goto_1a
    return v3
.end method

.method public final e(Le/m/a/c/g1/e;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/b0/d;->k:Le/m/a/c/g1/b0/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/m/a/c/g1/b0/e;->e()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v2, v3, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method public final f(Le/m/a/c/g1/e;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    :goto_0
    const/4 v1, 0x0

    .line 1
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 2
    iget-wide v2, p1, Le/m/a/c/g1/e;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_5

    .line 3
    iget v2, p0, Le/m/a/c/g1/b0/d;->a:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 4
    :cond_2
    sget-object v2, Le/m/a/c/g1/b0/a;->a:Le/m/a/c/g1/b0/a;

    .line 5
    :goto_2
    iget-object v4, p0, Le/m/a/c/g1/b0/d;->f:Le/m/a/c/g1/n;

    invoke-virtual {v4, p1, v2}, Le/m/a/c/g1/n;->a(Le/m/a/c/g1/e;Le/m/a/c/i1/i/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    iput-object v2, p0, Le/m/a/c/g1/b0/d;->j:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v2, :cond_3

    .line 6
    iget-object v4, p0, Le/m/a/c/g1/b0/d;->e:Le/m/a/c/g1/m;

    invoke-virtual {v4, v2}, Le/m/a/c/g1/m;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 7
    :cond_3
    invoke-virtual {p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v4

    long-to-int v2, v4

    if-nez p2, :cond_4

    .line 8
    invoke-virtual {p1, v2}, Le/m/a/c/g1/e;->i(I)V

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    move v2, v1

    move v4, v2

    :goto_3
    move v5, v4

    move v6, v5

    .line 9
    :goto_4
    invoke-virtual {p0, p1}, Le/m/a/c/g1/b0/d;->e(Le/m/a/c/g1/e;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-lez v5, :cond_6

    goto :goto_6

    .line 10
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 11
    :cond_7
    iget-object v7, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v7, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 12
    iget-object v7, p0, Le/m/a/c/g1/b0/d;->c:Le/m/a/c/q1/t;

    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v7

    if-eqz v4, :cond_8

    int-to-long v8, v4

    .line 13
    invoke-static {v7, v8, v9}, Le/m/a/c/g1/b0/d;->c(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 14
    :cond_8
    invoke-static {v7}, Le/m/a/c/g1/o;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    :cond_9
    add-int/lit8 v4, v6, 0x1

    if-ne v6, v0, :cond_b

    if-eqz p2, :cond_a

    return v1

    .line 15
    :cond_a
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 16
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    add-int v5, v2, v4

    .line 17
    invoke-virtual {p1, v5, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_5

    .line 18
    :cond_c
    invoke-virtual {p1, v3}, Le/m/a/c/g1/e;->i(I)V

    :goto_5
    move v5, v1

    move v6, v4

    move v4, v5

    goto :goto_4

    :cond_d
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v3, :cond_e

    .line 19
    iget-object v4, p0, Le/m/a/c/g1/b0/d;->d:Le/m/a/c/g1/o;

    invoke-static {v7, v4}, Le/m/a/c/g1/o;->d(ILe/m/a/c/g1/o;)Z

    move v4, v7

    goto :goto_8

    :cond_e
    const/4 v7, 0x4

    if-ne v5, v7, :cond_10

    :goto_6
    if-eqz p2, :cond_f

    add-int/2addr v2, v6

    .line 20
    invoke-virtual {p1, v2}, Le/m/a/c/g1/e;->i(I)V

    goto :goto_7

    .line 21
    :cond_f
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 22
    :goto_7
    iput v4, p0, Le/m/a/c/g1/b0/d;->i:I

    return v3

    :cond_10
    :goto_8
    add-int/lit8 v8, v8, -0x4

    .line 23
    invoke-virtual {p1, v8, v1}, Le/m/a/c/g1/e;->a(IZ)Z

    goto :goto_4
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/b0/d;->g:Le/m/a/c/g1/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/b0/d;->h:Le/m/a/c/g1/s;

    .line 3
    iget-object p1, p0, Le/m/a/c/g1/b0/d;->g:Le/m/a/c/g1/i;

    invoke-interface {p1}, Le/m/a/c/g1/i;->g()V

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/m/a/c/g1/b0/d;->f(Le/m/a/c/g1/e;Z)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
