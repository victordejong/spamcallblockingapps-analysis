.class public final Le/m/a/c/g1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/k$a;
    }
.end annotation


# direct methods
.method public static a(Le/m/a/c/q1/t;Le/m/a/c/q1/m;ZLe/m/a/c/g1/k$a;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/a/c/q1/t;->w()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p1, Le/m/a/c/q1/m;->b:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    :goto_0
    iput-wide v0, p3, Le/m/a/c/g1/k$a;->a:J

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Le/m/a/c/q1/t;Le/m/a/c/q1/m;ILe/m/a/c/g1/k$a;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Le/m/a/c/q1/t;->b:I

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    move/from16 v7, p2

    int-to-long v7, v7

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return v8

    :cond_0
    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    cmp-long v5, v5, v9

    const/4 v6, 0x1

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    const/16 v7, 0xc

    shr-long v11, v3, v7

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v11, v11

    const/16 v12, 0x8

    shr-long v15, v3, v12

    and-long v7, v15, v13

    long-to-int v7, v7

    const/4 v8, 0x4

    shr-long v15, v3, v8

    and-long/2addr v13, v15

    long-to-int v8, v13

    shr-long v13, v3, v6

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v13, v13

    and-long/2addr v3, v9

    cmp-long v3, v3, v9

    if-nez v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x7

    if-gt v8, v4, :cond_3

    .line 3
    iget v4, v1, Le/m/a/c/q1/m;->g:I

    sub-int/2addr v4, v6

    if-ne v8, v4, :cond_4

    goto :goto_2

    :cond_3
    const/16 v4, 0xa

    if-gt v8, v4, :cond_4

    .line 4
    iget v4, v1, Le/m/a/c/q1/m;->g:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    :goto_2
    move v4, v6

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_f

    if-nez v13, :cond_5

    goto :goto_4

    .line 5
    :cond_5
    iget v4, v1, Le/m/a/c/q1/m;->i:I

    if-ne v13, v4, :cond_6

    :goto_4
    move v4, v6

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_f

    if-nez v3, :cond_f

    move-object/from16 v3, p3

    .line 6
    invoke-static {v0, v1, v5, v3}, Le/m/a/c/g1/k;->a(Le/m/a/c/q1/t;Le/m/a/c/q1/m;ZLe/m/a/c/g1/k$a;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 7
    invoke-static {v0, v11}, Le/m/a/c/g1/k;->c(Le/m/a/c/q1/t;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 8
    iget v4, v1, Le/m/a/c/q1/m;->b:I

    if-gt v3, v4, :cond_7

    move v3, v6

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_f

    .line 9
    iget v3, v1, Le/m/a/c/q1/m;->e:I

    if-nez v7, :cond_8

    goto :goto_7

    :cond_8
    const/16 v4, 0xb

    if-gt v7, v4, :cond_9

    .line 10
    iget v1, v1, Le/m/a/c/q1/m;->f:I

    if-ne v7, v1, :cond_c

    goto :goto_7

    :cond_9
    const/16 v1, 0xc

    if-ne v7, v1, :cond_a

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->q()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    if-ne v1, v3, :cond_c

    goto :goto_7

    :cond_a
    const/16 v1, 0xe

    if-gt v7, v1, :cond_c

    .line 12
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->v()I

    move-result v4

    if-ne v7, v1, :cond_b

    mul-int/lit8 v4, v4, 0xa

    :cond_b
    if-ne v4, v3, :cond_c

    :goto_7
    move v1, v6

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_f

    .line 13
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->q()I

    move-result v1

    .line 14
    iget v3, v0, Le/m/a/c/q1/t;->b:I

    .line 15
    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    sub-int/2addr v3, v6

    .line 16
    sget v4, Le/m/a/c/q1/d0;->a:I

    const/4 v4, 0x0

    :goto_9
    if-ge v2, v3, :cond_d

    .line 17
    sget-object v5, Le/m/a/c/q1/d0;->l:[I

    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v4, v7

    aget v4, v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    if-ne v1, v4, :cond_e

    move v0, v6

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    move v8, v6

    goto :goto_b

    :cond_f
    const/4 v8, 0x0

    :goto_b
    return v8
.end method

.method public static c(Le/m/a/c/q1/t;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x100

    add-int/lit8 p1, p1, -0x8

    shl-int/2addr p0, p1

    return p0

    .line 1
    :pswitch_1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->v()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 2
    :pswitch_2
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3
    const/16 p0, 0x240

    add-int/lit8 p1, p1, -0x2

    shl-int/2addr p0, p1

    return p0

    :pswitch_4
    const/16 p0, 0xc0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
