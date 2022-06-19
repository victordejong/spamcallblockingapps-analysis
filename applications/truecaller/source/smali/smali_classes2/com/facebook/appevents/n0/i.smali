.class public final Lcom/facebook/appevents/n0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001b\u0010\u0008\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J \u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J+\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0013H\u0007J\u0018\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0007J\u0018\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0007J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/appevents/ml/Operator;",
        "",
        "()V",
        "addmv",
        "",
        "x",
        "Lcom/facebook/appevents/ml/MTensor;",
        "b",
        "concatenate",
        "tensors",
        "",
        "([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;",
        "conv1D",
        "w",
        "dense",
        "embedding",
        "texts",
        "",
        "seqLength",
        "",
        "([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;",
        "flatten",
        "startDim",
        "maxPool1D",
        "poolSize",
        "mul",
        "relu",
        "softmax",
        "transpose2D",
        "transpose3D",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)V
    .locals 13

    const-class v0, Lcom/facebook/appevents/n0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "x"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 2
    aget v4, v1, v4

    const/4 v5, 0x2

    .line 3
    aget v1, v1, v5

    .line 4
    iget-object p0, p0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 5
    iget-object p1, p1, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v3, :cond_6

    move v5, v2

    :goto_0
    add-int/lit8 v6, v5, 0x1

    if-lez v4, :cond_4

    move v7, v2

    :goto_1
    add-int/lit8 v8, v7, 0x1

    if-lez v1, :cond_2

    move v9, v2

    :goto_2
    add-int/lit8 v10, v9, 0x1

    mul-int v11, v5, v4

    mul-int/2addr v11, v1

    mul-int v12, v7, v1

    add-int/2addr v12, v11

    add-int/2addr v12, v9

    .line 6
    aget v11, p0, v12

    aget v9, p1, v9

    add-float/2addr v11, v9

    aput v11, p0, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v10, v1, :cond_1

    goto :goto_3

    :cond_1
    move v9, v10

    goto :goto_2

    :cond_2
    :goto_3
    if-lt v8, v4, :cond_3

    goto :goto_4

    :cond_3
    move v7, v8

    goto :goto_1

    :cond_4
    :goto_4
    if-lt v6, v3, :cond_5

    goto :goto_5

    :cond_5
    move v5, v6

    goto :goto_0

    :cond_6
    :goto_5
    return-void

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final b([Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 16

    move-object/from16 v0, p0

    const-class v1, Lcom/facebook/appevents/n0/i;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v2, "tensors"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1
    aget-object v4, v0, v2

    .line 2
    iget-object v4, v4, Lcom/facebook/appevents/n0/f;->a:[I

    aget v4, v4, v2

    .line 3
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    if-ltz v5, :cond_2

    move v7, v2

    move v8, v7

    :goto_0
    add-int/lit8 v9, v7, 0x1

    .line 4
    aget-object v7, v0, v7

    .line 5
    iget-object v7, v7, Lcom/facebook/appevents/n0/f;->a:[I

    aget v7, v7, v6

    add-int/2addr v8, v7

    if-le v9, v5, :cond_1

    goto :goto_1

    :cond_1
    move v7, v9

    goto :goto_0

    :cond_2
    move v8, v2

    .line 6
    :goto_1
    new-instance v5, Lcom/facebook/appevents/n0/f;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v2

    aput v8, v7, v6

    invoke-direct {v5, v7}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 7
    iget-object v7, v5, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v4, :cond_6

    move v9, v2

    :goto_2
    add-int/lit8 v10, v9, 0x1

    mul-int v11, v9, v8

    .line 8
    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_4

    move v13, v2

    :goto_3
    add-int/lit8 v14, v13, 0x1

    .line 9
    aget-object v15, v0, v13

    .line 10
    iget-object v15, v15, Lcom/facebook/appevents/n0/f;->c:[F

    .line 11
    aget-object v13, v0, v13

    .line 12
    iget-object v13, v13, Lcom/facebook/appevents/n0/f;->a:[I

    aget v13, v13, v6

    mul-int v2, v9, v13

    .line 13
    invoke-static {v15, v2, v7, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v11, v13

    if-le v14, v12, :cond_3

    goto :goto_4

    :cond_3
    move v13, v14

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_4
    if-lt v10, v4, :cond_5

    goto :goto_5

    :cond_5
    move v9, v10

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    :goto_5
    return-object v5

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method

.method public static final c(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/n0/i;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    const-string v3, "x"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "w"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1
    :try_start_1
    iget-object v3, v0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    .line 2
    aget v8, v3, v7

    const/4 v9, 0x2

    .line 3
    aget v3, v3, v9

    .line 4
    iget-object v10, v1, Lcom/facebook/appevents/n0/f;->a:[I

    aget v11, v10, v5

    sub-int v12, v8, v11

    add-int/2addr v12, v7

    .line 5
    aget v10, v10, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    new-instance v13, Lcom/facebook/appevents/n0/f;

    const/4 v14, 0x3

    new-array v14, v14, [I

    aput v6, v14, v5

    aput v12, v14, v7

    aput v10, v14, v9

    invoke-direct {v13, v14}, Lcom/facebook/appevents/n0/f;-><init>([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :try_start_3
    iget-object v0, v0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 8
    iget-object v7, v13, Lcom/facebook/appevents/n0/f;->c:[F

    .line 9
    iget-object v1, v1, Lcom/facebook/appevents/n0/f;->c:[F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lez v6, :cond_a

    move v9, v5

    :goto_0
    add-int/lit8 v14, v9, 0x1

    if-lez v10, :cond_8

    move v15, v5

    :goto_1
    add-int/lit8 v5, v15, 0x1

    if-lez v12, :cond_6

    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v4, v16, 0x1

    const/16 v17, 0x0

    if-lez v11, :cond_4

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v19, v2

    add-int/lit8 v2, v18, 0x1

    if-lez v3, :cond_2

    const/16 v20, 0x0

    :goto_4
    move-object/from16 v21, v13

    add-int/lit8 v13, v20, 0x1

    mul-int v22, v8, v3

    mul-int v22, v22, v9

    add-int v23, v18, v16

    mul-int v23, v23, v3

    add-int v23, v23, v22

    add-int v23, v23, v20

    .line 10
    :try_start_4
    aget v22, v0, v23

    mul-int v23, v18, v3

    add-int v23, v23, v20

    mul-int v23, v23, v10

    add-int v23, v23, v15

    .line 11
    aget v20, v1, v23

    mul-float v22, v22, v20

    add-float v17, v22, v17

    if-lt v13, v3, :cond_1

    goto :goto_5

    :cond_1
    move/from16 v20, v13

    move-object/from16 v13, v21

    goto :goto_4

    :cond_2
    move-object/from16 v21, v13

    :goto_5
    if-lt v2, v11, :cond_3

    goto :goto_6

    :cond_3
    move/from16 v18, v2

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    goto :goto_3

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v21, v13

    :goto_6
    mul-int v2, v12, v10

    mul-int/2addr v2, v9

    mul-int v16, v16, v10

    add-int v16, v16, v2

    add-int v16, v16, v15

    .line 12
    aput v17, v7, v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-lt v4, v12, :cond_5

    goto :goto_7

    :cond_5
    move/from16 v16, v4

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v21, v13

    :goto_7
    if-lt v5, v10, :cond_7

    goto :goto_8

    :cond_7
    move v15, v5

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v19, v2

    move-object/from16 v21, v13

    :goto_8
    if-lt v14, v6, :cond_9

    goto :goto_9

    :cond_9
    move v9, v14

    move-object/from16 v2, v19

    move-object/from16 v13, v21

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v21, v13

    :goto_9
    return-object v21

    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    :goto_a
    move-object/from16 v1, v19

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v1, v2

    .line 13
    :goto_b
    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final d(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 11

    const-class v0, Lcom/facebook/appevents/n0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "x"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "w"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "b"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 2
    iget-object v4, p2, Lcom/facebook/appevents/n0/f;->a:[I

    aget v4, v4, v3

    .line 3
    invoke-static {p0, p1}, Lcom/facebook/appevents/n0/i;->h(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;

    move-result-object p0

    .line 4
    iget-object p1, p2, Lcom/facebook/appevents/n0/f;->c:[F

    .line 5
    iget-object p2, p0, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v1, :cond_4

    move v5, v3

    :goto_0
    add-int/lit8 v6, v5, 0x1

    if-lez v4, :cond_2

    move v7, v3

    :goto_1
    add-int/lit8 v8, v7, 0x1

    mul-int v9, v5, v4

    add-int/2addr v9, v7

    .line 6
    aget v10, p2, v9

    aget v7, p1, v7

    add-float/2addr v10, v7

    aput v10, p2, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v8, v4, :cond_1

    goto :goto_2

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    :goto_2
    if-lt v6, v1, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    :goto_3
    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final e([Ljava/lang/String;ILcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-class v3, Lcom/facebook/appevents/n0/i;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    :try_start_0
    const-string v4, "texts"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "w"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v4, v0

    .line 2
    iget-object v6, v2, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 3
    new-instance v8, Lcom/facebook/appevents/n0/f;

    const/4 v9, 0x3

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    aput v1, v9, v7

    const/4 v7, 0x2

    aput v6, v9, v7

    invoke-direct {v8, v9}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 4
    iget-object v7, v8, Lcom/facebook/appevents/n0/f;->c:[F

    .line 5
    iget-object v2, v2, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v4, :cond_4

    move v9, v10

    :goto_0
    add-int/lit8 v11, v9, 0x1

    .line 6
    sget-object v12, Lcom/facebook/appevents/n0/j;->a:Lcom/facebook/appevents/n0/j;

    aget-object v13, v0, v9

    invoke-virtual {v12, v13, v1}, Lcom/facebook/appevents/n0/j;->c(Ljava/lang/String;I)[I

    move-result-object v12

    if-lez v1, :cond_2

    move v13, v10

    :goto_1
    add-int/lit8 v14, v13, 0x1

    .line 7
    aget v15, v12, v13

    mul-int/2addr v15, v6

    mul-int v16, v6, v1

    mul-int v16, v16, v9

    mul-int/2addr v13, v6

    add-int v13, v13, v16

    .line 8
    invoke-static {v2, v15, v7, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v14, v1, :cond_1

    goto :goto_2

    :cond_1
    move v13, v14

    goto :goto_1

    :cond_2
    :goto_2
    if-lt v11, v4, :cond_3

    goto :goto_3

    :cond_3
    move v9, v11

    goto :goto_0

    :cond_4
    :goto_3
    return-object v8

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v5
.end method

.method public static final f(Lcom/facebook/appevents/n0/f;I)V
    .locals 6

    const-class v0, Lcom/facebook/appevents/n0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "x"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    array-length v2, v1

    if-lt p1, v2, :cond_1

    return-void

    .line 2
    :cond_1
    array-length v1, v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_3

    move v3, p1

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 3
    iget-object v5, p0, Lcom/facebook/appevents/n0/f;->a:[I

    aget v3, v5, v3

    mul-int/2addr v2, v3

    if-lt v4, v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v1, p1, 0x1

    .line 4
    new-array v1, v1, [I

    const/4 v3, 0x0

    if-lez p1, :cond_5

    :goto_2
    add-int/lit8 v4, v3, 0x1

    .line 5
    iget-object v5, p0, Lcom/facebook/appevents/n0/f;->a:[I

    aget v5, v5, v3

    .line 6
    aput v5, v1, v3

    if-lt v4, p1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_2

    .line 7
    :cond_5
    :goto_3
    aput v2, v1, p1

    .line 8
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/n0/f;->a([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final g(Lcom/facebook/appevents/n0/f;I)Lcom/facebook/appevents/n0/f;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/n0/i;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    const-string v3, "x"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    .line 2
    aget v8, v3, v7

    const/4 v9, 0x2

    .line 3
    aget v3, v3, v9

    sub-int v10, v8, v1

    add-int/2addr v10, v7

    .line 4
    new-instance v11, Lcom/facebook/appevents/n0/f;

    const/4 v12, 0x3

    new-array v12, v12, [I

    aput v6, v12, v5

    aput v10, v12, v7

    aput v3, v12, v9

    invoke-direct {v11, v12}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 5
    iget-object v0, v0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 6
    iget-object v7, v11, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v6, :cond_8

    move v9, v5

    :goto_0
    add-int/lit8 v12, v9, 0x1

    if-lez v3, :cond_6

    move v13, v5

    :goto_1
    add-int/lit8 v14, v13, 0x1

    if-lez v10, :cond_4

    move v15, v5

    :goto_2
    add-int/lit8 v5, v15, 0x1

    mul-int v16, v9, v10

    mul-int v16, v16, v3

    mul-int/2addr v15, v3

    add-int v16, v16, v15

    add-int v16, v16, v13

    mul-int v17, v9, v8

    mul-int v17, v17, v3

    add-int v17, v17, v15

    add-int v17, v17, v13

    const/4 v15, 0x1

    .line 7
    aput v15, v7, v16

    if-lez v1, :cond_2

    const/4 v15, 0x0

    :goto_3
    add-int/lit8 v4, v15, 0x1

    move/from16 v18, v8

    .line 8
    aget v8, v7, v16

    mul-int/2addr v15, v3

    add-int v15, v15, v17

    aget v15, v0, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v7, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v4, v1, :cond_1

    goto :goto_4

    :cond_1
    move v15, v4

    move/from16 v8, v18

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    move/from16 v18, v8

    :goto_4
    if-lt v5, v10, :cond_3

    goto :goto_5

    :cond_3
    move v15, v5

    move/from16 v8, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    move/from16 v18, v8

    :goto_5
    if-lt v14, v3, :cond_5

    goto :goto_6

    :cond_5
    move v13, v14

    move/from16 v8, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    move/from16 v18, v8

    :goto_6
    if-lt v12, v6, :cond_7

    goto :goto_7

    :cond_7
    move v9, v12

    move/from16 v8, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_8
    :goto_7
    return-object v11

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static final h(Lcom/facebook/appevents/n0/f;Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-class v2, Lcom/facebook/appevents/n0/i;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    const-string v3, "x"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "w"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    .line 2
    iget-object v6, v1, Lcom/facebook/appevents/n0/f;->a:[I

    aget v7, v6, v5

    const/4 v8, 0x1

    .line 3
    aget v6, v6, v8

    .line 4
    new-instance v9, Lcom/facebook/appevents/n0/f;

    const/4 v10, 0x2

    new-array v10, v10, [I

    aput v3, v10, v5

    aput v6, v10, v8

    invoke-direct {v9, v10}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 5
    iget-object v0, v0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 6
    iget-object v1, v1, Lcom/facebook/appevents/n0/f;->c:[F

    .line 7
    iget-object v8, v9, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v3, :cond_6

    move v10, v5

    :goto_0
    add-int/lit8 v11, v10, 0x1

    if-lez v6, :cond_4

    move v12, v5

    :goto_1
    add-int/lit8 v13, v12, 0x1

    mul-int v14, v10, v6

    add-int/2addr v14, v12

    const/4 v15, 0x0

    .line 8
    aput v15, v8, v14

    if-lez v7, :cond_2

    move v15, v5

    :goto_2
    add-int/lit8 v5, v15, 0x1

    .line 9
    aget v16, v8, v14

    mul-int v17, v10, v7

    add-int v17, v17, v15

    aget v17, v0, v17

    mul-int/2addr v15, v6

    add-int/2addr v15, v12

    aget v15, v1, v15

    mul-float v17, v17, v15

    add-float v17, v17, v16

    aput v17, v8, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v7, :cond_1

    goto :goto_3

    :cond_1
    move v15, v5

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_3
    if-lt v13, v6, :cond_3

    goto :goto_4

    :cond_3
    move v12, v13

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_4
    if-lt v11, v3, :cond_5

    goto :goto_5

    :cond_5
    move v10, v11

    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    :goto_5
    return-object v9

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static final i(Lcom/facebook/appevents/n0/f;)V
    .locals 6

    const-class v0, Lcom/facebook/appevents/n0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "x"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/facebook/appevents/n0/f;->c:[F

    const/4 v1, 0x0

    .line 2
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    :goto_0
    add-int/lit8 v3, v1, 0x1

    .line 3
    aget v4, p0, v1

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 4
    aput v5, p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-le v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(Lcom/facebook/appevents/n0/f;)V
    .locals 12

    const-class v0, Lcom/facebook/appevents/n0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "x"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 2
    aget v1, v1, v4

    .line 3
    iget-object p0, p0, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v3, :cond_9

    :goto_0
    add-int/lit8 v4, v2, 0x1

    mul-int/2addr v2, v1

    add-int v5, v2, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v2, v5, :cond_3

    move v8, v2

    :goto_1
    add-int/lit8 v9, v8, 0x1

    .line 4
    aget v10, p0, v8

    cmpl-float v10, v10, v6

    if-lez v10, :cond_1

    .line 5
    aget v6, p0, v8

    :cond_1
    if-lt v9, v5, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v2, v5, :cond_5

    move v8, v2

    :goto_3
    add-int/lit8 v9, v8, 0x1

    .line 6
    aget v10, p0, v8

    sub-float/2addr v10, v6

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    double-to-float v10, v10

    aput v10, p0, v8

    .line 7
    aget v8, p0, v8

    add-float/2addr v7, v8

    if-lt v9, v5, :cond_4

    goto :goto_4

    :cond_4
    move v8, v9

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v2, v5, :cond_7

    :goto_5
    add-int/lit8 v6, v2, 0x1

    .line 8
    aget v8, p0, v2

    div-float/2addr v8, v7

    aput v8, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v6, v5, :cond_6

    goto :goto_6

    :cond_6
    move v2, v6

    goto :goto_5

    :cond_7
    :goto_6
    if-lt v4, v3, :cond_8

    goto :goto_7

    :cond_8
    move v2, v4

    goto :goto_0

    :cond_9
    :goto_7
    return-void

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final k(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 13

    const-class v0, Lcom/facebook/appevents/n0/i;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "x"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    .line 2
    aget v1, v1, v5

    .line 3
    new-instance v6, Lcom/facebook/appevents/n0/f;

    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v1, v7, v3

    aput v4, v7, v5

    invoke-direct {v6, v7}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 4
    iget-object p0, p0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 5
    iget-object v5, v6, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v4, :cond_4

    move v7, v3

    :goto_0
    add-int/lit8 v8, v7, 0x1

    if-lez v1, :cond_2

    move v9, v3

    :goto_1
    add-int/lit8 v10, v9, 0x1

    mul-int v11, v9, v4

    add-int/2addr v11, v7

    mul-int v12, v7, v1

    add-int/2addr v12, v9

    .line 6
    aget v9, p0, v12

    aput v9, v5, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v10, v1, :cond_1

    goto :goto_2

    :cond_1
    move v9, v10

    goto :goto_1

    :cond_2
    :goto_2
    if-lt v8, v4, :cond_3

    goto :goto_3

    :cond_3
    move v7, v8

    goto :goto_0

    :cond_4
    :goto_3
    return-object v6

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final l(Lcom/facebook/appevents/n0/f;)Lcom/facebook/appevents/n0/f;
    .locals 18

    move-object/from16 v0, p0

    const-class v1, Lcom/facebook/appevents/n0/i;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    const-string v2, "x"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v0, Lcom/facebook/appevents/n0/f;->a:[I

    const/4 v4, 0x0

    aget v5, v2, v4

    const/4 v6, 0x1

    .line 2
    aget v7, v2, v6

    const/4 v8, 0x2

    .line 3
    aget v2, v2, v8

    .line 4
    new-instance v9, Lcom/facebook/appevents/n0/f;

    const/4 v10, 0x3

    new-array v10, v10, [I

    aput v2, v10, v4

    aput v7, v10, v6

    aput v5, v10, v8

    invoke-direct {v9, v10}, Lcom/facebook/appevents/n0/f;-><init>([I)V

    .line 5
    iget-object v0, v0, Lcom/facebook/appevents/n0/f;->c:[F

    .line 6
    iget-object v6, v9, Lcom/facebook/appevents/n0/f;->c:[F

    if-lez v5, :cond_6

    move v8, v4

    :goto_0
    add-int/lit8 v10, v8, 0x1

    if-lez v7, :cond_4

    move v11, v4

    :goto_1
    add-int/lit8 v12, v11, 0x1

    if-lez v2, :cond_2

    move v13, v4

    :goto_2
    add-int/lit8 v14, v13, 0x1

    mul-int v15, v13, v5

    mul-int/2addr v15, v7

    mul-int v16, v11, v5

    add-int v16, v16, v15

    add-int v16, v16, v8

    mul-int v15, v8, v7

    mul-int/2addr v15, v2

    mul-int v17, v11, v2

    add-int v17, v17, v15

    add-int v17, v17, v13

    .line 7
    aget v13, v0, v17

    aput v13, v6, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v14, v2, :cond_1

    goto :goto_3

    :cond_1
    move v13, v14

    goto :goto_2

    :cond_2
    :goto_3
    if-lt v12, v7, :cond_3

    goto :goto_4

    :cond_3
    move v11, v12

    goto :goto_1

    :cond_4
    :goto_4
    if-lt v10, v5, :cond_5

    goto :goto_5

    :cond_5
    move v8, v10

    goto :goto_0

    :cond_6
    :goto_5
    return-object v9

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v3
.end method
