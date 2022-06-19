.class public final Le/m/a/c/g1/d0/i;
.super Le/m/a/c/g1/d0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/d0/i$a;
    }
.end annotation


# instance fields
.field public n:Le/m/a/c/g1/d0/i$a;

.field public o:I

.field public p:Z

.field public q:Le/m/a/c/g1/w;

.field public r:Le/m/a/c/g1/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/c/g1/d0/h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/d0/h;->g:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2
    :goto_0
    iput-boolean p1, p0, Le/m/a/c/g1/d0/i;->p:Z

    .line 3
    iget-object p1, p0, Le/m/a/c/g1/d0/i;->q:Le/m/a/c/g1/w;

    if-eqz p1, :cond_1

    iget p2, p1, Le/m/a/c/g1/w;->d:I

    :cond_1
    iput p2, p0, Le/m/a/c/g1/d0/i;->o:I

    return-void
.end method

.method public c(Le/m/a/c/q1/t;)J
    .locals 11

    .line 1
    iget-object v0, p1, Le/m/a/c/q1/t;->a:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    aget-byte v0, v0, v1

    iget-object v2, p0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    .line 3
    iget v4, v2, Le/m/a/c/g1/d0/i$a;->d:I

    shr-int/2addr v0, v3

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/16 v6, 0xff

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    .line 4
    iget-object v4, v2, Le/m/a/c/g1/d0/i$a;->c:[Le/m/a/c/g1/v;

    aget-object v0, v4, v0

    iget-boolean v0, v0, Le/m/a/c/g1/v;->a:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, v2, Le/m/a/c/g1/d0/i$a;->a:Le/m/a/c/g1/w;

    iget v0, v0, Le/m/a/c/g1/w;->d:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, v2, Le/m/a/c/g1/d0/i$a;->a:Le/m/a/c/g1/w;

    iget v0, v0, Le/m/a/c/g1/w;->e:I

    .line 7
    :goto_0
    iget-boolean v2, p0, Le/m/a/c/g1/d0/i;->p:Z

    if-eqz v2, :cond_2

    iget v1, p0, Le/m/a/c/g1/d0/i;->o:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_2
    int-to-long v1, v1

    .line 8
    iget v4, p1, Le/m/a/c/q1/t;->c:I

    add-int/lit8 v4, v4, 0x4

    .line 9
    invoke-virtual {p1, v4}, Le/m/a/c/q1/t;->B(I)V

    .line 10
    iget-object v4, p1, Le/m/a/c/q1/t;->a:[B

    .line 11
    iget p1, p1, Le/m/a/c/q1/t;->c:I

    add-int/lit8 v6, p1, -0x4

    const-wide/16 v7, 0xff

    and-long v9, v1, v7

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 12
    aput-byte v9, v4, v6

    add-int/lit8 v6, p1, -0x3

    ushr-long v9, v1, v5

    and-long/2addr v9, v7

    long-to-int v5, v9

    int-to-byte v5, v5

    .line 13
    aput-byte v5, v4, v6

    add-int/lit8 v5, p1, -0x2

    const/16 v6, 0x10

    ushr-long v9, v1, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    int-to-byte v6, v6

    .line 14
    aput-byte v6, v4, v5

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 15
    aput-byte v5, v4, p1

    .line 16
    iput-boolean v3, p0, Le/m/a/c/g1/d0/i;->p:Z

    .line 17
    iput v0, p0, Le/m/a/c/g1/d0/i;->o:I

    return-wide v1
.end method

.method public d(Le/m/a/c/q1/t;JLe/m/a/c/g1/d0/h$b;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, v0, Le/m/a/c/g1/d0/i;->q:Le/m/a/c/g1/w;

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 3
    invoke-static {v5, v1, v3}, Ln3/g0/y;->f2(ILe/m/a/c/q1/t;Z)Z

    .line 4
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->h()J

    move-result-wide v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v9

    .line 6
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->h()J

    move-result-wide v10

    .line 7
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->g()I

    move-result v12

    .line 8
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->g()I

    move-result v13

    .line 9
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->g()I

    move-result v14

    .line 10
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    and-int/lit8 v3, v2, 0xf

    int-to-double v5, v3

    move/from16 p2, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 11
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v3, v5

    and-int/lit16 v2, v2, 0xf0

    shr-int/2addr v2, v4

    int-to-double v4, v2

    .line 12
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 13
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move/from16 v17, v4

    .line 14
    iget-object v4, v1, Le/m/a/c/q1/t;->a:[B

    .line 15
    iget v1, v1, Le/m/a/c/q1/t;->c:I

    .line 16
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v18

    .line 17
    new-instance v1, Le/m/a/c/g1/w;

    move-object v6, v1

    move/from16 v14, p2

    move v15, v3

    move/from16 v16, v2

    invoke-direct/range {v6 .. v18}, Le/m/a/c/g1/w;-><init>(JIJIIIIIZ[B)V

    .line 18
    iput-object v1, v0, Le/m/a/c/g1/d0/i;->q:Le/m/a/c/g1/w;

    goto :goto_1

    .line 19
    :cond_2
    iget-object v2, v0, Le/m/a/c/g1/d0/i;->r:Le/m/a/c/g1/u;

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 20
    invoke-static {v1, v2, v2}, Ln3/g0/y;->K1(Le/m/a/c/q1/t;ZZ)Le/m/a/c/g1/u;

    move-result-object v1

    .line 21
    iput-object v1, v0, Le/m/a/c/g1/d0/i;->r:Le/m/a/c/g1/u;

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 22
    :cond_3
    iget v2, v1, Le/m/a/c/q1/t;->c:I

    .line 23
    new-array v8, v2, [B

    .line 24
    iget-object v3, v1, Le/m/a/c/q1/t;->a:[B

    const/4 v5, 0x0

    invoke-static {v3, v5, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iget-object v2, v0, Le/m/a/c/g1/d0/i;->q:Le/m/a/c/g1/w;

    iget v2, v2, Le/m/a/c/g1/w;->a:I

    const/4 v3, 0x5

    .line 26
    invoke-static {v3, v1, v5}, Ln3/g0/y;->f2(ILe/m/a/c/q1/t;Z)Z

    .line 27
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 28
    new-instance v7, Le/m/a/c/g1/t;

    iget-object v9, v1, Le/m/a/c/q1/t;->a:[B

    invoke-direct {v7, v9}, Le/m/a/c/g1/t;-><init>([B)V

    .line 29
    iget v1, v1, Le/m/a/c/q1/t;->b:I

    mul-int/lit8 v1, v1, 0x8

    .line 30
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    move v1, v5

    :goto_2
    const/16 v9, 0x10

    const/16 v10, 0x18

    if-ge v5, v6, :cond_10

    .line 31
    invoke-virtual {v7, v10}, Le/m/a/c/g1/t;->b(I)I

    move-result v11

    const v12, 0x564342

    if-ne v11, v12, :cond_f

    .line 32
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v9

    .line 33
    invoke-virtual {v7, v10}, Le/m/a/c/g1/t;->b(I)I

    move-result v10

    .line 34
    new-array v11, v10, [J

    .line 35
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-nez v12, :cond_6

    .line 36
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v12

    :goto_3
    if-ge v1, v10, :cond_9

    if-eqz v12, :cond_5

    .line 37
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 38
    invoke-virtual {v7, v3}, Le/m/a/c/g1/t;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v3, v4

    aput-wide v3, v11, v1

    goto :goto_4

    .line 39
    :cond_4
    aput-wide v13, v11, v1

    :goto_4
    const/4 v3, 0x5

    goto :goto_5

    .line 40
    :cond_5
    invoke-virtual {v7, v3}, Le/m/a/c/g1/t;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v13, v4

    aput-wide v13, v11, v1

    :goto_5
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x4

    const-wide/16 v13, 0x0

    goto :goto_3

    .line 41
    :cond_6
    invoke-virtual {v7, v3}, Le/m/a/c/g1/t;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v10, :cond_8

    sub-int v12, v10, v4

    .line 42
    invoke-static {v12}, Ln3/g0/y;->M0(I)I

    move-result v12

    invoke-virtual {v7, v12}, Le/m/a/c/g1/t;->b(I)I

    move-result v12

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_7

    if-ge v4, v10, :cond_7

    int-to-long v14, v1

    .line 43
    aput-wide v14, v11, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x4

    .line 44
    :cond_9
    invoke-virtual {v7, v4}, Le/m/a/c/g1/t;->b(I)I

    move-result v1

    const/4 v11, 0x2

    if-gt v1, v11, :cond_e

    const/4 v12, 0x1

    if-eq v1, v12, :cond_a

    if-ne v1, v11, :cond_d

    :cond_a
    const/16 v11, 0x20

    .line 45
    invoke-virtual {v7, v11}, Le/m/a/c/g1/t;->c(I)V

    .line 46
    invoke-virtual {v7, v11}, Le/m/a/c/g1/t;->c(I)V

    .line 47
    invoke-virtual {v7, v4}, Le/m/a/c/g1/t;->b(I)I

    move-result v4

    add-int/2addr v4, v12

    .line 48
    invoke-virtual {v7, v12}, Le/m/a/c/g1/t;->c(I)V

    if-ne v1, v12, :cond_c

    if-eqz v9, :cond_b

    int-to-long v10, v10

    int-to-long v12, v9

    long-to-double v9, v10

    long-to-double v11, v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double/2addr v13, v11

    .line 49
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-long v13, v9

    goto :goto_8

    :cond_b
    const-wide/16 v13, 0x0

    goto :goto_8

    :cond_c
    int-to-long v10, v10

    int-to-long v12, v9

    mul-long v13, v10, v12

    :goto_8
    int-to-long v9, v4

    mul-long/2addr v9, v13

    long-to-int v1, v9

    .line 50
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    :cond_d
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    goto/16 :goto_2

    .line 51
    :cond_e
    new-instance v2, Le/m/a/c/m0;

    const-string v3, "lookup type greater than 2 not decodable: "

    invoke-static {v3, v1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_f
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    iget v3, v7, Le/m/a/c/g1/t;->c:I

    mul-int/lit8 v3, v3, 0x8

    iget v4, v7, Le/m/a/c/g1/t;->d:I

    add-int/2addr v3, v4

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    const/4 v1, 0x6

    .line 55
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_12

    .line 56
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v6

    if-nez v6, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 57
    :cond_11
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_12
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x0

    :goto_a
    const/4 v10, 0x3

    if-ge v6, v4, :cond_1c

    .line 59
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v11

    if-eqz v11, :cond_1a

    if-ne v11, v5, :cond_19

    .line 60
    invoke-virtual {v7, v3}, Le/m/a/c/g1/t;->b(I)I

    move-result v3

    .line 61
    new-array v5, v3, [I

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v3, :cond_14

    const/4 v13, 0x4

    .line 62
    invoke-virtual {v7, v13}, Le/m/a/c/g1/t;->b(I)I

    move-result v13

    aput v13, v5, v12

    .line 63
    aget v13, v5, v12

    if-le v13, v11, :cond_13

    .line 64
    aget v11, v5, v12

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 65
    new-array v12, v11, [I

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v11, :cond_17

    .line 66
    invoke-virtual {v7, v10}, Le/m/a/c/g1/t;->b(I)I

    move-result v10

    const/4 v14, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v12, v13

    const/4 v10, 0x2

    .line 67
    invoke-virtual {v7, v10}, Le/m/a/c/g1/t;->b(I)I

    move-result v10

    const/16 v15, 0x8

    if-lez v10, :cond_15

    .line 68
    invoke-virtual {v7, v15}, Le/m/a/c/g1/t;->c(I)V

    :cond_15
    const/16 v16, 0x0

    move/from16 v1, v16

    :goto_d
    shl-int/2addr v14, v10

    if-ge v1, v14, :cond_16

    .line 69
    invoke-virtual {v7, v15}, Le/m/a/c/g1/t;->c(I)V

    add-int/lit8 v1, v1, 0x1

    const/16 v15, 0x8

    const/4 v14, 0x1

    goto :goto_d

    :cond_16
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x3

    const/4 v1, 0x6

    goto :goto_c

    :cond_17
    const/4 v1, 0x2

    .line 70
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    const/4 v1, 0x4

    .line 71
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_e
    if-ge v10, v3, :cond_1b

    .line 72
    aget v14, v5, v10

    .line 73
    aget v14, v12, v14

    add-int/2addr v11, v14

    :goto_f
    if-ge v13, v11, :cond_18

    .line 74
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 75
    :cond_19
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-static {v2, v11}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    const/16 v1, 0x8

    .line 76
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    .line 77
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->c(I)V

    .line 78
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->c(I)V

    const/4 v3, 0x6

    .line 79
    invoke-virtual {v7, v3}, Le/m/a/c/g1/t;->c(I)V

    .line 80
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    const/4 v3, 0x4

    .line 81
    invoke-virtual {v7, v3}, Le/m/a/c/g1/t;->b(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_1b

    .line 82
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    add-int/lit8 v5, v5, 0x1

    const/16 v1, 0x8

    goto :goto_10

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x5

    const/4 v5, 0x1

    const/4 v1, 0x6

    goto/16 :goto_a

    .line 83
    :cond_1c
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v3

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_23

    .line 84
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_22

    const/16 v5, 0x18

    .line 85
    invoke-virtual {v7, v5}, Le/m/a/c/g1/t;->c(I)V

    .line 86
    invoke-virtual {v7, v5}, Le/m/a/c/g1/t;->c(I)V

    .line 87
    invoke-virtual {v7, v5}, Le/m/a/c/g1/t;->c(I)V

    const/4 v5, 0x6

    .line 88
    invoke-virtual {v7, v5}, Le/m/a/c/g1/t;->b(I)I

    move-result v6

    add-int/2addr v6, v1

    const/16 v1, 0x8

    .line 89
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    .line 90
    new-array v5, v6, [I

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v6, :cond_1e

    const/4 v11, 0x3

    .line 91
    invoke-virtual {v7, v11}, Le/m/a/c/g1/t;->b(I)I

    move-result v11

    .line 92
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v12, 0x5

    .line 93
    invoke-virtual {v7, v12}, Le/m/a/c/g1/t;->b(I)I

    move-result v12

    goto :goto_13

    :cond_1d
    const/4 v12, 0x0

    :goto_13
    mul-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v11

    .line 94
    aput v12, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_1e
    const/4 v10, 0x0

    :goto_14
    if-ge v10, v6, :cond_21

    const/4 v11, 0x0

    :goto_15
    if-ge v11, v1, :cond_20

    .line 95
    aget v12, v5, v10

    const/4 v13, 0x1

    shl-int/2addr v13, v11

    and-int/2addr v12, v13

    if-eqz v12, :cond_1f

    .line 96
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->c(I)V

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x8

    goto :goto_15

    :cond_20
    add-int/lit8 v10, v10, 0x1

    const/16 v1, 0x8

    goto :goto_14

    :cond_21
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    goto :goto_11

    .line 97
    :cond_22
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "residueType greater than 2 is not decodable"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    const/4 v1, 0x6

    .line 98
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v3

    const/4 v1, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_2a

    .line 99
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_1a

    .line 100
    :cond_24
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v1, 0x4

    .line 101
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 102
    :cond_25
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v5

    if-eqz v5, :cond_26

    const/16 v5, 0x8

    .line 103
    invoke-virtual {v7, v5}, Le/m/a/c/g1/t;->b(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v5, :cond_26

    add-int/lit8 v10, v2, -0x1

    .line 104
    invoke-static {v10}, Ln3/g0/y;->M0(I)I

    move-result v11

    invoke-virtual {v7, v11}, Le/m/a/c/g1/t;->c(I)V

    .line 105
    invoke-static {v10}, Ln3/g0/y;->M0(I)I

    move-result v10

    invoke-virtual {v7, v10}, Le/m/a/c/g1/t;->c(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_26
    const/4 v5, 0x2

    .line 106
    invoke-virtual {v7, v5}, Le/m/a/c/g1/t;->b(I)I

    move-result v5

    if-nez v5, :cond_29

    const/4 v5, 0x1

    if-le v1, v5, :cond_27

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v2, :cond_27

    const/4 v6, 0x4

    .line 107
    invoke-virtual {v7, v6}, Le/m/a/c/g1/t;->c(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_27
    const/4 v5, 0x0

    :goto_19
    if-ge v5, v1, :cond_28

    const/16 v6, 0x8

    .line 108
    invoke-virtual {v7, v6}, Le/m/a/c/g1/t;->c(I)V

    .line 109
    invoke-virtual {v7, v6}, Le/m/a/c/g1/t;->c(I)V

    .line 110
    invoke-virtual {v7, v6}, Le/m/a/c/g1/t;->c(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_28
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    goto :goto_16

    .line 111
    :cond_29
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    const/4 v1, 0x6

    .line 112
    invoke-virtual {v7, v1}, Le/m/a/c/g1/t;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 113
    new-array v2, v1, [Le/m/a/c/g1/v;

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_2b

    .line 114
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v4

    .line 115
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v5

    .line 116
    invoke-virtual {v7, v9}, Le/m/a/c/g1/t;->b(I)I

    move-result v6

    const/16 v10, 0x8

    .line 117
    invoke-virtual {v7, v10}, Le/m/a/c/g1/t;->b(I)I

    move-result v10

    .line 118
    new-instance v11, Le/m/a/c/g1/v;

    invoke-direct {v11, v4, v5, v6, v10}, Le/m/a/c/g1/v;-><init>(ZIII)V

    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 119
    :cond_2b
    invoke-virtual {v7}, Le/m/a/c/g1/t;->a()Z

    move-result v3

    if-eqz v3, :cond_2d

    add-int/lit8 v1, v1, -0x1

    .line 120
    invoke-static {v1}, Ln3/g0/y;->M0(I)I

    move-result v10

    .line 121
    new-instance v1, Le/m/a/c/g1/d0/i$a;

    iget-object v6, v0, Le/m/a/c/g1/d0/i;->q:Le/m/a/c/g1/w;

    iget-object v7, v0, Le/m/a/c/g1/d0/i;->r:Le/m/a/c/g1/u;

    move-object v5, v1

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Le/m/a/c/g1/d0/i$a;-><init>(Le/m/a/c/g1/w;Le/m/a/c/g1/u;[B[Le/m/a/c/g1/v;I)V

    .line 122
    :goto_1c
    iput-object v1, v0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    if-nez v1, :cond_2c

    const/4 v1, 0x1

    return v1

    .line 123
    :cond_2c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, v0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    iget-object v1, v1, Le/m/a/c/g1/d0/i$a;->a:Le/m/a/c/g1/w;

    iget-object v1, v1, Le/m/a/c/g1/w;->f:[B

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, v0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    iget-object v1, v1, Le/m/a/c/g1/d0/i$a;->b:[B

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 126
    iget-object v1, v0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    iget-object v1, v1, Le/m/a/c/g1/d0/i$a;->a:Le/m/a/c/g1/w;

    iget v5, v1, Le/m/a/c/g1/w;->c:I

    const/4 v6, -0x1

    iget v7, v1, Le/m/a/c/g1/w;->a:I

    iget-wide v10, v1, Le/m/a/c/g1/w;->b:J

    long-to-int v8, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v3, "audio/vorbis"

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    move-object/from16 v2, p4

    iput-object v1, v2, Le/m/a/c/g1/d0/h$b;->a:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    return v1

    .line 127
    :cond_2d
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "framing bit after modes not set as expected"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/m/a/c/g1/d0/h;->e(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/d0/i;->n:Le/m/a/c/g1/d0/i$a;

    .line 3
    iput-object p1, p0, Le/m/a/c/g1/d0/i;->q:Le/m/a/c/g1/w;

    .line 4
    iput-object p1, p0, Le/m/a/c/g1/d0/i;->r:Le/m/a/c/g1/u;

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Le/m/a/c/g1/d0/i;->o:I

    .line 6
    iput-boolean p1, p0, Le/m/a/c/g1/d0/i;->p:Z

    return-void
.end method
