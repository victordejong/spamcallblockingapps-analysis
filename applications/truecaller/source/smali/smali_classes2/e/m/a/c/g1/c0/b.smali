.class public final Le/m/a/c/g1/c0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/c0/b$c;,
        Le/m/a/c/g1/c0/b$b;,
        Le/m/a/c/g1/c0/b$a;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Le/m/a/c/q1/d0;->r(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Le/m/a/c/g1/c0/b;->a:[B

    return-void
.end method

.method public static a(Le/m/a/c/q1/t;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/q1/t;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/c/q1/t;->C(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Le/m/a/c/q1/t;->D(I)V

    .line 3
    invoke-static {p0}, Le/m/a/c/g1/c0/b;->b(Le/m/a/c/q1/t;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Le/m/a/c/q1/t;->D(I)V

    .line 5
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Le/m/a/c/q1/t;->D(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Le/m/a/c/q1/t;->v()I

    move-result v2

    invoke-virtual {p0, v2}, Le/m/a/c/q1/t;->D(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Le/m/a/c/q1/t;->D(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Le/m/a/c/q1/t;->D(I)V

    .line 10
    invoke-static {p0}, Le/m/a/c/g1/c0/b;->b(Le/m/a/c/q1/t;)I

    .line 11
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v0

    .line 12
    invoke-static {v0}, Le/m/a/c/q1/q;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 16
    invoke-virtual {p0, v1}, Le/m/a/c/q1/t;->D(I)V

    .line 17
    invoke-virtual {p0, p1}, Le/m/a/c/q1/t;->D(I)V

    .line 18
    invoke-static {p0}, Le/m/a/c/g1/c0/b;->b(Le/m/a/c/q1/t;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Le/m/a/c/q1/t;->a:[B

    iget v4, p0, Le/m/a/c/q1/t;->b:I

    invoke-static {v3, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v2, p0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v2, p1

    iput v2, p0, Le/m/a/c/q1/t;->b:I

    .line 22
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Le/m/a/c/q1/t;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/a/c/q1/t;->q()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c(Le/m/a/c/q1/t;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/c/q1/t;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Le/m/a/c/g1/c0/j;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/m/a/c/q1/t;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize should be positive"

    .line 4
    invoke-static {v7, v8}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v5

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 6
    invoke-virtual {v0, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Le/m/a/c/q1/t;->D(I)V

    .line 11
    invoke-virtual {v0, v13}, Le/m/a/c/q1/t;->n(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 14
    invoke-static {v3, v7}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 16
    invoke-virtual {v0, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v7

    .line 18
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 19
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->e()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 20
    invoke-virtual {v0, v6}, Le/m/a/c/q1/t;->D(I)V

    if-nez v3, :cond_9

    .line 21
    invoke-virtual {v0, v6}, Le/m/a/c/q1/t;->D(I)V

    move v3, v5

    move v14, v3

    goto :goto_8

    .line 22
    :cond_9
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->q()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 23
    :goto_8
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->q()I

    move-result v7

    if-ne v7, v6, :cond_a

    move v10, v6

    goto :goto_9

    :cond_a
    move v10, v5

    .line 24
    :goto_9
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->q()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 25
    iget-object v8, v0, Le/m/a/c/q1/t;->a:[B

    iget v9, v0, Le/m/a/c/q1/t;->b:I

    invoke-static {v8, v9, v13, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget v8, v0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v8, v7

    iput v8, v0, Le/m/a/c/q1/t;->b:I

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/q1/t;->q()I

    move-result v7

    .line 28
    new-array v8, v7, [B

    .line 29
    iget-object v9, v0, Le/m/a/c/q1/t;->a:[B

    iget v6, v0, Le/m/a/c/q1/t;->b:I

    invoke-static {v9, v6, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v6, v0, Le/m/a/c/q1/t;->b:I

    add-int/2addr v6, v7

    iput v6, v0, Le/m/a/c/q1/t;->b:I

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 31
    :goto_a
    new-instance v6, Le/m/a/c/g1/c0/j;

    move-object v9, v6

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Le/m/a/c/g1/c0/j;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v6

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    const/4 v6, 0x1

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    const/4 v5, 0x1

    :cond_e
    const-string v6, "tenc atom is mandatory"

    .line 32
    invoke-static {v5, v6}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 33
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_c
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public static d(Le/m/a/c/g1/c0/a$a;Le/m/a/c/g1/c0/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Le/m/a/c/g1/c0/i;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const v2, 0x6d646961

    .line 1
    invoke-virtual {v0, v2}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v2

    const v3, 0x68646c72    # 4.3148E24f

    .line 2
    invoke-virtual {v2, v3}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v3

    iget-object v3, v3, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v4, 0x10

    .line 3
    invoke-virtual {v3, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 4
    invoke-virtual {v3}, Le/m/a/c/q1/t;->e()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, -0x1

    const v7, 0x736f756e

    if-ne v3, v7, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v9, v3

    goto :goto_2

    :cond_0
    const v7, 0x76696465

    if-ne v3, v7, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const v7, 0x74657874

    if-eq v3, v7, :cond_4

    const v7, 0x7362746c

    if-eq v3, v7, :cond_4

    const v7, 0x73756274

    if-eq v3, v7, :cond_4

    const v7, 0x636c6370

    if-ne v3, v7, :cond_2

    goto :goto_1

    :cond_2
    const v7, 0x6d657461

    if-ne v3, v7, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v6

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x3

    goto :goto_0

    :goto_2
    const/4 v3, 0x0

    if-ne v9, v6, :cond_5

    return-object v3

    :cond_5
    const v7, 0x746b6864

    .line 5
    invoke-virtual {v0, v7}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v7

    iget-object v7, v7, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v8, 0x8

    .line 6
    invoke-virtual {v7, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 7
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v10

    shr-int/lit8 v10, v10, 0x18

    and-int/lit16 v10, v10, 0xff

    if-nez v10, :cond_6

    move v11, v8

    goto :goto_3

    :cond_6
    move v11, v4

    .line 8
    :goto_3
    invoke-virtual {v7, v11}, Le/m/a/c/q1/t;->D(I)V

    .line 9
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v11

    .line 10
    invoke-virtual {v7, v5}, Le/m/a/c/q1/t;->D(I)V

    .line 11
    iget v12, v7, Le/m/a/c/q1/t;->b:I

    if-nez v10, :cond_7

    move v13, v5

    goto :goto_4

    :cond_7
    move v13, v8

    :goto_4
    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_9

    .line 12
    iget-object v15, v7, Le/m/a/c/q1/t;->a:[B

    add-int v16, v12, v14

    aget-byte v15, v15, v16

    if-eq v15, v6, :cond_8

    const/4 v6, 0x0

    goto :goto_6

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x1

    :goto_6
    const-wide/16 v14, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_a

    .line 13
    invoke-virtual {v7, v13}, Le/m/a/c/q1/t;->D(I)V

    goto :goto_8

    :cond_a
    if-nez v10, :cond_b

    .line 14
    invoke-virtual {v7}, Le/m/a/c/q1/t;->r()J

    move-result-wide v12

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Le/m/a/c/q1/t;->u()J

    move-result-wide v12

    :goto_7
    cmp-long v6, v12, v14

    if-nez v6, :cond_c

    :goto_8
    move-wide/from16 v12, v16

    .line 15
    :cond_c
    invoke-virtual {v7, v4}, Le/m/a/c/q1/t;->D(I)V

    .line 16
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v4

    .line 17
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v6

    .line 18
    invoke-virtual {v7, v5}, Le/m/a/c/q1/t;->D(I)V

    .line 19
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v5

    .line 20
    invoke-virtual {v7}, Le/m/a/c/q1/t;->e()I

    move-result v7

    const/high16 v10, 0x10000

    const/high16 v3, -0x10000

    if-nez v4, :cond_d

    if-ne v6, v10, :cond_d

    if-ne v5, v3, :cond_d

    if-nez v7, :cond_d

    const/16 v3, 0x5a

    goto :goto_9

    :cond_d
    if-nez v4, :cond_e

    if-ne v6, v3, :cond_e

    if-ne v5, v10, :cond_e

    if-nez v7, :cond_e

    const/16 v3, 0x10e

    goto :goto_9

    :cond_e
    if-ne v4, v3, :cond_f

    if-nez v6, :cond_f

    if-nez v5, :cond_f

    if-ne v7, v3, :cond_f

    const/16 v3, 0xb4

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    cmp-long v4, p2, v16

    if-nez v4, :cond_10

    move-object/from16 v4, p1

    move-wide/from16 v19, v12

    goto :goto_a

    :cond_10
    move-object/from16 v4, p1

    move-wide/from16 v19, p2

    .line 21
    :goto_a
    iget-object v4, v4, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 22
    invoke-virtual {v4, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 23
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_11

    move v5, v8

    goto :goto_b

    :cond_11
    const/16 v5, 0x10

    .line 24
    :goto_b
    invoke-virtual {v4, v5}, Le/m/a/c/q1/t;->D(I)V

    .line 25
    invoke-virtual {v4}, Le/m/a/c/q1/t;->r()J

    move-result-wide v12

    cmp-long v4, v19, v16

    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    const-wide/32 v21, 0xf4240

    move-wide/from16 v23, v12

    .line 26
    invoke-static/range {v19 .. v24}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v4

    move-wide/from16 v16, v4

    :goto_c
    const v4, 0x6d696e66

    .line 27
    invoke-virtual {v2, v4}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v4

    const v5, 0x7374626c

    .line 28
    invoke-virtual {v4, v5}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v4

    const v5, 0x6d646864

    .line 29
    invoke-virtual {v2, v5}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v2

    iget-object v2, v2, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 30
    invoke-virtual {v2, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 31
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_13

    move v6, v8

    goto :goto_d

    :cond_13
    const/16 v6, 0x10

    .line 32
    :goto_d
    invoke-virtual {v2, v6}, Le/m/a/c/q1/t;->D(I)V

    .line 33
    invoke-virtual {v2}, Le/m/a/c/q1/t;->r()J

    move-result-wide v6

    if-nez v5, :cond_14

    const/4 v8, 0x4

    .line 34
    :cond_14
    invoke-virtual {v2, v8}, Le/m/a/c/q1/t;->D(I)V

    .line 35
    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v2

    const-string v5, ""

    .line 36
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v8, v2, 0xa

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v8, v2, 0x5

    and-int/lit8 v8, v8, 0x1f

    add-int/lit8 v8, v8, 0x60

    int-to-char v8, v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v5, 0x73747364

    .line 38
    invoke-virtual {v4, v5}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v4

    iget-object v4, v4, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 39
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0xc

    .line 40
    invoke-virtual {v4, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 41
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v6

    .line 42
    new-array v10, v6, [Le/m/a/c/g1/c0/j;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    move/from16 v31, v8

    move/from16 v34, v19

    const/16 v18, 0x0

    move-object v8, v1

    :goto_e
    if-ge v7, v6, :cond_78

    .line 43
    iget v14, v4, Le/m/a/c/q1/t;->b:I

    .line 44
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v15

    if-lez v15, :cond_15

    const/16 v19, 0x1

    goto :goto_f

    :cond_15
    const/16 v19, 0x0

    :goto_f
    move/from16 p1, v6

    move-wide/from16 p2, v12

    move/from16 v6, v19

    const-string v12, "childAtomSize should be positive"

    .line 45
    invoke-static {v6, v12}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 46
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v6

    const v13, 0x61766331

    if-eq v6, v13, :cond_53

    const v13, 0x61766333

    if-eq v6, v13, :cond_53

    const v13, 0x656e6376

    if-eq v6, v13, :cond_53

    const v13, 0x6d703476

    if-eq v6, v13, :cond_53

    const v13, 0x68766331

    if-eq v6, v13, :cond_53

    const v13, 0x68657631

    if-eq v6, v13, :cond_53

    const v13, 0x73323633

    if-eq v6, v13, :cond_53

    const v13, 0x76703038

    if-eq v6, v13, :cond_53

    const v13, 0x76703039

    if-eq v6, v13, :cond_53

    const v13, 0x61763031

    if-eq v6, v13, :cond_53

    const v13, 0x64766176

    if-eq v6, v13, :cond_53

    const v13, 0x64766131

    if-eq v6, v13, :cond_53

    const v13, 0x64766865

    if-eq v6, v13, :cond_53

    const v13, 0x64766831

    if-ne v6, v13, :cond_16

    goto/16 :goto_2f

    :cond_16
    const v13, 0x6d703461

    move/from16 v35, v9

    const v9, 0x656e6361

    move-object/from16 v36, v2

    const v2, 0x616c6163

    if-eq v6, v13, :cond_20

    if-eq v6, v9, :cond_20

    const v9, 0x61632d33

    if-eq v6, v9, :cond_20

    const v9, 0x65632d33

    if-eq v6, v9, :cond_20

    const v9, 0x61632d34

    if-eq v6, v9, :cond_20

    const v9, 0x64747363

    if-eq v6, v9, :cond_20

    const v9, 0x64747365

    if-eq v6, v9, :cond_20

    const v9, 0x64747368

    if-eq v6, v9, :cond_20

    const v9, 0x6474736c

    if-eq v6, v9, :cond_20

    const v9, 0x73616d72

    if-eq v6, v9, :cond_20

    const v9, 0x73617762

    if-eq v6, v9, :cond_20

    const v9, 0x6c70636d

    if-eq v6, v9, :cond_20

    const v9, 0x736f7774

    if-eq v6, v9, :cond_20

    const v9, 0x74776f73

    if-eq v6, v9, :cond_20

    const v9, 0x2e6d7033

    if-eq v6, v9, :cond_20

    if-eq v6, v2, :cond_20

    const v2, 0x616c6177

    if-eq v6, v2, :cond_20

    const v2, 0x756c6177

    if-eq v6, v2, :cond_20

    const v2, 0x4f707573

    if-eq v6, v2, :cond_20

    const v2, 0x664c6143

    if-ne v6, v2, :cond_17

    goto/16 :goto_16

    :cond_17
    const v2, 0x54544d4c

    if-eq v6, v2, :cond_19

    const v2, 0x74783367

    if-eq v6, v2, :cond_19

    const v2, 0x77767474

    if-eq v6, v2, :cond_19

    const v2, 0x73747070

    if-eq v6, v2, :cond_19

    const v2, 0x63363038

    if-ne v6, v2, :cond_18

    goto :goto_10

    :cond_18
    const v2, 0x63616d6d

    if-ne v6, v2, :cond_1e

    .line 47
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "application/x-camera-motion"

    const/4 v9, -0x1

    const/4 v12, 0x0

    invoke-static {v2, v6, v12, v9, v12}, Lcom/google/android/exoplayer2/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    goto/16 :goto_15

    :cond_19
    :goto_10
    add-int/lit8 v2, v14, 0x8

    add-int/lit8 v2, v2, 0x8

    .line 48
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    const v2, 0x54544d4c

    const-string v9, "application/ttml+xml"

    if-ne v6, v2, :cond_1a

    :goto_11
    const-wide v12, 0x7fffffffffffffffL

    goto :goto_12

    :cond_1a
    const v2, 0x74783367

    if-ne v6, v2, :cond_1b

    add-int/lit8 v2, v15, -0x8

    add-int/lit8 v2, v2, -0x8

    .line 49
    new-array v6, v2, [B

    .line 50
    iget-object v9, v4, Le/m/a/c/q1/t;->a:[B

    iget v12, v4, Le/m/a/c/q1/t;->b:I

    const/4 v13, 0x0

    invoke-static {v9, v12, v6, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v9, v4, Le/m/a/c/q1/t;->b:I

    add-int/2addr v9, v2

    iput v9, v4, Le/m/a/c/q1/t;->b:I

    .line 52
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "application/x-quicktime-tx3g"

    const-wide v12, 0x7fffffffffffffffL

    goto :goto_13

    :cond_1b
    const v2, 0x77767474

    if-ne v6, v2, :cond_1c

    const-string v9, "application/x-mp4-vtt"

    goto :goto_11

    :cond_1c
    const v2, 0x73747070

    if-ne v6, v2, :cond_1d

    const-wide/16 v12, 0x0

    :goto_12
    const/4 v2, 0x0

    move-object v6, v9

    :goto_13
    move-object/from16 v29, v2

    move-object/from16 v20, v6

    move-wide/from16 v27, v12

    goto :goto_14

    :cond_1d
    const v2, 0x63363038

    if-ne v6, v2, :cond_1f

    const-string v2, "application/x-mp4-cea-608"

    const/4 v6, 0x0

    const/16 v34, 0x1

    move-object/from16 v20, v2

    move-object/from16 v29, v6

    const-wide v27, 0x7fffffffffffffffL

    .line 53
    :goto_14
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    move-object/from16 v24, v5

    .line 54
    invoke-static/range {v19 .. v29}, Lcom/google/android/exoplayer2/Format;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    :cond_1e
    :goto_15
    move/from16 v37, v3

    move-object/from16 v38, v5

    move/from16 v39, v7

    move-object/from16 v40, v10

    move-object v3, v1

    goto/16 :goto_48

    .line 55
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 56
    :cond_20
    :goto_16
    sget-object v2, Le/m/a/c/c1/g;->d:[I

    sget-object v9, Le/m/a/c/c1/g;->b:[I

    add-int/lit8 v13, v14, 0x8

    const/16 v0, 0x8

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v4, v13}, Le/m/a/c/q1/t;->C(I)V

    const/4 v13, 0x6

    if-eqz p6, :cond_21

    .line 57
    invoke-virtual {v4}, Le/m/a/c/q1/t;->v()I

    move-result v0

    .line 58
    invoke-virtual {v4, v13}, Le/m/a/c/q1/t;->D(I)V

    goto :goto_17

    .line 59
    :cond_21
    invoke-virtual {v4, v0}, Le/m/a/c/q1/t;->D(I)V

    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_24

    const/4 v13, 0x1

    if-ne v0, v13, :cond_22

    goto :goto_18

    :cond_22
    const/4 v13, 0x2

    if-ne v0, v13, :cond_23

    const/16 v0, 0x10

    .line 60
    invoke-virtual {v4, v0}, Le/m/a/c/q1/t;->D(I)V

    .line 61
    invoke-virtual {v4}, Le/m/a/c/q1/t;->k()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    .line 62
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 63
    invoke-virtual {v4}, Le/m/a/c/q1/t;->t()I

    move-result v1

    const/16 v13, 0x14

    .line 64
    invoke-virtual {v4, v13}, Le/m/a/c/q1/t;->D(I)V

    move/from16 v37, v3

    move-object/from16 v38, v5

    goto :goto_19

    :cond_23
    move/from16 v37, v3

    move-object/from16 v38, v5

    move/from16 v39, v7

    move-object/from16 v40, v10

    goto/16 :goto_2e

    .line 65
    :cond_24
    :goto_18
    invoke-virtual {v4}, Le/m/a/c/q1/t;->v()I

    move-result v1

    const/4 v13, 0x6

    .line 66
    invoke-virtual {v4, v13}, Le/m/a/c/q1/t;->D(I)V

    .line 67
    iget-object v13, v4, Le/m/a/c/q1/t;->a:[B

    move/from16 v19, v1

    iget v1, v4, Le/m/a/c/q1/t;->b:I

    move/from16 v37, v3

    add-int/lit8 v3, v1, 0x1

    iput v3, v4, Le/m/a/c/q1/t;->b:I

    aget-byte v1, v13, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    move-object/from16 v38, v5

    add-int/lit8 v5, v3, 0x1

    iput v5, v4, Le/m/a/c/q1/t;->b:I

    aget-byte v3, v13, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v5, v5, 0x2

    .line 68
    iput v5, v4, Le/m/a/c/q1/t;->b:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_25

    const/16 v0, 0x10

    .line 69
    invoke-virtual {v4, v0}, Le/m/a/c/q1/t;->D(I)V

    :cond_25
    move v0, v1

    move/from16 v1, v19

    .line 70
    :goto_19
    iget v3, v4, Le/m/a/c/q1/t;->b:I

    const v5, 0x656e6361

    if-ne v6, v5, :cond_28

    .line 71
    invoke-static {v4, v14, v15}, Le/m/a/c/g1/c0/b;->c(Le/m/a/c/q1/t;II)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 72
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v8, :cond_26

    const/4 v8, 0x0

    goto :goto_1a

    .line 73
    :cond_26
    iget-object v13, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Le/m/a/c/g1/c0/j;

    iget-object v13, v13, Le/m/a/c/g1/c0/j;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {v8, v13}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v8

    .line 75
    :goto_1a
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Le/m/a/c/g1/c0/j;

    aput-object v5, v10, v7

    .line 76
    :cond_27
    invoke-virtual {v4, v3}, Le/m/a/c/q1/t;->C(I)V

    :cond_28
    const v5, 0x61632d33

    const-string v13, "audio/eac3"

    const-string v19, "audio/raw"

    if-ne v6, v5, :cond_29

    const-string v5, "audio/ac3"

    :goto_1b
    move-object/from16 v19, v5

    goto/16 :goto_1e

    :cond_29
    const v5, 0x65632d33

    if-ne v6, v5, :cond_2a

    move-object/from16 v19, v13

    goto/16 :goto_1e

    :cond_2a
    const v5, 0x61632d34

    if-ne v6, v5, :cond_2b

    const-string v5, "audio/ac4"

    goto :goto_1b

    :cond_2b
    const v5, 0x64747363

    if-ne v6, v5, :cond_2c

    const-string v5, "audio/vnd.dts"

    goto :goto_1b

    :cond_2c
    const v5, 0x64747368

    if-eq v6, v5, :cond_3a

    const v5, 0x6474736c

    if-ne v6, v5, :cond_2d

    goto/16 :goto_1d

    :cond_2d
    const v5, 0x64747365

    if-ne v6, v5, :cond_2e

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_1b

    :cond_2e
    const v5, 0x73616d72

    if-ne v6, v5, :cond_2f

    const-string v5, "audio/3gpp"

    goto :goto_1b

    :cond_2f
    const v5, 0x73617762

    if-ne v6, v5, :cond_30

    const-string v5, "audio/amr-wb"

    goto :goto_1b

    :cond_30
    const v5, 0x6c70636d

    if-eq v6, v5, :cond_39

    const v5, 0x736f7774

    if-ne v6, v5, :cond_31

    goto :goto_1c

    :cond_31
    const v5, 0x74776f73

    if-ne v6, v5, :cond_32

    const/high16 v5, 0x10000000

    goto :goto_1f

    :cond_32
    const v5, 0x2e6d7033

    if-ne v6, v5, :cond_33

    const-string v5, "audio/mpeg"

    goto :goto_1b

    :cond_33
    const v5, 0x616c6163

    if-ne v6, v5, :cond_34

    const-string v5, "audio/alac"

    goto :goto_1b

    :cond_34
    const v5, 0x616c6177

    if-ne v6, v5, :cond_35

    const-string v5, "audio/g711-alaw"

    goto :goto_1b

    :cond_35
    const v5, 0x756c6177

    if-ne v6, v5, :cond_36

    const-string v5, "audio/g711-mlaw"

    goto :goto_1b

    :cond_36
    const v5, 0x4f707573

    if-ne v6, v5, :cond_37

    const-string v5, "audio/opus"

    goto :goto_1b

    :cond_37
    const v5, 0x664c6143

    if-ne v6, v5, :cond_38

    const-string v5, "audio/flac"

    goto/16 :goto_1b

    :cond_38
    const/4 v5, -0x1

    const/16 v19, 0x0

    goto :goto_1f

    :cond_39
    :goto_1c
    const/4 v5, 0x2

    goto :goto_1f

    :cond_3a
    :goto_1d
    const-string v5, "audio/vnd.dts.hd"

    goto/16 :goto_1b

    :goto_1e
    const/4 v5, -0x1

    :goto_1f
    const/4 v6, 0x0

    move/from16 v30, v0

    move-object/from16 v32, v13

    move-object/from16 v0, v19

    :goto_20
    sub-int v13, v3, v14

    if-ge v13, v15, :cond_50

    .line 77
    invoke-virtual {v4, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 78
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v13

    if-lez v13, :cond_3b

    const/16 v19, 0x1

    goto :goto_21

    :cond_3b
    const/16 v19, 0x0

    :goto_21
    move/from16 v39, v7

    move/from16 v7, v19

    .line 79
    invoke-static {v7, v12}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 80
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v7

    move-object/from16 v40, v10

    const v10, 0x65736473

    if-eq v7, v10, :cond_49

    if-eqz p6, :cond_3c

    const v10, 0x77617665

    if-ne v7, v10, :cond_3c

    const/4 v10, 0x0

    const v19, 0x65736473

    move-object/from16 v20, v9

    move/from16 v41, v19

    move-object/from16 v19, v2

    move v2, v10

    move/from16 v10, v41

    goto/16 :goto_28

    :cond_3c
    const v10, 0x64616333

    if-ne v7, v10, :cond_3e

    add-int/lit8 v7, v3, 0x8

    .line 81
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 82
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 83
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x6

    .line 84
    aget v25, v9, v7

    .line 85
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit8 v10, v7, 0x38

    shr-int/lit8 v10, v10, 0x3

    .line 86
    aget v10, v2, v10

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3d

    add-int/lit8 v10, v10, 0x1

    :cond_3d
    move/from16 v24, v10

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string v20, "audio/ac3"

    move-object/from16 v27, v8

    move-object/from16 v29, v38

    .line 87
    invoke-static/range {v19 .. v29}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    :goto_22
    move-object/from16 v18, v7

    goto/16 :goto_25

    :cond_3e
    const v10, 0x64656333

    if-ne v7, v10, :cond_42

    add-int/lit8 v7, v3, 0x8

    .line 88
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 89
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x2

    .line 90
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->D(I)V

    .line 91
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x6

    .line 92
    aget v25, v9, v7

    .line 93
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit8 v10, v7, 0xe

    shr-int/lit8 v10, v10, 0x1

    .line 94
    aget v10, v2, v10

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3f

    add-int/lit8 v10, v10, 0x1

    .line 95
    :cond_3f
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit8 v7, v7, 0x1e

    shr-int/lit8 v7, v7, 0x1

    if-lez v7, :cond_40

    .line 96
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_40

    add-int/lit8 v10, v10, 0x2

    :cond_40
    move/from16 v24, v10

    .line 97
    invoke-virtual {v4}, Le/m/a/c/q1/t;->a()I

    move-result v7

    if-lez v7, :cond_41

    .line 98
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_41

    const-string v7, "audio/eac3-joc"

    move-object/from16 v20, v7

    goto :goto_23

    :cond_41
    move-object/from16 v20, v32

    :goto_23
    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v27, v8

    move-object/from16 v29, v38

    .line 99
    invoke-static/range {v19 .. v29}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    goto :goto_22

    :cond_42
    const v10, 0x64616334

    if-ne v7, v10, :cond_44

    add-int/lit8 v7, v3, 0x8

    .line 100
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 101
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v7, 0x1

    .line 102
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->D(I)V

    .line 103
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    shr-int/lit8 v10, v10, 0x5

    if-ne v10, v7, :cond_43

    const v7, 0xbb80

    goto :goto_24

    :cond_43
    const v7, 0xac44

    :goto_24
    move/from16 v25, v7

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, 0x2

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string v20, "audio/ac4"

    move-object/from16 v27, v8

    move-object/from16 v29, v38

    .line 104
    invoke-static/range {v19 .. v29}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    goto/16 :goto_22

    :cond_44
    const v10, 0x64647473

    if-ne v7, v10, :cond_45

    .line 105
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v0

    move/from16 v24, v1

    move/from16 v25, v30

    move-object/from16 v27, v8

    move-object/from16 v29, v38

    invoke-static/range {v19 .. v29}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    goto/16 :goto_22

    :goto_25
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    goto/16 :goto_26

    :cond_45
    const v10, 0x644f7073

    if-ne v7, v10, :cond_46

    add-int/lit8 v6, v13, -0x8

    .line 106
    sget-object v7, Le/m/a/c/g1/c0/b;->a:[B

    array-length v10, v7

    add-int/2addr v10, v6

    new-array v10, v10, [B

    move-object/from16 v19, v2

    .line 107
    array-length v2, v7

    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-static {v7, v9, v10, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x8

    .line 108
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 109
    array-length v2, v7

    .line 110
    iget-object v7, v4, Le/m/a/c/q1/t;->a:[B

    iget v9, v4, Le/m/a/c/q1/t;->b:I

    invoke-static {v7, v9, v10, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iget v2, v4, Le/m/a/c/q1/t;->b:I

    add-int/2addr v2, v6

    iput v2, v4, Le/m/a/c/q1/t;->b:I

    goto/16 :goto_27

    :cond_46
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    const v2, 0x64664c61

    if-ne v7, v2, :cond_47

    add-int/lit8 v2, v13, -0xc

    add-int/lit8 v6, v2, 0x4

    .line 112
    new-array v6, v6, [B

    const/16 v7, 0x66

    const/4 v9, 0x0

    .line 113
    aput-byte v7, v6, v9

    const/16 v7, 0x4c

    const/4 v9, 0x1

    .line 114
    aput-byte v7, v6, v9

    const/16 v7, 0x61

    const/4 v9, 0x2

    .line 115
    aput-byte v7, v6, v9

    const/16 v7, 0x43

    const/4 v9, 0x3

    .line 116
    aput-byte v7, v6, v9

    add-int/lit8 v7, v3, 0xc

    .line 117
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 118
    iget-object v7, v4, Le/m/a/c/q1/t;->a:[B

    iget v9, v4, Le/m/a/c/q1/t;->b:I

    const/4 v10, 0x4

    invoke-static {v7, v9, v6, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget v7, v4, Le/m/a/c/q1/t;->b:I

    add-int/2addr v7, v2

    iput v7, v4, Le/m/a/c/q1/t;->b:I

    goto :goto_26

    :cond_47
    const v2, 0x616c6163

    if-ne v7, v2, :cond_48

    add-int/lit8 v1, v13, -0xc

    .line 120
    new-array v10, v1, [B

    add-int/lit8 v2, v3, 0xc

    .line 121
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 122
    iget-object v2, v4, Le/m/a/c/q1/t;->a:[B

    iget v6, v4, Le/m/a/c/q1/t;->b:I

    const/4 v7, 0x0

    invoke-static {v2, v6, v10, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v2, v4, Le/m/a/c/q1/t;->b:I

    add-int/2addr v2, v1

    iput v2, v4, Le/m/a/c/q1/t;->b:I

    .line 124
    new-instance v1, Le/m/a/c/q1/t;

    invoke-direct {v1, v10}, Le/m/a/c/q1/t;-><init>([B)V

    const/16 v2, 0x9

    .line 125
    invoke-virtual {v1, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 126
    invoke-virtual {v1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    const/16 v6, 0x14

    .line 127
    invoke-virtual {v1, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 128
    invoke-virtual {v1}, Le/m/a/c/q1/t;->t()I

    move-result v1

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 130
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v30, v2

    goto :goto_27

    :cond_48
    :goto_26
    move-object v10, v6

    :goto_27
    move-object v6, v10

    goto :goto_2c

    :cond_49
    move-object/from16 v19, v2

    move-object/from16 v20, v9

    const/4 v2, 0x0

    :goto_28
    if-ne v7, v10, :cond_4a

    move v7, v3

    goto :goto_2a

    .line 132
    :cond_4a
    iget v7, v4, Le/m/a/c/q1/t;->b:I

    :goto_29
    sub-int v9, v7, v3

    if-ge v9, v13, :cond_4d

    .line 133
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 134
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v9

    if-lez v9, :cond_4b

    const/4 v2, 0x1

    .line 135
    :cond_4b
    invoke-static {v2, v12}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 136
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v2

    const v10, 0x65736473

    if-ne v2, v10, :cond_4c

    :goto_2a
    const/4 v2, -0x1

    goto :goto_2b

    :cond_4c
    add-int/2addr v7, v9

    const/4 v2, 0x0

    goto :goto_29

    :cond_4d
    const/4 v2, -0x1

    const/4 v7, -0x1

    :goto_2b
    if-eq v7, v2, :cond_4f

    .line 137
    invoke-static {v4, v7}, Le/m/a/c/g1/c0/b;->a(Le/m/a/c/q1/t;I)Landroid/util/Pair;

    move-result-object v0

    .line 138
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 139
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    const-string v6, "audio/mp4a-latm"

    .line 140
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 141
    invoke-static {v0}, Le/m/a/c/q1/g;->c([B)Landroid/util/Pair;

    move-result-object v1

    .line 142
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 143
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_4e
    move-object v6, v0

    move-object v0, v2

    :cond_4f
    :goto_2c
    add-int/2addr v3, v13

    move-object/from16 v2, v19

    move-object/from16 v9, v20

    move/from16 v7, v39

    move-object/from16 v10, v40

    goto/16 :goto_20

    :cond_50
    move/from16 v39, v7

    move-object/from16 v40, v10

    if-nez v18, :cond_52

    if-eqz v0, :cond_52

    .line 144
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, -0x1

    if-nez v6, :cond_51

    const/4 v2, 0x0

    goto :goto_2d

    .line 145
    :cond_51
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_2d
    move-object/from16 v27, v2

    const/16 v29, 0x0

    move-object/from16 v20, v0

    move/from16 v24, v1

    move/from16 v25, v30

    move/from16 v26, v5

    move-object/from16 v28, v8

    move-object/from16 v30, v38

    .line 146
    invoke-static/range {v19 .. v30}, Lcom/google/android/exoplayer2/Format;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    :cond_52
    :goto_2e
    move-object/from16 v3, p4

    goto/16 :goto_47

    :cond_53
    :goto_2f
    move-object/from16 v36, v2

    move/from16 v37, v3

    move-object/from16 v38, v5

    move/from16 v39, v7

    move/from16 v35, v9

    move-object/from16 v40, v10

    const/4 v0, -0x1

    add-int/lit8 v1, v14, 0x8

    add-int/lit8 v1, v1, 0x8

    .line 147
    invoke-virtual {v4, v1}, Le/m/a/c/q1/t;->C(I)V

    const/16 v1, 0x10

    .line 148
    invoke-virtual {v4, v1}, Le/m/a/c/q1/t;->D(I)V

    .line 149
    invoke-virtual {v4}, Le/m/a/c/q1/t;->v()I

    move-result v24

    .line 150
    invoke-virtual {v4}, Le/m/a/c/q1/t;->v()I

    move-result v25

    const/16 v1, 0x32

    .line 151
    invoke-virtual {v4, v1}, Le/m/a/c/q1/t;->D(I)V

    .line 152
    iget v1, v4, Le/m/a/c/q1/t;->b:I

    const v2, 0x656e6376

    if-ne v6, v2, :cond_56

    .line 153
    invoke-static {v4, v14, v15}, Le/m/a/c/g1/c0/b;->c(Le/m/a/c/q1/t;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 154
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v3, p4

    if-nez v3, :cond_54

    const/4 v5, 0x0

    goto :goto_30

    .line 155
    :cond_54
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Le/m/a/c/g1/c0/j;

    iget-object v5, v5, Le/m/a/c/g1/c0/j;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/drm/DrmInitData;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    .line 157
    :goto_30
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Le/m/a/c/g1/c0/j;

    aput-object v2, v40, v39

    goto :goto_31

    :cond_55
    move-object/from16 v3, p4

    move-object v5, v3

    .line 158
    :goto_31
    invoke-virtual {v4, v1}, Le/m/a/c/q1/t;->C(I)V

    move-object/from16 v33, v5

    goto :goto_32

    :cond_56
    move-object/from16 v3, p4

    move-object/from16 v33, v3

    :goto_32
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v29, v2

    move-object/from16 v20, v5

    move-object/from16 v30, v7

    move-object/from16 v21, v9

    move-object/from16 v27, v10

    move/from16 v41, v31

    move/from16 v31, v0

    move/from16 v0, v41

    :goto_33
    sub-int v2, v1, v14

    if-ge v2, v15, :cond_76

    .line 159
    invoke-virtual {v4, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 160
    iget v2, v4, Le/m/a/c/q1/t;->b:I

    .line 161
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v5

    if-nez v5, :cond_57

    .line 162
    iget v7, v4, Le/m/a/c/q1/t;->b:I

    sub-int/2addr v7, v14

    if-ne v7, v15, :cond_57

    goto/16 :goto_45

    :cond_57
    if-lez v5, :cond_58

    const/4 v7, 0x1

    goto :goto_34

    :cond_58
    const/4 v7, 0x0

    .line 163
    :goto_34
    invoke-static {v7, v12}, Ln3/g0/y;->s(ZLjava/lang/Object;)V

    .line 164
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v7

    const v9, 0x61766343

    if-ne v7, v9, :cond_5b

    if-nez v20, :cond_59

    const/4 v0, 0x1

    goto :goto_35

    :cond_59
    const/4 v0, 0x0

    .line 165
    :goto_35
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    add-int/lit8 v2, v2, 0x8

    .line 166
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 167
    invoke-static {v4}, Le/m/a/c/r1/h;->b(Le/m/a/c/q1/t;)Le/m/a/c/r1/h;

    move-result-object v0

    .line 168
    iget-object v2, v0, Le/m/a/c/r1/h;->a:Ljava/util/List;

    .line 169
    iget v7, v0, Le/m/a/c/r1/h;->b:I

    if-nez v8, :cond_5a

    .line 170
    iget v0, v0, Le/m/a/c/r1/h;->e:F

    move/from16 v29, v0

    :cond_5a
    const-string v0, "video/avc"

    move-object/from16 v27, v2

    goto/16 :goto_3d

    :cond_5b
    const v9, 0x68766343

    if-ne v7, v9, :cond_5d

    if-nez v20, :cond_5c

    const/4 v0, 0x1

    goto :goto_36

    :cond_5c
    const/4 v0, 0x0

    .line 171
    :goto_36
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    add-int/lit8 v2, v2, 0x8

    .line 172
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 173
    invoke-static {v4}, Le/m/a/c/r1/j;->a(Le/m/a/c/q1/t;)Le/m/a/c/r1/j;

    move-result-object v0

    .line 174
    iget-object v2, v0, Le/m/a/c/r1/j;->a:Ljava/util/List;

    .line 175
    iget v0, v0, Le/m/a/c/r1/j;->b:I

    const-string v7, "video/hevc"

    move-object/from16 v27, v2

    goto/16 :goto_3c

    :cond_5d
    const v9, 0x64766343

    if-eq v7, v9, :cond_70

    const v9, 0x64767643

    if-ne v7, v9, :cond_5e

    goto/16 :goto_40

    :cond_5e
    const v9, 0x76706343

    if-ne v7, v9, :cond_61

    if-nez v20, :cond_5f

    const/4 v2, 0x1

    goto :goto_37

    :cond_5f
    const/4 v2, 0x0

    .line 176
    :goto_37
    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    const v2, 0x76703038

    if-ne v6, v2, :cond_60

    const-string v2, "video/x-vnd.on2.vp8"

    goto :goto_39

    :cond_60
    const-string v2, "video/x-vnd.on2.vp9"

    goto :goto_39

    :cond_61
    const v9, 0x61763143

    if-ne v7, v9, :cond_63

    if-nez v20, :cond_62

    const/4 v2, 0x1

    goto :goto_38

    :cond_62
    const/4 v2, 0x0

    .line 177
    :goto_38
    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    const-string v2, "video/av01"

    :goto_39
    move v7, v0

    move-object v0, v2

    goto :goto_3d

    :cond_63
    const v9, 0x64323633

    if-ne v7, v9, :cond_65

    if-nez v20, :cond_64

    const/4 v2, 0x1

    goto :goto_3a

    :cond_64
    const/4 v2, 0x0

    .line 178
    :goto_3a
    invoke-static {v2}, Ln3/g0/y;->x(Z)V

    const-string v2, "video/3gpp"

    goto :goto_39

    :cond_65
    const v9, 0x65736473

    if-ne v7, v9, :cond_67

    if-nez v20, :cond_66

    const/4 v7, 0x1

    goto :goto_3b

    :cond_66
    const/4 v7, 0x0

    .line 179
    :goto_3b
    invoke-static {v7}, Ln3/g0/y;->x(Z)V

    .line 180
    invoke-static {v4, v2}, Le/m/a/c/g1/c0/b;->a(Le/m/a/c/q1/t;I)Landroid/util/Pair;

    move-result-object v2

    .line 181
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 182
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    :goto_3c
    move-object/from16 v41, v7

    move v7, v0

    move-object/from16 v0, v41

    :goto_3d
    move-object/from16 v20, v0

    move v0, v7

    goto/16 :goto_44

    :cond_67
    const v9, 0x70617370

    if-ne v7, v9, :cond_68

    add-int/lit8 v2, v2, 0x8

    .line 183
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->C(I)V

    .line 184
    invoke-virtual {v4}, Le/m/a/c/q1/t;->t()I

    move-result v2

    .line 185
    invoke-virtual {v4}, Le/m/a/c/q1/t;->t()I

    move-result v7

    int-to-float v2, v2

    int-to-float v7, v7

    div-float/2addr v2, v7

    const/4 v8, 0x1

    move/from16 v29, v2

    goto/16 :goto_44

    :cond_68
    const v9, 0x73763364

    if-ne v7, v9, :cond_6b

    add-int/lit8 v7, v2, 0x8

    :goto_3e
    sub-int v9, v7, v2

    if-ge v9, v5, :cond_6a

    .line 186
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 187
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v9

    .line 188
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v10

    const v13, 0x70726f6a

    if-ne v10, v13, :cond_69

    .line 189
    iget-object v2, v4, Le/m/a/c/q1/t;->a:[B

    add-int/2addr v9, v7

    invoke-static {v2, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    goto :goto_3f

    :cond_69
    add-int/2addr v7, v9

    goto :goto_3e

    :cond_6a
    const/4 v2, 0x0

    :goto_3f
    move-object/from16 v30, v2

    goto/16 :goto_44

    :cond_6b
    const v2, 0x73743364

    if-ne v7, v2, :cond_75

    .line 190
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v2

    const/4 v7, 0x3

    .line 191
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->D(I)V

    if-nez v2, :cond_75

    .line 192
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v2

    if-eqz v2, :cond_6f

    const/4 v9, 0x1

    if-eq v2, v9, :cond_6e

    const/4 v9, 0x2

    if-eq v2, v9, :cond_6d

    if-eq v2, v7, :cond_6c

    goto/16 :goto_44

    :cond_6c
    const/4 v2, 0x3

    move/from16 v31, v2

    goto :goto_44

    :cond_6d
    const/16 v31, 0x2

    goto :goto_44

    :cond_6e
    const/16 v31, 0x1

    goto :goto_44

    :cond_6f
    const/16 v31, 0x0

    goto :goto_44

    :cond_70
    :goto_40
    const/4 v2, 0x2

    .line 193
    invoke-virtual {v4, v2}, Le/m/a/c/q1/t;->D(I)V

    .line 194
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v2

    shr-int/lit8 v7, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    const/4 v9, 0x5

    shl-int/2addr v2, v9

    .line 195
    invoke-virtual {v4}, Le/m/a/c/q1/t;->q()I

    move-result v10

    shr-int/lit8 v10, v10, 0x3

    and-int/lit8 v10, v10, 0x1f

    or-int/2addr v2, v10

    const/4 v10, 0x4

    if-eq v7, v10, :cond_74

    if-eq v7, v9, :cond_74

    const/4 v9, 0x7

    if-ne v7, v9, :cond_71

    goto :goto_41

    :cond_71
    const/16 v9, 0x8

    if-ne v7, v9, :cond_72

    const-string v9, "hev1"

    goto :goto_42

    :cond_72
    const/16 v9, 0x9

    if-ne v7, v9, :cond_73

    const-string v9, "avc3"

    goto :goto_42

    :cond_73
    const/4 v2, 0x0

    goto :goto_43

    :cond_74
    :goto_41
    const-string v9, "dvhe"

    .line 196
    :goto_42
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".0"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    new-instance v10, Le/m/a/c/r1/i;

    invoke-direct {v10, v7, v2, v9}, Le/m/a/c/r1/i;-><init>(IILjava/lang/String;)V

    move-object v2, v10

    :goto_43
    if-eqz v2, :cond_75

    .line 198
    iget-object v2, v2, Le/m/a/c/r1/i;->a:Ljava/lang/String;

    const-string v20, "video/dolby-vision"

    move-object/from16 v21, v2

    :cond_75
    :goto_44
    add-int/2addr v1, v5

    goto/16 :goto_33

    :cond_76
    :goto_45
    if-nez v20, :cond_77

    goto :goto_46

    .line 199
    :cond_77
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/high16 v26, -0x40800000    # -1.0f

    const/16 v32, 0x0

    move/from16 v28, v37

    .line 200
    invoke-static/range {v19 .. v33}, Lcom/google/android/exoplayer2/Format;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v18

    :goto_46
    move/from16 v31, v0

    :goto_47
    move-object v8, v3

    :goto_48
    add-int/2addr v14, v15

    .line 201
    invoke-virtual {v4, v14}, Le/m/a/c/q1/t;->C(I)V

    add-int/lit8 v7, v39, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-wide/from16 v12, p2

    move-object v1, v3

    move/from16 v9, v35

    move-object/from16 v2, v36

    move/from16 v3, v37

    move-object/from16 v5, v38

    move-object/from16 v10, v40

    const-wide/16 v14, 0x0

    goto/16 :goto_e

    :cond_78
    move-object/from16 v36, v2

    move/from16 v35, v9

    move-object/from16 v40, v10

    move-wide/from16 p2, v12

    if-nez p5, :cond_7f

    const v0, 0x65647473

    move-object/from16 v1, p0

    .line 202
    invoke-virtual {v1, v0}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v0

    if-eqz v0, :cond_7e

    const v1, 0x656c7374

    .line 203
    invoke-virtual {v0, v1}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v0

    if-nez v0, :cond_79

    goto :goto_4c

    .line 204
    :cond_79
    iget-object v0, v0, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v1, 0x8

    .line 205
    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->C(I)V

    .line 206
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 207
    invoke-virtual {v0}, Le/m/a/c/q1/t;->t()I

    move-result v2

    .line 208
    new-array v3, v2, [J

    .line 209
    new-array v4, v2, [J

    const/4 v5, 0x0

    :goto_49
    if-ge v5, v2, :cond_7d

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7a

    .line 210
    invoke-virtual {v0}, Le/m/a/c/q1/t;->u()J

    move-result-wide v7

    goto :goto_4a

    :cond_7a
    invoke-virtual {v0}, Le/m/a/c/q1/t;->r()J

    move-result-wide v7

    :goto_4a
    aput-wide v7, v3, v5

    if-ne v1, v6, :cond_7b

    .line 211
    invoke-virtual {v0}, Le/m/a/c/q1/t;->k()J

    move-result-wide v6

    goto :goto_4b

    :cond_7b
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v6

    int-to-long v6, v6

    :goto_4b
    aput-wide v6, v4, v5

    .line 212
    iget-object v6, v0, Le/m/a/c/q1/t;->a:[B

    iget v7, v0, Le/m/a/c/q1/t;->b:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Le/m/a/c/q1/t;->b:I

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Le/m/a/c/q1/t;->b:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7c

    const/4 v6, 0x2

    .line 213
    invoke-virtual {v0, v6}, Le/m/a/c/q1/t;->D(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 214
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_7d
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_4d

    :cond_7e
    :goto_4c
    const/4 v1, 0x0

    .line 216
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 217
    :goto_4d
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 218
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v21, v0

    move-object/from16 v20, v2

    goto :goto_4e

    :cond_7f
    const/4 v1, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v20

    :goto_4e
    if-nez v18, :cond_80

    goto :goto_4f

    .line 219
    :cond_80
    new-instance v1, Le/m/a/c/g1/c0/i;

    move-object/from16 v0, v36

    .line 220
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v7, v1

    move v8, v11

    move/from16 v9, v35

    move-object/from16 v0, v40

    move-wide v10, v2

    move-wide/from16 v12, p2

    move-wide/from16 v14, v16

    move-object/from16 v16, v18

    move/from16 v17, v34

    move-object/from16 v18, v0

    move/from16 v19, v31

    invoke-direct/range {v7 .. v21}, Le/m/a/c/g1/c0/i;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Le/m/a/c/g1/c0/j;I[J[J)V

    :goto_4f
    return-object v1
.end method
