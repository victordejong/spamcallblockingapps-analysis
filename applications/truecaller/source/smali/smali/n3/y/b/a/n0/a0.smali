.class public final Ln3/y/b/a/n0/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:[S

.field public j:[S

.field public k:I

.field public l:[S

.field public m:I

.field public n:[S

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/b/a/n0/a0;->a:I

    .line 3
    iput p2, p0, Ln3/y/b/a/n0/a0;->b:I

    .line 4
    iput p3, p0, Ln3/y/b/a/n0/a0;->c:F

    .line 5
    iput p4, p0, Ln3/y/b/a/n0/a0;->d:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    .line 6
    iput p3, p0, Ln3/y/b/a/n0/a0;->e:F

    .line 7
    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Ln3/y/b/a/n0/a0;->f:I

    .line 8
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Ln3/y/b/a/n0/a0;->g:I

    mul-int/lit8 p1, p1, 0x2

    .line 9
    iput p1, p0, Ln3/y/b/a/n0/a0;->h:I

    .line 10
    new-array p3, p1, [S

    iput-object p3, p0, Ln3/y/b/a/n0/a0;->i:[S

    mul-int p3, p1, p2

    .line 11
    new-array p3, p3, [S

    iput-object p3, p0, Ln3/y/b/a/n0/a0;->j:[S

    mul-int p3, p1, p2

    .line 12
    new-array p3, p3, [S

    iput-object p3, p0, Ln3/y/b/a/n0/a0;->l:[S

    mul-int/2addr p1, p2

    .line 13
    new-array p1, p1, [S

    iput-object p1, p0, Ln3/y/b/a/n0/a0;->n:[S

    return-void
.end method

.method public static e(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 1
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int/2addr v7, v6

    aget-short v6, p6, v3

    mul-int/2addr v6, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a([SII)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/b/a/n0/a0;->l:[S

    iget v1, p0, Ln3/y/b/a/n0/a0;->m:I

    invoke-virtual {p0, v0, v1, p3}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/n0/a0;->l:[S

    .line 2
    iget v1, p0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr p2, v1

    iget v2, p0, Ln3/y/b/a/n0/a0;->m:I

    mul-int/2addr v2, v1

    mul-int/2addr v1, p3

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Ln3/y/b/a/n0/a0;->m:I

    add-int/2addr p1, p3

    iput p1, p0, Ln3/y/b/a/n0/a0;->m:I

    return-void
.end method

.method public final b([SII)V
    .locals 6

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/a0;->h:I

    div-int/2addr v0, p3

    .line 2
    iget v1, p0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr p3, v1

    mul-int/2addr p2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 3
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4
    :cond_0
    div-int/2addr v4, p3

    .line 5
    iget-object v3, p0, Ln3/y/b/a/n0/a0;->i:[S

    int-to-short v4, v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c([SII)[S
    .locals 2

    .line 1
    array-length v0, p1

    iget v1, p0, Ln3/y/b/a/n0/a0;->b:I

    div-int/2addr v0, v1

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 2
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int/2addr v0, v1

    .line 3
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    return-object p1
.end method

.method public final d([SIII)I
    .locals 9

    .line 1
    iget v0, p0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xff

    move v3, v1

    move v4, v3

    :goto_0
    if-gt p3, p4, :cond_3

    move v5, v1

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 2
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 3
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 4
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v0, p3

    if-ge v5, v7, :cond_1

    move v3, p3

    move v0, v6

    :cond_1
    mul-int v5, v6, v2

    mul-int v7, v4, p3

    if-le v5, v7, :cond_2

    move v2, p3

    move v4, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    div-int/2addr v0, v3

    iput v0, p0, Ln3/y/b/a/n0/a0;->u:I

    .line 6
    div-int/2addr v4, v2

    iput v4, p0, Ln3/y/b/a/n0/a0;->v:I

    return v3
.end method

.method public final f()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ln3/y/b/a/n0/a0;->m:I

    .line 2
    iget v2, v0, Ln3/y/b/a/n0/a0;->c:F

    iget v3, v0, Ln3/y/b/a/n0/a0;->d:F

    div-float/2addr v2, v3

    .line 3
    iget v4, v0, Ln3/y/b/a/n0/a0;->e:F

    mul-float/2addr v4, v3

    float-to-double v5, v2

    const-wide v7, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v3, v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-gtz v3, :cond_1

    const-wide v10, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v3, v5, v10

    if-gez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Ln3/y/b/a/n0/a0;->j:[S

    iget v3, v0, Ln3/y/b/a/n0/a0;->k:I

    invoke-virtual {v0, v2, v8, v3}, Ln3/y/b/a/n0/a0;->a([SII)V

    .line 5
    iput v8, v0, Ln3/y/b/a/n0/a0;->k:I

    goto/16 :goto_b

    .line 6
    :cond_1
    :goto_0
    iget v3, v0, Ln3/y/b/a/n0/a0;->k:I

    iget v10, v0, Ln3/y/b/a/n0/a0;->h:I

    if-ge v3, v10, :cond_2

    goto/16 :goto_a

    :cond_2
    move v10, v8

    .line 7
    :goto_1
    iget v11, v0, Ln3/y/b/a/n0/a0;->r:I

    if-lez v11, :cond_3

    .line 8
    iget v12, v0, Ln3/y/b/a/n0/a0;->h:I

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 9
    iget-object v12, v0, Ln3/y/b/a/n0/a0;->j:[S

    invoke-virtual {v0, v12, v10, v11}, Ln3/y/b/a/n0/a0;->a([SII)V

    .line 10
    iget v12, v0, Ln3/y/b/a/n0/a0;->r:I

    sub-int/2addr v12, v11

    iput v12, v0, Ln3/y/b/a/n0/a0;->r:I

    add-int/2addr v10, v11

    goto/16 :goto_9

    .line 11
    :cond_3
    iget-object v11, v0, Ln3/y/b/a/n0/a0;->j:[S

    .line 12
    iget v12, v0, Ln3/y/b/a/n0/a0;->a:I

    const/16 v13, 0xfa0

    if-le v12, v13, :cond_4

    div-int/lit16 v12, v12, 0xfa0

    goto :goto_2

    :cond_4
    move v12, v9

    .line 13
    :goto_2
    iget v13, v0, Ln3/y/b/a/n0/a0;->b:I

    if-ne v13, v9, :cond_5

    if-ne v12, v9, :cond_5

    .line 14
    iget v12, v0, Ln3/y/b/a/n0/a0;->f:I

    iget v13, v0, Ln3/y/b/a/n0/a0;->g:I

    invoke-virtual {v0, v11, v10, v12, v13}, Ln3/y/b/a/n0/a0;->d([SIII)I

    move-result v11

    goto :goto_3

    .line 15
    :cond_5
    invoke-virtual {v0, v11, v10, v12}, Ln3/y/b/a/n0/a0;->b([SII)V

    .line 16
    iget-object v13, v0, Ln3/y/b/a/n0/a0;->i:[S

    iget v14, v0, Ln3/y/b/a/n0/a0;->f:I

    div-int/2addr v14, v12

    iget v15, v0, Ln3/y/b/a/n0/a0;->g:I

    div-int/2addr v15, v12

    invoke-virtual {v0, v13, v8, v14, v15}, Ln3/y/b/a/n0/a0;->d([SIII)I

    move-result v13

    if-eq v12, v9, :cond_9

    mul-int/2addr v13, v12

    mul-int/lit8 v12, v12, 0x4

    sub-int v14, v13, v12

    add-int/2addr v13, v12

    .line 17
    iget v12, v0, Ln3/y/b/a/n0/a0;->f:I

    if-ge v14, v12, :cond_6

    move v14, v12

    .line 18
    :cond_6
    iget v12, v0, Ln3/y/b/a/n0/a0;->g:I

    if-le v13, v12, :cond_7

    move v13, v12

    .line 19
    :cond_7
    iget v12, v0, Ln3/y/b/a/n0/a0;->b:I

    if-ne v12, v9, :cond_8

    .line 20
    invoke-virtual {v0, v11, v10, v14, v13}, Ln3/y/b/a/n0/a0;->d([SIII)I

    move-result v11

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v0, v11, v10, v9}, Ln3/y/b/a/n0/a0;->b([SII)V

    .line 22
    iget-object v11, v0, Ln3/y/b/a/n0/a0;->i:[S

    invoke-virtual {v0, v11, v8, v14, v13}, Ln3/y/b/a/n0/a0;->d([SIII)I

    move-result v11

    goto :goto_3

    :cond_9
    move v11, v13

    .line 23
    :goto_3
    iget v12, v0, Ln3/y/b/a/n0/a0;->u:I

    iget v13, v0, Ln3/y/b/a/n0/a0;->v:I

    if-eqz v12, :cond_d

    .line 24
    iget v14, v0, Ln3/y/b/a/n0/a0;->s:I

    if-nez v14, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v14, v12, 0x3

    if-le v13, v14, :cond_b

    goto :goto_4

    :cond_b
    mul-int/lit8 v13, v12, 0x2

    .line 25
    iget v14, v0, Ln3/y/b/a/n0/a0;->t:I

    mul-int/lit8 v14, v14, 0x3

    if-gt v13, v14, :cond_c

    goto :goto_4

    :cond_c
    move v13, v9

    goto :goto_5

    :cond_d
    :goto_4
    move v13, v8

    :goto_5
    if-eqz v13, :cond_e

    .line 26
    iget v13, v0, Ln3/y/b/a/n0/a0;->s:I

    move v15, v13

    goto :goto_6

    :cond_e
    move v15, v11

    .line 27
    :goto_6
    iput v12, v0, Ln3/y/b/a/n0/a0;->t:I

    .line 28
    iput v11, v0, Ln3/y/b/a/n0/a0;->s:I

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v5, v11

    const/high16 v12, 0x40000000    # 2.0f

    if-lez v11, :cond_10

    .line 29
    iget-object v14, v0, Ln3/y/b/a/n0/a0;->j:[S

    cmpl-float v11, v2, v12

    if-ltz v11, :cond_f

    int-to-float v11, v15

    sub-float v12, v2, v7

    div-float/2addr v11, v12

    float-to-int v11, v11

    move v13, v11

    goto :goto_7

    :cond_f
    int-to-float v11, v15

    sub-float/2addr v12, v2

    mul-float/2addr v12, v11

    sub-float v11, v2, v7

    div-float/2addr v12, v11

    float-to-int v11, v12

    .line 30
    iput v11, v0, Ln3/y/b/a/n0/a0;->r:I

    move v13, v15

    .line 31
    :goto_7
    iget-object v11, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v12, v0, Ln3/y/b/a/n0/a0;->m:I

    invoke-virtual {v0, v11, v12, v13}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v12

    iput-object v12, v0, Ln3/y/b/a/n0/a0;->l:[S

    .line 32
    iget v11, v0, Ln3/y/b/a/n0/a0;->b:I

    iget v9, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int v18, v10, v15

    move/from16 v16, v11

    move v11, v13

    move-object/from16 v17, v12

    move/from16 v12, v16

    move/from16 v19, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move v14, v9

    move v9, v15

    move-object/from16 v15, v17

    move/from16 v16, v10

    invoke-static/range {v11 .. v18}, Ln3/y/b/a/n0/a0;->e(II[SI[SI[SI)V

    .line 33
    iget v11, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int v11, v11, v19

    iput v11, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int v15, v9, v19

    add-int/2addr v15, v10

    move v10, v15

    goto :goto_9

    :cond_10
    move v9, v15

    .line 34
    iget-object v15, v0, Ln3/y/b/a/n0/a0;->j:[S

    const/high16 v11, 0x3f000000    # 0.5f

    cmpg-float v11, v2, v11

    if-gez v11, :cond_11

    int-to-float v11, v9

    mul-float/2addr v11, v2

    sub-float v12, v7, v2

    div-float/2addr v11, v12

    float-to-int v11, v11

    move/from16 v19, v11

    goto :goto_8

    :cond_11
    int-to-float v11, v9

    mul-float/2addr v12, v2

    sub-float/2addr v12, v7

    mul-float/2addr v12, v11

    sub-float v11, v7, v2

    div-float/2addr v12, v11

    float-to-int v11, v12

    .line 35
    iput v11, v0, Ln3/y/b/a/n0/a0;->r:I

    move/from16 v19, v9

    .line 36
    :goto_8
    iget-object v11, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v12, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int v14, v9, v19

    .line 37
    invoke-virtual {v0, v11, v12, v14}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v11

    iput-object v11, v0, Ln3/y/b/a/n0/a0;->l:[S

    .line 38
    iget v12, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int v13, v10, v12

    iget v7, v0, Ln3/y/b/a/n0/a0;->m:I

    mul-int/2addr v7, v12

    mul-int/2addr v12, v9

    invoke-static {v15, v13, v11, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v12, v0, Ln3/y/b/a/n0/a0;->b:I

    iget-object v13, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v7, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int/2addr v7, v9

    add-int v16, v10, v9

    move/from16 v11, v19

    move v9, v14

    move v14, v7

    move-object v7, v15

    move-object/from16 v17, v7

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Ln3/y/b/a/n0/a0;->e(II[SI[SI[SI)V

    .line 40
    iget v7, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int/2addr v7, v9

    iput v7, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int v10, v10, v19

    .line 41
    :goto_9
    iget v7, v0, Ln3/y/b/a/n0/a0;->h:I

    add-int/2addr v7, v10

    if-le v7, v3, :cond_1c

    .line 42
    iget v2, v0, Ln3/y/b/a/n0/a0;->k:I

    sub-int/2addr v2, v10

    .line 43
    iget-object v3, v0, Ln3/y/b/a/n0/a0;->j:[S

    iget v5, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int/2addr v10, v5

    mul-int/2addr v5, v2

    invoke-static {v3, v10, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iput v2, v0, Ln3/y/b/a/n0/a0;->k:I

    :goto_a
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_b
    cmpl-float v2, v4, v7

    if-eqz v2, :cond_1b

    .line 45
    iget v2, v0, Ln3/y/b/a/n0/a0;->m:I

    if-ne v2, v1, :cond_12

    goto/16 :goto_12

    .line 46
    :cond_12
    iget v2, v0, Ln3/y/b/a/n0/a0;->a:I

    int-to-float v3, v2

    div-float/2addr v3, v4

    float-to-int v3, v3

    :goto_c
    const/16 v4, 0x4000

    if-gt v3, v4, :cond_1a

    if-le v2, v4, :cond_13

    goto/16 :goto_11

    .line 47
    :cond_13
    iget v4, v0, Ln3/y/b/a/n0/a0;->m:I

    sub-int/2addr v4, v1

    .line 48
    iget-object v5, v0, Ln3/y/b/a/n0/a0;->n:[S

    iget v6, v0, Ln3/y/b/a/n0/a0;->o:I

    invoke-virtual {v0, v5, v6, v4}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v5

    iput-object v5, v0, Ln3/y/b/a/n0/a0;->n:[S

    .line 49
    iget-object v6, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v7, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int v9, v1, v7

    iget v10, v0, Ln3/y/b/a/n0/a0;->o:I

    mul-int/2addr v10, v7

    mul-int/2addr v7, v4

    invoke-static {v6, v9, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput v1, v0, Ln3/y/b/a/n0/a0;->m:I

    .line 51
    iget v1, v0, Ln3/y/b/a/n0/a0;->o:I

    add-int/2addr v1, v4

    iput v1, v0, Ln3/y/b/a/n0/a0;->o:I

    move v1, v8

    .line 52
    :goto_d
    iget v4, v0, Ln3/y/b/a/n0/a0;->o:I

    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_18

    .line 53
    :goto_e
    iget v4, v0, Ln3/y/b/a/n0/a0;->p:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    mul-int v6, v4, v3

    iget v7, v0, Ln3/y/b/a/n0/a0;->q:I

    mul-int v9, v7, v2

    if-le v6, v9, :cond_15

    .line 54
    iget-object v4, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v6, v0, Ln3/y/b/a/n0/a0;->m:I

    .line 55
    invoke-virtual {v0, v4, v6, v5}, Ln3/y/b/a/n0/a0;->c([SII)[S

    move-result-object v4

    iput-object v4, v0, Ln3/y/b/a/n0/a0;->l:[S

    move v4, v8

    .line 56
    :goto_f
    iget v5, v0, Ln3/y/b/a/n0/a0;->b:I

    if-ge v4, v5, :cond_14

    .line 57
    iget-object v6, v0, Ln3/y/b/a/n0/a0;->l:[S

    iget v7, v0, Ln3/y/b/a/n0/a0;->m:I

    mul-int/2addr v7, v5

    add-int/2addr v7, v4

    iget-object v9, v0, Ln3/y/b/a/n0/a0;->n:[S

    mul-int v10, v1, v5

    add-int/2addr v10, v4

    .line 58
    aget-short v11, v9, v10

    add-int/2addr v10, v5

    .line 59
    aget-short v5, v9, v10

    .line 60
    iget v9, v0, Ln3/y/b/a/n0/a0;->q:I

    mul-int/2addr v9, v2

    .line 61
    iget v10, v0, Ln3/y/b/a/n0/a0;->p:I

    mul-int v12, v10, v3

    const/4 v13, 0x1

    add-int/2addr v10, v13

    mul-int/2addr v10, v3

    sub-int v9, v10, v9

    sub-int/2addr v10, v12

    mul-int/2addr v11, v9

    sub-int v9, v10, v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v11

    .line 62
    div-int/2addr v9, v10

    int-to-short v5, v9

    .line 63
    aput-short v5, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 64
    :cond_14
    iget v4, v0, Ln3/y/b/a/n0/a0;->q:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Ln3/y/b/a/n0/a0;->q:I

    .line 65
    iget v4, v0, Ln3/y/b/a/n0/a0;->m:I

    add-int/2addr v4, v9

    iput v4, v0, Ln3/y/b/a/n0/a0;->m:I

    goto :goto_e

    :cond_15
    move v9, v5

    .line 66
    iput v4, v0, Ln3/y/b/a/n0/a0;->p:I

    if-ne v4, v2, :cond_17

    .line 67
    iput v8, v0, Ln3/y/b/a/n0/a0;->p:I

    if-ne v7, v3, :cond_16

    move v5, v9

    goto :goto_10

    :cond_16
    move v5, v8

    .line 68
    :goto_10
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 69
    iput v8, v0, Ln3/y/b/a/n0/a0;->q:I

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    if-nez v5, :cond_19

    goto :goto_12

    .line 70
    :cond_19
    iget-object v1, v0, Ln3/y/b/a/n0/a0;->n:[S

    iget v2, v0, Ln3/y/b/a/n0/a0;->b:I

    mul-int v3, v5, v2

    sub-int/2addr v4, v5

    mul-int/2addr v4, v2

    invoke-static {v1, v3, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget v1, v0, Ln3/y/b/a/n0/a0;->o:I

    sub-int/2addr v1, v5

    iput v1, v0, Ln3/y/b/a/n0/a0;->o:I

    goto :goto_12

    :cond_1a
    :goto_11
    const/4 v9, 0x1

    .line 72
    div-int/lit8 v3, v3, 0x2

    .line 73
    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_c

    :cond_1b
    :goto_12
    return-void

    :cond_1c
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    goto/16 :goto_1
.end method
