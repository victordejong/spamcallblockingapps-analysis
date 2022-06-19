.class public final Ln3/y/b/a/q0/u/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/u/b$c;,
        Ln3/y/b/a/q0/u/b$b;,
        Ln3/y/b/a/q0/u/b$a;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Ln3/y/b/a/x0/x;->q(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ln3/y/b/a/q0/u/b;->a:[B

    return-void
.end method

.method public static a(Ln3/y/b/a/x0/m;I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/x0/m;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/x0/m;->z(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/b/a/x0/m;->A(I)V

    .line 3
    invoke-static {p0}, Ln3/y/b/a/q0/u/b;->b(Ln3/y/b/a/x0/m;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Ln3/y/b/a/x0/m;->A(I)V

    .line 5
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Ln3/y/b/a/x0/m;->A(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    invoke-virtual {p0, v2}, Ln3/y/b/a/x0/m;->A(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Ln3/y/b/a/x0/m;->A(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Ln3/y/b/a/x0/m;->A(I)V

    .line 10
    invoke-static {p0}, Ln3/y/b/a/q0/u/b;->b(Ln3/y/b/a/x0/m;)I

    .line 11
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    .line 12
    invoke-static {v0}, Ln3/y/b/a/x0/j;->c(I)Ljava/lang/String;

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
    invoke-virtual {p0, v1}, Ln3/y/b/a/x0/m;->A(I)V

    .line 17
    invoke-virtual {p0, p1}, Ln3/y/b/a/x0/m;->A(I)V

    .line 18
    invoke-static {p0}, Ln3/y/b/a/q0/u/b;->b(Ln3/y/b/a/x0/m;)I

    move-result p1

    .line 19
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Ln3/y/b/a/x0/m;->a:[B

    iget v4, p0, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v3, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget v2, p0, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v2, p1

    iput v2, p0, Ln3/y/b/a/x0/m;->b:I

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

.method public static b(Ln3/y/b/a/x0/m;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c(Ln3/y/b/a/x0/m;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/x0/m;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ln3/y/b/a/q0/u/j;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ln3/y/b/a/x0/m;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    .line 2
    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

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
    invoke-static {v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

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
    invoke-virtual {v0, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    .line 8
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 9
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 10
    invoke-virtual {v0, v13}, Ln3/y/b/a/x0/m;->A(I)V

    .line 11
    invoke-virtual {v0, v13}, Ln3/y/b/a/x0/m;->m(I)Ljava/lang/String;

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
    invoke-static {v3, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 16
    invoke-virtual {v0, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    .line 18
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 19
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 20
    invoke-virtual {v0, v6}, Ln3/y/b/a/x0/m;->A(I)V

    if-nez v3, :cond_9

    .line 21
    invoke-virtual {v0, v6}, Ln3/y/b/a/x0/m;->A(I)V

    move v3, v5

    move v14, v3

    goto :goto_8

    .line 22
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 23
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v7

    if-ne v7, v6, :cond_a

    move v10, v6

    goto :goto_9

    :cond_a
    move v10, v5

    .line 24
    :goto_9
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 25
    iget-object v8, v0, Ln3/y/b/a/x0/m;->a:[B

    iget v9, v0, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v8, v9, v13, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iget v8, v0, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v8, v7

    iput v8, v0, Ln3/y/b/a/x0/m;->b:I

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/x0/m;->o()I

    move-result v7

    .line 28
    new-array v8, v7, [B

    .line 29
    iget-object v9, v0, Ln3/y/b/a/x0/m;->a:[B

    iget v6, v0, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v9, v6, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget v6, v0, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v6, v7

    iput v6, v0, Ln3/y/b/a/x0/m;->b:I

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    .line 31
    :goto_a
    new-instance v6, Ln3/y/b/a/q0/u/j;

    move-object v9, v6

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Ln3/y/b/a/q0/u/j;-><init>(ZLjava/lang/String;I[BII[B)V

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
    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

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

.method public static d(Ln3/y/b/a/q0/u/a$a;Ln3/y/b/a/q0/u/a$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Ln3/y/b/a/q0/u/i;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const v2, 0x6d646961

    .line 1
    invoke-virtual {v0, v2}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v2

    const v3, 0x68646c72    # 4.3148E24f

    .line 2
    invoke-virtual {v2, v3}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v3

    iget-object v3, v3, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v4, 0x10

    .line 3
    invoke-virtual {v3, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 4
    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, -0x1

    const v10, 0x736f756e

    if-ne v3, v10, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const v10, 0x76696465

    if-ne v3, v10, :cond_1

    const/4 v13, 0x2

    goto :goto_1

    :cond_1
    const v10, 0x74657874

    if-eq v3, v10, :cond_4

    const v10, 0x7362746c

    if-eq v3, v10, :cond_4

    const v10, 0x73756274

    if-eq v3, v10, :cond_4

    const v10, 0x636c6370

    if-ne v3, v10, :cond_2

    goto :goto_0

    :cond_2
    const v10, 0x6d657461

    if-ne v3, v10, :cond_3

    move v13, v5

    goto :goto_1

    :cond_3
    move v13, v7

    goto :goto_1

    :cond_4
    :goto_0
    move v13, v6

    :goto_1
    const/4 v3, 0x0

    if-ne v13, v7, :cond_5

    return-object v3

    :cond_5
    const v10, 0x746b6864

    .line 5
    invoke-virtual {v0, v10}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v10

    iget-object v10, v10, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v11, 0x8

    .line 6
    invoke-virtual {v10, v11}, Ln3/y/b/a/x0/m;->z(I)V

    .line 7
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_6

    move v14, v11

    goto :goto_2

    :cond_6
    move v14, v4

    .line 8
    :goto_2
    invoke-virtual {v10, v14}, Ln3/y/b/a/x0/m;->A(I)V

    .line 9
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->d()I

    move-result v14

    .line 10
    invoke-virtual {v10, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 11
    iget v15, v10, Ln3/y/b/a/x0/m;->b:I

    if-nez v12, :cond_7

    move v8, v5

    goto :goto_3

    :cond_7
    move v8, v11

    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    .line 12
    iget-object v3, v10, Ln3/y/b/a/x0/m;->a:[B

    add-int v20, v15, v9

    aget-byte v3, v3, v20

    if-eq v3, v7, :cond_8

    const/4 v3, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x1

    :goto_5
    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_a

    .line 13
    invoke-virtual {v10, v8}, Ln3/y/b/a/x0/m;->A(I)V

    goto :goto_7

    :cond_a
    if-nez v12, :cond_b

    .line 14
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v8

    goto :goto_6

    :cond_b
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v8

    :goto_6
    cmp-long v3, v8, v20

    if-nez v3, :cond_c

    :goto_7
    move-wide/from16 v8, v22

    .line 15
    :cond_c
    invoke-virtual {v10, v4}, Ln3/y/b/a/x0/m;->A(I)V

    .line 16
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    .line 17
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    .line 18
    invoke-virtual {v10, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 19
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->d()I

    move-result v15

    .line 20
    invoke-virtual {v10}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    const/high16 v5, 0x10000

    const/high16 v4, -0x10000

    if-nez v3, :cond_d

    if-ne v12, v5, :cond_d

    if-ne v15, v4, :cond_d

    if-nez v10, :cond_d

    const/16 v3, 0x5a

    goto :goto_8

    :cond_d
    if-nez v3, :cond_e

    if-ne v12, v4, :cond_e

    if-ne v15, v5, :cond_e

    if-nez v10, :cond_e

    const/16 v3, 0x10e

    goto :goto_8

    :cond_e
    if-ne v3, v4, :cond_f

    if-nez v12, :cond_f

    if-nez v15, :cond_f

    if-ne v10, v4, :cond_f

    const/16 v3, 0xb4

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    cmp-long v4, p2, v22

    if-nez v4, :cond_10

    move-object/from16 v4, p1

    move-wide/from16 v26, v8

    goto :goto_9

    :cond_10
    move-object/from16 v4, p1

    move-wide/from16 v26, p2

    .line 21
    :goto_9
    iget-object v4, v4, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 22
    invoke-virtual {v4, v11}, Ln3/y/b/a/x0/m;->z(I)V

    .line 23
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_11

    move v5, v11

    goto :goto_a

    :cond_11
    const/16 v5, 0x10

    .line 24
    :goto_a
    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 25
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v4

    cmp-long v8, v26, v22

    if-nez v8, :cond_12

    goto :goto_b

    :cond_12
    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v4

    .line 26
    invoke-static/range {v26 .. v31}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v8

    move-wide/from16 v22, v8

    :goto_b
    const v8, 0x6d696e66

    .line 27
    invoke-virtual {v2, v8}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v8

    const v9, 0x7374626c

    .line 28
    invoke-virtual {v8, v9}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v8

    const v9, 0x6d646864

    .line 29
    invoke-virtual {v2, v9}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v2

    iget-object v2, v2, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 30
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/m;->z(I)V

    .line 31
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v9

    shr-int/lit8 v9, v9, 0x18

    and-int/lit16 v9, v9, 0xff

    if-nez v9, :cond_13

    move v10, v11

    goto :goto_c

    :cond_13
    const/16 v10, 0x10

    .line 32
    :goto_c
    invoke-virtual {v2, v10}, Ln3/y/b/a/x0/m;->A(I)V

    .line 33
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v26

    if-nez v9, :cond_14

    const/4 v9, 0x4

    goto :goto_d

    :cond_14
    move v9, v11

    .line 34
    :goto_d
    invoke-virtual {v2, v9}, Ln3/y/b/a/x0/m;->A(I)V

    .line 35
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    shr-int/lit8 v9, v2, 0xa

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    shr-int/lit8 v10, v2, 0x5

    and-int/lit8 v10, v10, 0x1f

    add-int/lit8 v10, v10, 0x60

    int-to-char v10, v10

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    .line 36
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v9, 0x73747364

    .line 38
    invoke-virtual {v8, v9}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v8

    iget-object v8, v8, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 39
    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const/16 v10, 0xc

    .line 40
    invoke-virtual {v8, v10}, Ln3/y/b/a/x0/m;->z(I)V

    .line 41
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    .line 42
    new-array v15, v10, [Ln3/y/b/a/q0/u/j;

    move-object v6, v1

    const/4 v12, 0x0

    const/16 v26, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    :goto_e
    if-ge v12, v10, :cond_78

    .line 43
    iget v11, v8, Ln3/y/b/a/x0/m;->b:I

    .line 44
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    move-wide/from16 p2, v4

    move/from16 p1, v10

    if-lez v7, :cond_15

    const/4 v10, 0x1

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    :goto_f
    const-string v4, "childAtomSize should be positive"

    .line 45
    invoke-static {v10, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    .line 46
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    const v10, 0x61766331

    if-eq v5, v10, :cond_52

    const v10, 0x61766333

    if-eq v5, v10, :cond_52

    const v10, 0x656e6376

    if-eq v5, v10, :cond_52

    const v10, 0x6d703476

    if-eq v5, v10, :cond_52

    const v10, 0x68766331

    if-eq v5, v10, :cond_52

    const v10, 0x68657631

    if-eq v5, v10, :cond_52

    const v10, 0x73323633

    if-eq v5, v10, :cond_52

    const v10, 0x76703038

    if-eq v5, v10, :cond_52

    const v10, 0x76703039

    if-eq v5, v10, :cond_52

    const v10, 0x61763031

    if-eq v5, v10, :cond_52

    const v10, 0x64766176

    if-eq v5, v10, :cond_52

    const v10, 0x64766131

    if-eq v5, v10, :cond_52

    const v10, 0x64766865

    if-eq v5, v10, :cond_52

    const v10, 0x64766831

    if-ne v5, v10, :cond_16

    goto/16 :goto_30

    :cond_16
    const v10, 0x6d703461

    move/from16 v43, v13

    const v13, 0x656e6361

    move-object/from16 v44, v2

    const v2, 0x616c6163

    if-eq v5, v10, :cond_20

    if-eq v5, v13, :cond_20

    const v10, 0x61632d33

    if-eq v5, v10, :cond_20

    const v10, 0x65632d33

    if-eq v5, v10, :cond_20

    const v10, 0x61632d34

    if-eq v5, v10, :cond_20

    const v10, 0x64747363

    if-eq v5, v10, :cond_20

    const v10, 0x64747365

    if-eq v5, v10, :cond_20

    const v10, 0x64747368

    if-eq v5, v10, :cond_20

    const v10, 0x6474736c

    if-eq v5, v10, :cond_20

    const v10, 0x73616d72

    if-eq v5, v10, :cond_20

    const v10, 0x73617762

    if-eq v5, v10, :cond_20

    const v10, 0x6c70636d

    if-eq v5, v10, :cond_20

    const v10, 0x736f7774

    if-eq v5, v10, :cond_20

    const v10, 0x2e6d7033

    if-eq v5, v10, :cond_20

    if-eq v5, v2, :cond_20

    const v10, 0x616c6177

    if-eq v5, v10, :cond_20

    const v10, 0x756c6177

    if-eq v5, v10, :cond_20

    const v10, 0x4f707573

    if-eq v5, v10, :cond_20

    const v10, 0x664c6143

    if-ne v5, v10, :cond_17

    goto/16 :goto_15

    :cond_17
    const v2, 0x54544d4c

    if-eq v5, v2, :cond_19

    const v2, 0x74783367

    if-eq v5, v2, :cond_19

    const v2, 0x77767474

    if-eq v5, v2, :cond_19

    const v2, 0x73747070

    if-eq v5, v2, :cond_19

    const v2, 0x63363038

    if-ne v5, v2, :cond_18

    goto :goto_10

    :cond_18
    const v2, 0x63616d6d

    if-ne v5, v2, :cond_1e

    .line 47
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "application/x-camera-motion"

    const/4 v5, -0x1

    const/4 v10, 0x0

    invoke-static {v2, v4, v10, v5, v10}, Landroidx/media2/exoplayer/external/Format;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v26

    goto/16 :goto_14

    :cond_19
    :goto_10
    add-int/lit8 v2, v11, 0x8

    const/16 v4, 0x8

    add-int/2addr v2, v4

    .line 48
    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->z(I)V

    const v2, 0x54544d4c

    const-string v4, "application/ttml+xml"

    if-ne v5, v2, :cond_1a

    goto :goto_11

    :cond_1a
    const v2, 0x74783367

    if-ne v5, v2, :cond_1b

    add-int/lit8 v2, v7, -0x8

    add-int/lit8 v2, v2, -0x8

    .line 49
    new-array v4, v2, [B

    .line 50
    iget-object v5, v8, Ln3/y/b/a/x0/m;->a:[B

    iget v10, v8, Ln3/y/b/a/x0/m;->b:I

    const/4 v13, 0x0

    invoke-static {v5, v10, v4, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v5, v8, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v5, v2

    iput v5, v8, Ln3/y/b/a/x0/m;->b:I

    .line 52
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-wide v4, 0x7fffffffffffffffL

    const-string v10, "application/x-quicktime-tx3g"

    move-object/from16 v36, v2

    move-wide/from16 v34, v4

    move-object/from16 v27, v10

    goto :goto_13

    :cond_1b
    const v2, 0x77767474

    if-ne v5, v2, :cond_1c

    const-string v2, "application/x-mp4-vtt"

    move-object v4, v2

    goto :goto_11

    :cond_1c
    const v2, 0x73747070

    if-ne v5, v2, :cond_1d

    move-wide/from16 v26, v20

    goto :goto_12

    :cond_1d
    const v2, 0x63363038

    if-ne v5, v2, :cond_1f

    const-string v2, "application/x-mp4-cea-608"

    move-object v4, v2

    const/16 v41, 0x1

    :goto_11
    const-wide v26, 0x7fffffffffffffffL

    :goto_12
    move-wide/from16 v34, v26

    const/16 v36, 0x0

    move-object/from16 v27, v4

    .line 53
    :goto_13
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x0

    move-object/from16 v31, v9

    .line 54
    invoke-static/range {v26 .. v36}, Landroidx/media2/exoplayer/external/Format;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v26

    :cond_1e
    :goto_14
    move/from16 v45, v3

    move v2, v7

    move/from16 v48, v12

    move-object/from16 v49, v15

    const/16 v42, 0x3

    goto/16 :goto_47

    .line 55
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 56
    :cond_20
    :goto_15
    sget-object v10, Ln3/y/b/a/n0/a;->d:[I

    sget-object v40, Ln3/y/b/a/n0/a;->b:[I

    add-int/lit8 v27, v11, 0x8

    const/16 v2, 0x8

    add-int/lit8 v13, v27, 0x8

    invoke-virtual {v8, v13}, Ln3/y/b/a/x0/m;->z(I)V

    const/4 v13, 0x6

    if-eqz p6, :cond_21

    .line 57
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->t()I

    move-result v27

    .line 58
    invoke-virtual {v8, v13}, Ln3/y/b/a/x0/m;->A(I)V

    move/from16 v2, v27

    goto :goto_16

    .line 59
    :cond_21
    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->A(I)V

    const/4 v2, 0x0

    :goto_16
    if-eqz v2, :cond_24

    const/4 v13, 0x1

    if-ne v2, v13, :cond_22

    goto :goto_17

    :cond_22
    const/4 v13, 0x2

    if-ne v2, v13, :cond_23

    const/16 v2, 0x10

    .line 60
    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->A(I)V

    .line 61
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v29

    move v13, v3

    .line 62
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 63
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v3

    move/from16 v27, v2

    const/16 v2, 0x14

    .line 64
    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->A(I)V

    move/from16 v45, v13

    move/from16 v2, v27

    goto :goto_18

    :cond_23
    move/from16 v45, v3

    move/from16 v50, v7

    move/from16 v48, v12

    move-object/from16 v49, v15

    const/4 v7, -0x1

    goto/16 :goto_2f

    :cond_24
    :goto_17
    move v13, v3

    .line 65
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->t()I

    move-result v3

    move/from16 v27, v3

    const/4 v3, 0x6

    .line 66
    invoke-virtual {v8, v3}, Ln3/y/b/a/x0/m;->A(I)V

    .line 67
    iget-object v3, v8, Ln3/y/b/a/x0/m;->a:[B

    iget v0, v8, Ln3/y/b/a/x0/m;->b:I

    move/from16 v45, v13

    add-int/lit8 v13, v0, 0x1

    iput v13, v8, Ln3/y/b/a/x0/m;->b:I

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v29, 0x8

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v13, 0x1

    iput v1, v8, Ln3/y/b/a/x0/m;->b:I

    aget-byte v3, v3, v13

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    const/4 v3, 0x2

    add-int/2addr v1, v3

    .line 68
    iput v1, v8, Ln3/y/b/a/x0/m;->b:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_25

    const/16 v1, 0x10

    .line 69
    invoke-virtual {v8, v1}, Ln3/y/b/a/x0/m;->A(I)V

    :cond_25
    move v2, v0

    move/from16 v3, v27

    .line 70
    :goto_18
    iget v0, v8, Ln3/y/b/a/x0/m;->b:I

    const v1, 0x656e6361

    if-ne v5, v1, :cond_28

    .line 71
    invoke-static {v8, v11, v7}, Ln3/y/b/a/q0/u/b;->c(Ln3/y/b/a/x0/m;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 72
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v6, :cond_26

    const/4 v6, 0x0

    goto :goto_19

    .line 73
    :cond_26
    iget-object v13, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ln3/y/b/a/q0/u/j;

    iget-object v13, v13, Ln3/y/b/a/q0/u/j;->b:Ljava/lang/String;

    invoke-virtual {v6, v13}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v6

    .line 74
    :goto_19
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ln3/y/b/a/q0/u/j;

    aput-object v1, v15, v12

    .line 75
    :cond_27
    invoke-virtual {v8, v0}, Ln3/y/b/a/x0/m;->z(I)V

    :cond_28
    const-string v1, "audio/raw"

    const-string v13, "audio/eac3"

    move/from16 v27, v0

    const v0, 0x61632d33

    if-ne v5, v0, :cond_29

    const-string v0, "audio/ac3"

    goto/16 :goto_1c

    :cond_29
    const v0, 0x65632d33

    if-ne v5, v0, :cond_2a

    move-object v0, v13

    goto/16 :goto_1c

    :cond_2a
    const v0, 0x61632d34

    if-ne v5, v0, :cond_2b

    const-string v0, "audio/ac4"

    goto/16 :goto_1c

    :cond_2b
    const v0, 0x64747363

    if-ne v5, v0, :cond_2c

    const-string v0, "audio/vnd.dts"

    goto/16 :goto_1c

    :cond_2c
    const v0, 0x64747368

    if-eq v5, v0, :cond_39

    const v0, 0x6474736c

    if-ne v5, v0, :cond_2d

    goto :goto_1b

    :cond_2d
    const v0, 0x64747365

    if-ne v5, v0, :cond_2e

    const-string v0, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_1c

    :cond_2e
    const v0, 0x73616d72

    if-ne v5, v0, :cond_2f

    const-string v0, "audio/3gpp"

    goto :goto_1c

    :cond_2f
    const v0, 0x73617762

    if-ne v5, v0, :cond_30

    const-string v0, "audio/amr-wb"

    goto :goto_1c

    :cond_30
    const v0, 0x6c70636d

    if-eq v5, v0, :cond_38

    const v0, 0x736f7774

    if-ne v5, v0, :cond_31

    goto :goto_1a

    :cond_31
    const v0, 0x2e6d7033

    if-ne v5, v0, :cond_32

    const-string v0, "audio/mpeg"

    goto :goto_1c

    :cond_32
    const v0, 0x616c6163

    if-ne v5, v0, :cond_33

    const-string v0, "audio/alac"

    goto :goto_1c

    :cond_33
    const v0, 0x616c6177

    if-ne v5, v0, :cond_34

    const-string v0, "audio/g711-alaw"

    goto :goto_1c

    :cond_34
    const v0, 0x756c6177

    if-ne v5, v0, :cond_35

    const-string v0, "audio/g711-mlaw"

    goto :goto_1c

    :cond_35
    const v0, 0x4f707573

    if-ne v5, v0, :cond_36

    const-string v0, "audio/opus"

    goto :goto_1c

    :cond_36
    const v0, 0x664c6143

    if-ne v5, v0, :cond_37

    const-string v0, "audio/flac"

    goto :goto_1c

    :cond_37
    const/4 v0, 0x0

    goto :goto_1c

    :cond_38
    :goto_1a
    move-object v0, v1

    goto :goto_1c

    :cond_39
    :goto_1b
    const-string v0, "audio/vnd.dts.hd"

    :goto_1c
    move/from16 v46, v2

    move v5, v3

    move-object/from16 v47, v13

    const/4 v2, 0x0

    move-object v3, v0

    move/from16 v0, v27

    :goto_1d
    sub-int v13, v0, v11

    if-ge v13, v7, :cond_4e

    .line 76
    invoke-virtual {v8, v0}, Ln3/y/b/a/x0/m;->z(I)V

    .line 77
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v13

    move/from16 v48, v12

    if-lez v13, :cond_3a

    const/4 v12, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v12, 0x0

    .line 78
    :goto_1e
    invoke-static {v12, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    .line 79
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    move-object/from16 v49, v15

    const v15, 0x65736473

    if-eq v12, v15, :cond_48

    if-eqz p6, :cond_3b

    const v15, 0x77617665

    if-ne v12, v15, :cond_3b

    move/from16 v50, v7

    move-object/from16 v27, v10

    const/4 v7, 0x0

    const v10, 0x65736473

    goto/16 :goto_27

    :cond_3b
    const v15, 0x64616333

    if-ne v12, v15, :cond_3d

    add-int/lit8 v12, v0, 0x8

    .line 80
    invoke-virtual {v8, v12}, Ln3/y/b/a/x0/m;->z(I)V

    .line 81
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 82
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    and-int/lit16 v12, v12, 0xc0

    const/4 v15, 0x6

    shr-int/2addr v12, v15

    .line 83
    aget v32, v40, v12

    .line 84
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    and-int/lit8 v15, v12, 0x38

    const/16 v27, 0x3

    shr-int/lit8 v15, v15, 0x3

    .line 85
    aget v15, v10, v15

    const/16 v24, 0x4

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_3c

    add-int/lit8 v15, v15, 0x1

    :cond_3c
    move/from16 v31, v15

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v33, 0x0

    const/16 v35, 0x0

    const-string v27, "audio/ac3"

    move-object/from16 v34, v6

    move-object/from16 v36, v9

    .line 86
    invoke-static/range {v26 .. v36}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v26

    :goto_1f
    move/from16 v50, v7

    move-object/from16 v27, v10

    :goto_20
    const v7, 0x616c6163

    goto/16 :goto_24

    :cond_3d
    const v15, 0x64656333

    if-ne v12, v15, :cond_41

    add-int/lit8 v12, v0, 0x8

    .line 87
    invoke-virtual {v8, v12}, Ln3/y/b/a/x0/m;->z(I)V

    .line 88
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v12, 0x2

    .line 89
    invoke-virtual {v8, v12}, Ln3/y/b/a/x0/m;->A(I)V

    .line 90
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    and-int/lit16 v12, v12, 0xc0

    const/4 v15, 0x6

    shr-int/2addr v12, v15

    .line 91
    aget v32, v40, v12

    .line 92
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    and-int/lit8 v27, v12, 0xe

    const/16 v17, 0x1

    shr-int/lit8 v27, v27, 0x1

    .line 93
    aget v27, v10, v27

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3e

    add-int/lit8 v27, v27, 0x1

    .line 94
    :cond_3e
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    and-int/lit8 v12, v12, 0x1e

    shr-int/lit8 v12, v12, 0x1

    if-lez v12, :cond_3f

    .line 95
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    const/16 v16, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3f

    add-int/lit8 v27, v27, 0x2

    :cond_3f
    move/from16 v31, v27

    .line 96
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->a()I

    move-result v12

    if-lez v12, :cond_40

    .line 97
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v12

    const/16 v17, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_40

    const-string v12, "audio/eac3-joc"

    move-object/from16 v27, v12

    goto :goto_21

    :cond_40
    move-object/from16 v27, v47

    :goto_21
    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v33, 0x0

    const/16 v35, 0x0

    move-object/from16 v34, v6

    move-object/from16 v36, v9

    .line 98
    invoke-static/range {v26 .. v36}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    goto :goto_23

    :cond_41
    const v15, 0x64616334

    if-ne v12, v15, :cond_43

    add-int/lit8 v12, v0, 0x8

    .line 99
    invoke-virtual {v8, v12}, Ln3/y/b/a/x0/m;->z(I)V

    .line 100
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/4 v12, 0x1

    .line 101
    invoke-virtual {v8, v12}, Ln3/y/b/a/x0/m;->A(I)V

    .line 102
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v15

    and-int/lit8 v15, v15, 0x20

    const/16 v17, 0x5

    shr-int/lit8 v15, v15, 0x5

    if-ne v15, v12, :cond_42

    const v12, 0xbb80

    goto :goto_22

    :cond_42
    const v12, 0xac44

    :goto_22
    move/from16 v32, v12

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x2

    const/16 v33, 0x0

    const/16 v35, 0x0

    const-string v27, "audio/ac4"

    move-object/from16 v34, v6

    move-object/from16 v36, v9

    .line 103
    invoke-static/range {v26 .. v36}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    goto :goto_23

    :cond_43
    const v15, 0x64647473

    if-ne v12, v15, :cond_44

    .line 104
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v33, 0x0

    const/16 v35, 0x0

    move-object/from16 v27, v3

    move/from16 v31, v5

    move/from16 v32, v46

    move-object/from16 v34, v6

    move-object/from16 v36, v9

    invoke-static/range {v26 .. v36}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v12

    :goto_23
    move-object/from16 v26, v12

    goto/16 :goto_1f

    :cond_44
    const v15, 0x644f7073

    if-ne v12, v15, :cond_45

    add-int/lit8 v2, v13, -0x8

    .line 105
    sget-object v12, Ln3/y/b/a/q0/u/b;->a:[B

    array-length v15, v12

    add-int/2addr v15, v2

    new-array v15, v15, [B

    move-object/from16 v27, v10

    .line 106
    array-length v10, v12

    move/from16 v50, v7

    const/4 v7, 0x0

    invoke-static {v12, v7, v15, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v0, 0x8

    .line 107
    invoke-virtual {v8, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 108
    array-length v7, v12

    .line 109
    iget-object v10, v8, Ln3/y/b/a/x0/m;->a:[B

    iget v12, v8, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v10, v12, v15, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iget v7, v8, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v7, v2

    iput v7, v8, Ln3/y/b/a/x0/m;->b:I

    move-object v2, v15

    goto/16 :goto_20

    :cond_45
    move/from16 v50, v7

    move-object/from16 v27, v10

    const v7, 0x64664c61

    if-eq v13, v7, :cond_47

    const v7, 0x616c6163

    if-ne v12, v7, :cond_46

    goto :goto_25

    :cond_46
    :goto_24
    const/4 v7, 0x0

    goto :goto_26

    :cond_47
    const v7, 0x616c6163

    :goto_25
    add-int/lit8 v2, v13, -0xc

    .line 111
    new-array v10, v2, [B

    add-int/lit8 v12, v0, 0xc

    .line 112
    invoke-virtual {v8, v12}, Ln3/y/b/a/x0/m;->z(I)V

    .line 113
    iget-object v12, v8, Ln3/y/b/a/x0/m;->a:[B

    iget v15, v8, Ln3/y/b/a/x0/m;->b:I

    const/4 v7, 0x0

    invoke-static {v12, v15, v10, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v12, v8, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v12, v2

    iput v12, v8, Ln3/y/b/a/x0/m;->b:I

    move-object v2, v10

    :goto_26
    const/4 v7, -0x1

    goto :goto_2c

    :cond_48
    move/from16 v50, v7

    move-object/from16 v27, v10

    const/4 v7, 0x0

    move v10, v15

    :goto_27
    if-ne v12, v10, :cond_49

    move v10, v0

    goto :goto_2a

    .line 115
    :cond_49
    iget v10, v8, Ln3/y/b/a/x0/m;->b:I

    :goto_28
    sub-int v12, v10, v0

    if-ge v12, v13, :cond_4c

    .line 116
    invoke-virtual {v8, v10}, Ln3/y/b/a/x0/m;->z(I)V

    .line 117
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    if-lez v12, :cond_4a

    const/4 v15, 0x1

    goto :goto_29

    :cond_4a
    move v15, v7

    .line 118
    :goto_29
    invoke-static {v15, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    .line 119
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v15

    const v7, 0x65736473

    if-ne v15, v7, :cond_4b

    :goto_2a
    const/4 v7, -0x1

    goto :goto_2b

    :cond_4b
    add-int/2addr v10, v12

    const/4 v7, 0x0

    goto :goto_28

    :cond_4c
    const/4 v7, -0x1

    const/4 v10, -0x1

    :goto_2b
    if-eq v10, v7, :cond_4d

    .line 120
    invoke-static {v8, v10}, Ln3/y/b/a/q0/u/b;->a(Ln3/y/b/a/x0/m;I)Landroid/util/Pair;

    move-result-object v2

    .line 121
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 122
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    const-string v10, "audio/mp4a-latm"

    .line 123
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 124
    invoke-static {v2}, Ln3/y/b/a/x0/b;->c([B)Landroid/util/Pair;

    move-result-object v5

    .line 125
    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v46

    .line 126
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_4d
    :goto_2c
    add-int/2addr v0, v13

    move-object/from16 v10, v27

    move/from16 v12, v48

    move-object/from16 v15, v49

    move/from16 v7, v50

    goto/16 :goto_1d

    :cond_4e
    move/from16 v50, v7

    move/from16 v48, v12

    move-object/from16 v49, v15

    const/4 v7, -0x1

    if-nez v26, :cond_51

    if-eqz v3, :cond_51

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/16 v33, 0x2

    goto :goto_2d

    :cond_4f
    move/from16 v33, v7

    .line 128
    :goto_2d
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    if-nez v2, :cond_50

    const/16 v34, 0x0

    goto :goto_2e

    .line 129
    :cond_50
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v34, v0

    :goto_2e
    const/16 v36, 0x0

    move-object/from16 v27, v3

    move/from16 v31, v5

    move/from16 v32, v46

    move-object/from16 v35, v6

    move-object/from16 v37, v9

    .line 130
    invoke-static/range {v26 .. v37}, Landroidx/media2/exoplayer/external/Format;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v26

    :cond_51
    :goto_2f
    move/from16 v2, v50

    const/16 v42, 0x3

    goto/16 :goto_46

    :cond_52
    :goto_30
    move-object/from16 v44, v2

    move/from16 v45, v3

    move/from16 v50, v7

    move/from16 v48, v12

    move/from16 v43, v13

    move-object/from16 v49, v15

    const/4 v7, -0x1

    add-int/lit8 v0, v11, 0x8

    const/16 v1, 0x8

    add-int/2addr v0, v1

    .line 131
    invoke-virtual {v8, v0}, Ln3/y/b/a/x0/m;->z(I)V

    const/16 v0, 0x10

    .line 132
    invoke-virtual {v8, v0}, Ln3/y/b/a/x0/m;->A(I)V

    .line 133
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->t()I

    move-result v31

    .line 134
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->t()I

    move-result v32

    const/16 v1, 0x32

    .line 135
    invoke-virtual {v8, v1}, Ln3/y/b/a/x0/m;->A(I)V

    .line 136
    iget v1, v8, Ln3/y/b/a/x0/m;->b:I

    const v2, 0x656e6376

    if-ne v5, v2, :cond_55

    move/from16 v2, v50

    .line 137
    invoke-static {v8, v11, v2}, Ln3/y/b/a/q0/u/b;->c(Ln3/y/b/a/x0/m;II)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 138
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v6, p4

    if-nez v6, :cond_53

    const/4 v10, 0x0

    goto :goto_31

    .line 139
    :cond_53
    iget-object v10, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ln3/y/b/a/q0/u/j;

    iget-object v10, v10, Ln3/y/b/a/q0/u/j;->b:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->a(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v10

    .line 140
    :goto_31
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ln3/y/b/a/q0/u/j;

    aput-object v3, v49, v48

    goto :goto_32

    :cond_54
    move-object/from16 v6, p4

    move-object v10, v6

    .line 141
    :goto_32
    invoke-virtual {v8, v1}, Ln3/y/b/a/x0/m;->z(I)V

    move-object/from16 v40, v10

    goto :goto_33

    :cond_55
    move-object/from16 v6, p4

    move/from16 v2, v50

    move-object/from16 v40, v6

    :goto_33
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v36, v3

    move/from16 v12, v38

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v27, 0x0

    const/16 v34, 0x0

    move/from16 v38, v7

    :goto_34
    sub-int v15, v1, v11

    if-ge v15, v2, :cond_76

    .line 142
    invoke-virtual {v8, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 143
    iget v15, v8, Ln3/y/b/a/x0/m;->b:I

    .line 144
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v0

    if-nez v0, :cond_56

    .line 145
    iget v7, v8, Ln3/y/b/a/x0/m;->b:I

    sub-int/2addr v7, v11

    if-ne v7, v2, :cond_56

    goto/16 :goto_44

    :cond_56
    if-lez v0, :cond_57

    const/4 v7, 0x1

    goto :goto_35

    :cond_57
    const/4 v7, 0x0

    .line 146
    :goto_35
    invoke-static {v7, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->q(ZLjava/lang/Object;)V

    .line 147
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    move-object/from16 v29, v4

    const v4, 0x61766343

    if-ne v7, v4, :cond_5a

    if-nez v27, :cond_58

    const/4 v4, 0x1

    goto :goto_36

    :cond_58
    const/4 v4, 0x0

    .line 148
    :goto_36
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    add-int/lit8 v15, v15, 0x8

    .line 149
    invoke-virtual {v8, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 150
    invoke-static {v8}, Ln3/y/b/a/y0/a;->b(Ln3/y/b/a/x0/m;)Ln3/y/b/a/y0/a;

    move-result-object v4

    .line 151
    iget-object v7, v4, Ln3/y/b/a/y0/a;->a:Ljava/util/List;

    .line 152
    iget v12, v4, Ln3/y/b/a/y0/a;->b:I

    if-nez v13, :cond_59

    .line 153
    iget v4, v4, Ln3/y/b/a/y0/a;->e:F

    move/from16 v36, v4

    :cond_59
    const-string v27, "video/avc"

    move/from16 v30, v5

    move-object/from16 v34, v7

    goto/16 :goto_3e

    :cond_5a
    const v4, 0x68766343

    if-ne v7, v4, :cond_5c

    if-nez v27, :cond_5b

    const/4 v4, 0x1

    goto :goto_37

    :cond_5b
    const/4 v4, 0x0

    .line 154
    :goto_37
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    add-int/lit8 v15, v15, 0x8

    .line 155
    invoke-virtual {v8, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 156
    invoke-static {v8}, Ln3/y/b/a/y0/c;->a(Ln3/y/b/a/x0/m;)Ln3/y/b/a/y0/c;

    move-result-object v4

    .line 157
    iget-object v7, v4, Ln3/y/b/a/y0/c;->a:Ljava/util/List;

    .line 158
    iget v12, v4, Ln3/y/b/a/y0/c;->b:I

    const-string v4, "video/hevc"

    move-object/from16 v27, v4

    move-object/from16 v34, v7

    const v4, 0x65736473

    goto/16 :goto_3c

    :cond_5c
    const v4, 0x64766343

    if-eq v7, v4, :cond_70

    const v4, 0x64767643

    if-ne v7, v4, :cond_5d

    goto/16 :goto_3f

    :cond_5d
    const v4, 0x76706343

    if-ne v7, v4, :cond_60

    if-nez v27, :cond_5e

    const/4 v4, 0x1

    goto :goto_38

    :cond_5e
    const/4 v4, 0x0

    .line 159
    :goto_38
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const v4, 0x76703038

    if-ne v5, v4, :cond_5f

    const-string v27, "video/x-vnd.on2.vp8"

    goto :goto_3c

    :cond_5f
    const-string v27, "video/x-vnd.on2.vp9"

    goto :goto_3c

    :cond_60
    const v4, 0x61763143

    if-ne v7, v4, :cond_62

    if-nez v27, :cond_61

    const/4 v4, 0x1

    goto :goto_39

    :cond_61
    const/4 v4, 0x0

    .line 160
    :goto_39
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const-string v27, "video/av01"

    goto :goto_3c

    :cond_62
    const v4, 0x64323633

    if-ne v7, v4, :cond_64

    if-nez v27, :cond_63

    const/4 v4, 0x1

    goto :goto_3a

    :cond_63
    const/4 v4, 0x0

    .line 161
    :goto_3a
    invoke-static {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    const-string v27, "video/3gpp"

    goto :goto_3c

    :cond_64
    const v4, 0x65736473

    if-ne v7, v4, :cond_66

    if-nez v27, :cond_65

    const/4 v7, 0x1

    goto :goto_3b

    :cond_65
    const/4 v7, 0x0

    .line 162
    :goto_3b
    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 163
    invoke-static {v8, v15}, Ln3/y/b/a/q0/u/b;->a(Ln3/y/b/a/x0/m;I)Landroid/util/Pair;

    move-result-object v7

    .line 164
    iget-object v15, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 165
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v34, v7

    move-object/from16 v27, v15

    :goto_3c
    move/from16 v30, v5

    goto/16 :goto_3e

    :cond_66
    const v4, 0x70617370

    if-ne v7, v4, :cond_67

    add-int/lit8 v15, v15, 0x8

    .line 166
    invoke-virtual {v8, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 167
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v4

    .line 168
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->r()I

    move-result v7

    int-to-float v4, v4

    int-to-float v7, v7

    div-float v36, v4, v7

    move/from16 v30, v5

    const/4 v13, 0x1

    goto :goto_3e

    :cond_67
    const v4, 0x73763364

    if-ne v7, v4, :cond_6a

    add-int/lit8 v4, v15, 0x8

    :goto_3d
    sub-int v7, v4, v15

    if-ge v7, v0, :cond_69

    .line 169
    invoke-virtual {v8, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 170
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    .line 171
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    move/from16 v30, v5

    const v5, 0x70726f6a

    if-ne v10, v5, :cond_68

    .line 172
    iget-object v5, v8, Ln3/y/b/a/x0/m;->a:[B

    add-int/2addr v7, v4

    invoke-static {v5, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    goto :goto_3e

    :cond_68
    add-int/2addr v4, v7

    move/from16 v5, v30

    goto :goto_3d

    :cond_69
    move/from16 v30, v5

    const/4 v10, 0x0

    goto :goto_3e

    :cond_6a
    move/from16 v30, v5

    const v4, 0x73743364

    if-ne v7, v4, :cond_6f

    .line 173
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v4

    const/4 v5, 0x3

    .line 174
    invoke-virtual {v8, v5}, Ln3/y/b/a/x0/m;->A(I)V

    if-nez v4, :cond_6f

    .line 175
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v4

    if-eqz v4, :cond_6e

    const/4 v7, 0x1

    if-eq v4, v7, :cond_6d

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6c

    if-eq v4, v5, :cond_6b

    goto :goto_3e

    :cond_6b
    const/16 v38, 0x3

    goto :goto_3e

    :cond_6c
    const/16 v38, 0x2

    goto :goto_3e

    :cond_6d
    move/from16 v42, v5

    const/16 v38, 0x1

    goto :goto_43

    :cond_6e
    move/from16 v42, v5

    const/16 v38, 0x0

    goto :goto_43

    :cond_6f
    :goto_3e
    const/16 v42, 0x3

    goto :goto_43

    :cond_70
    :goto_3f
    move/from16 v30, v5

    const/4 v4, 0x2

    .line 176
    invoke-virtual {v8, v4}, Ln3/y/b/a/x0/m;->A(I)V

    .line 177
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v4

    shr-int/lit8 v5, v4, 0x1

    const/4 v7, 0x1

    and-int/2addr v4, v7

    const/4 v7, 0x5

    shl-int/2addr v4, v7

    .line 178
    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v15

    const/16 v42, 0x3

    shr-int/lit8 v15, v15, 0x3

    and-int/lit8 v15, v15, 0x1f

    or-int/2addr v4, v15

    const/4 v15, 0x4

    if-eq v5, v15, :cond_74

    if-ne v5, v7, :cond_71

    goto :goto_40

    :cond_71
    const/16 v7, 0x8

    if-ne v5, v7, :cond_72

    const-string v7, "hev1"

    goto :goto_41

    :cond_72
    const/16 v7, 0x9

    if-ne v5, v7, :cond_73

    const-string v7, "avc3"

    goto :goto_41

    :cond_73
    const/4 v7, 0x0

    goto :goto_42

    :cond_74
    :goto_40
    const-string v7, "dvhe"

    .line 179
    :goto_41
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v15, v24, 0x1a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    new-instance v7, Ln3/y/b/a/y0/b;

    invoke-direct {v7, v5, v4, v6}, Ln3/y/b/a/y0/b;-><init>(IILjava/lang/String;)V

    :goto_42
    if-eqz v7, :cond_75

    .line 181
    iget-object v3, v7, Ln3/y/b/a/y0/b;->a:Ljava/lang/String;

    const-string v27, "video/dolby-vision"

    :cond_75
    :goto_43
    add-int/2addr v1, v0

    move-object/from16 v6, p4

    move-object/from16 v4, v29

    move/from16 v5, v30

    const/16 v0, 0x10

    const/4 v7, -0x1

    goto/16 :goto_34

    :cond_76
    :goto_44
    const/16 v42, 0x3

    if-nez v27, :cond_77

    goto :goto_45

    .line 182
    :cond_77
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/high16 v33, -0x40800000    # -1.0f

    const/16 v39, 0x0

    move-object/from16 v28, v3

    move/from16 v35, v45

    move-object/from16 v37, v10

    .line 183
    invoke-static/range {v26 .. v40}, Landroidx/media2/exoplayer/external/Format;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v26

    :goto_45
    move/from16 v38, v12

    :goto_46
    move-object/from16 v6, p4

    :goto_47
    add-int/2addr v11, v2

    .line 184
    invoke-virtual {v8, v11}, Ln3/y/b/a/x0/m;->z(I)V

    add-int/lit8 v12, v48, 0x1

    move-object/from16 v0, p0

    move/from16 v10, p1

    move-wide/from16 v4, p2

    move-object/from16 v1, p4

    move/from16 v13, v43

    move-object/from16 v2, v44

    move/from16 v3, v45

    move-object/from16 v15, v49

    const/4 v7, -0x1

    const/16 v11, 0x8

    goto/16 :goto_e

    :cond_78
    move-object/from16 v44, v2

    move-wide/from16 p2, v4

    move/from16 v43, v13

    move-object/from16 v49, v15

    if-nez p5, :cond_7f

    const v0, 0x65647473

    move-object/from16 v1, p0

    .line 185
    invoke-virtual {v1, v0}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v0

    if-eqz v0, :cond_7e

    const v1, 0x656c7374

    .line 186
    invoke-virtual {v0, v1}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v0

    if-nez v0, :cond_79

    goto :goto_4b

    .line 187
    :cond_79
    iget-object v0, v0, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v1, 0x8

    .line 188
    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/m;->z(I)V

    .line 189
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 190
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->r()I

    move-result v2

    .line 191
    new-array v3, v2, [J

    .line 192
    new-array v4, v2, [J

    const/4 v9, 0x0

    :goto_48
    if-ge v9, v2, :cond_7d

    const/4 v5, 0x1

    if-ne v1, v5, :cond_7a

    .line 193
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v6

    goto :goto_49

    :cond_7a
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v6

    :goto_49
    aput-wide v6, v3, v9

    if-ne v1, v5, :cond_7b

    .line 194
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->j()J

    move-result-wide v5

    goto :goto_4a

    :cond_7b
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    int-to-long v5, v5

    :goto_4a
    aput-wide v5, v4, v9

    .line 195
    iget-object v5, v0, Ln3/y/b/a/x0/m;->a:[B

    iget v6, v0, Ln3/y/b/a/x0/m;->b:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Ln3/y/b/a/x0/m;->b:I

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    add-int/lit8 v10, v7, 0x1

    iput v10, v0, Ln3/y/b/a/x0/m;->b:I

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7c

    const/4 v5, 0x2

    .line 196
    invoke-virtual {v0, v5}, Ln3/y/b/a/x0/m;->A(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_48

    .line 197
    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_7d
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_4c

    :cond_7e
    :goto_4b
    const/4 v0, 0x0

    .line 199
    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 200
    :goto_4c
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 201
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    move-object/from16 v25, v1

    move-object/from16 v24, v2

    goto :goto_4d

    :cond_7f
    const/4 v0, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v24

    :goto_4d
    if-nez v26, :cond_80

    move-object v3, v0

    goto :goto_4e

    .line 202
    :cond_80
    new-instance v3, Ln3/y/b/a/q0/u/i;

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object v11, v3

    move v12, v14

    move/from16 v13, v43

    move-object/from16 v2, v49

    move-wide v14, v0

    move-wide/from16 v16, p2

    move-wide/from16 v18, v22

    move-object/from16 v20, v26

    move/from16 v21, v41

    move-object/from16 v22, v2

    move/from16 v23, v38

    invoke-direct/range {v11 .. v25}, Ln3/y/b/a/q0/u/i;-><init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Ln3/y/b/a/q0/u/j;I[J[J)V

    :goto_4e
    return-object v3
.end method
