.class public final Le/m/a/c/g1/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Le/m/a/c/g1/c0/h;->a:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
    .end array-data
.end method

.method public static a(Le/m/a/c/g1/e;Z)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Le/m/a/c/g1/e;->c:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :cond_1
    :goto_0
    long-to-int v6, v6

    .line 2
    new-instance v7, Le/m/a/c/q1/t;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Le/m/a/c/q1/t;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    if-ge v9, v6, :cond_14

    const/16 v12, 0x8

    .line 3
    invoke-virtual {v7, v12}, Le/m/a/c/q1/t;->y(I)V

    .line 4
    iget-object v13, v7, Le/m/a/c/q1/t;->a:[B

    .line 5
    invoke-virtual {v0, v13, v8, v12, v8}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 6
    invoke-virtual {v7}, Le/m/a/c/q1/t;->r()J

    move-result-wide v13

    .line 7
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    const/16 v11, 0x10

    if-nez v16, :cond_2

    .line 8
    iget-object v13, v7, Le/m/a/c/q1/t;->a:[B

    .line 9
    invoke-virtual {v0, v13, v12, v12, v8}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 10
    invoke-virtual {v7, v11}, Le/m/a/c/q1/t;->B(I)V

    .line 11
    invoke-virtual {v7}, Le/m/a/c/q1/t;->k()J

    move-result-wide v13

    move/from16 v16, v9

    move v8, v11

    goto :goto_2

    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v11, v13, v18

    move/from16 v16, v9

    if-nez v11, :cond_3

    .line 12
    iget-wide v8, v0, Le/m/a/c/g1/e;->c:J

    cmp-long v18, v8, v3

    if-eqz v18, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/e;->d()J

    move-result-wide v13

    sub-long/2addr v8, v13

    int-to-long v13, v12

    add-long/2addr v13, v8

    :cond_3
    move v8, v12

    :goto_2
    int-to-long v3, v8

    cmp-long v9, v13, v3

    if-gez v9, :cond_4

    const/4 v9, 0x0

    return v9

    :cond_4
    add-int v9, v16, v8

    const v8, 0x6d6f6f76

    if-ne v15, v8, :cond_6

    long-to-int v3, v13

    add-int/2addr v6, v3

    if-eqz v5, :cond_5

    int-to-long v3, v6

    cmp-long v3, v3, v1

    if-lez v3, :cond_5

    long-to-int v6, v1

    :cond_5
    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const v8, 0x6d6f6f66

    if-eq v15, v8, :cond_13

    const v8, 0x6d766578

    if-ne v15, v8, :cond_7

    goto/16 :goto_9

    :cond_7
    int-to-long v11, v9

    add-long/2addr v11, v13

    sub-long/2addr v11, v3

    move/from16 v20, v9

    int-to-long v8, v6

    cmp-long v8, v11, v8

    if-ltz v8, :cond_8

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_8
    sub-long/2addr v13, v3

    long-to-int v3, v13

    add-int v9, v20, v3

    const v4, 0x66747970

    if-ne v15, v4, :cond_11

    const/16 v4, 0x8

    if-ge v3, v4, :cond_9

    const/4 v4, 0x0

    return v4

    :cond_9
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v7, v3}, Le/m/a/c/q1/t;->y(I)V

    .line 15
    iget-object v8, v7, Le/m/a/c/q1/t;->a:[B

    .line 16
    invoke-virtual {v0, v8, v4, v3, v4}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 17
    div-int/lit8 v3, v3, 0x4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_f

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    const/4 v12, 0x4

    .line 18
    invoke-virtual {v7, v12}, Le/m/a/c/q1/t;->D(I)V

    goto :goto_6

    .line 19
    :cond_a
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v12

    ushr-int/lit8 v13, v12, 0x8

    const v14, 0x336770

    if-ne v13, v14, :cond_b

    goto :goto_5

    .line 20
    :cond_b
    sget-object v13, Le/m/a/c/g1/c0/h;->a:[I

    array-length v14, v13

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_d

    aget v8, v13, v15

    if-ne v8, v12, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_e

    const/4 v10, 0x1

    goto :goto_7

    :cond_e
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    :goto_7
    if-nez v10, :cond_10

    const/4 v4, 0x0

    return v4

    :cond_10
    const/4 v4, 0x0

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    if-eqz v3, :cond_12

    .line 21
    invoke-virtual {v0, v3, v4}, Le/m/a/c/g1/e;->a(IZ)Z

    :cond_12
    :goto_8
    move v8, v4

    const-wide/16 v3, -0x1

    goto/16 :goto_1

    :cond_13
    :goto_9
    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_b

    :cond_14
    move v4, v8

    :goto_a
    move v9, v4

    :goto_b
    if-eqz v10, :cond_15

    move/from16 v0, p1

    if-ne v0, v9, :cond_15

    const/4 v8, 0x1

    goto :goto_c

    :cond_15
    move v8, v4

    :goto_c
    return v8
.end method
