.class public final Le/m/a/c/g1/e0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/e0/j;


# instance fields
.field public final a:Le/m/a/c/q1/s;

.field public final b:Le/m/a/c/q1/t;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Le/m/a/c/g1/s;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Lcom/google/android/exoplayer2/Format;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/s;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Le/m/a/c/q1/s;-><init>([B)V

    iput-object v0, p0, Le/m/a/c/g1/e0/b;->a:Le/m/a/c/q1/s;

    .line 3
    new-instance v1, Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/s;->a:[B

    invoke-direct {v1, v0}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object v1, p0, Le/m/a/c/g1/e0/b;->b:Le/m/a/c/q1/t;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/m/a/c/g1/e0/b;->f:I

    .line 5
    iput-object p1, p0, Le/m/a/c/g1/e0/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/e0/b;->f:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/e0/b;->g:I

    .line 3
    iput-boolean v0, p0, Le/m/a/c/g1/e0/b;->h:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/m/a/c/g1/e0/b;->l:J

    return-void
.end method

.method public d(Le/m/a/c/q1/t;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    if-lez v2, :cond_3d

    .line 2
    iget v2, v0, Le/m/a/c/g1/e0/b;->f:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_37

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    iget v3, v0, Le/m/a/c/g1/e0/b;->k:I

    iget v5, v0, Le/m/a/c/g1/e0/b;->g:I

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Le/m/a/c/g1/e0/b;->e:Le/m/a/c/g1/s;

    invoke-interface {v3, v1, v2}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 5
    iget v3, v0, Le/m/a/c/g1/e0/b;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Le/m/a/c/g1/e0/b;->g:I

    .line 6
    iget v9, v0, Le/m/a/c/g1/e0/b;->k:I

    if-ne v3, v9, :cond_0

    .line 7
    iget-object v5, v0, Le/m/a/c/g1/e0/b;->e:Le/m/a/c/g1/s;

    iget-wide v6, v0, Le/m/a/c/g1/e0/b;->l:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 8
    iget-wide v2, v0, Le/m/a/c/g1/e0/b;->l:J

    iget-wide v5, v0, Le/m/a/c/g1/e0/b;->i:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Le/m/a/c/g1/e0/b;->l:J

    .line 9
    iput v4, v0, Le/m/a/c/g1/e0/b;->f:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, v0, Le/m/a/c/g1/e0/b;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 11
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v7

    iget v8, v0, Le/m/a/c/g1/e0/b;->g:I

    const/16 v9, 0x80

    rsub-int v8, v8, 0x80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 12
    iget v8, v0, Le/m/a/c/g1/e0/b;->g:I

    .line 13
    iget-object v10, v1, Le/m/a/c/q1/t;->a:[B

    iget v11, v1, Le/m/a/c/q1/t;->b:I

    invoke-static {v10, v11, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    add-int/2addr v2, v7

    iput v2, v1, Le/m/a/c/q1/t;->b:I

    .line 15
    iget v2, v0, Le/m/a/c/g1/e0/b;->g:I

    add-int/2addr v2, v7

    iput v2, v0, Le/m/a/c/g1/e0/b;->g:I

    if-ne v2, v9, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-eqz v2, :cond_0

    .line 16
    iget-object v2, v0, Le/m/a/c/g1/e0/b;->a:Le/m/a/c/q1/s;

    invoke-virtual {v2, v4}, Le/m/a/c/q1/s;->j(I)V

    .line 17
    iget-object v2, v0, Le/m/a/c/g1/e0/b;->a:Le/m/a/c/q1/s;

    .line 18
    sget-object v7, Le/m/a/c/c1/g;->d:[I

    sget-object v8, Le/m/a/c/c1/g;->b:[I

    invoke-virtual {v2}, Le/m/a/c/q1/s;->d()I

    move-result v10

    const/16 v11, 0x28

    .line 19
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    const/4 v11, 0x5

    .line 20
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->f(I)I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_4

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v4

    .line 21
    :goto_2
    invoke-virtual {v2, v10}, Le/m/a/c/q1/s;->j(I)V

    const/4 v14, 0x3

    const/16 v15, 0x8

    if-eqz v12, :cond_2f

    const/16 v12, 0x10

    .line 22
    invoke-virtual {v2, v12}, Le/m/a/c/q1/s;->l(I)V

    .line 23
    invoke-virtual {v2, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v9

    if-eqz v9, :cond_7

    if-eq v9, v5, :cond_6

    if-eq v9, v6, :cond_5

    const/4 v9, -0x1

    goto :goto_3

    :cond_5
    move v9, v6

    goto :goto_3

    :cond_6
    move v9, v5

    goto :goto_3

    :cond_7
    move v9, v4

    .line 24
    :goto_3
    invoke-virtual {v2, v14}, Le/m/a/c/q1/s;->l(I)V

    .line 25
    invoke-virtual {v2, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result v3

    add-int/2addr v3, v5

    mul-int/2addr v3, v6

    .line 26
    invoke-virtual {v2, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    if-ne v4, v14, :cond_8

    .line 27
    sget-object v8, Le/m/a/c/c1/g;->c:[I

    invoke-virtual {v2, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v16

    aget v8, v8, v16

    move/from16 v18, v14

    const/4 v10, 0x6

    goto :goto_4

    .line 28
    :cond_8
    invoke-virtual {v2, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v16

    .line 29
    sget-object v17, Le/m/a/c/c1/g;->a:[I

    aget v17, v17, v16

    .line 30
    aget v8, v8, v4

    move/from16 v18, v16

    move/from16 v10, v17

    :goto_4
    mul-int/lit16 v6, v10, 0x100

    .line 31
    invoke-virtual {v2, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v12

    .line 32
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    .line 33
    aget v7, v7, v12

    add-int v7, v7, v16

    .line 34
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    .line 35
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 36
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    :cond_9
    if-nez v12, :cond_a

    .line 37
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    .line 38
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 39
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    :cond_a
    if-ne v9, v5, :cond_b

    .line 40
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x10

    .line 41
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    .line 42
    :cond_b
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v13, 0x2

    if-le v12, v13, :cond_c

    .line 43
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    :cond_c
    and-int/lit8 v19, v12, 0x1

    if-eqz v19, :cond_d

    if-le v12, v13, :cond_d

    const/4 v13, 0x6

    .line 44
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_5

    :cond_d
    const/4 v13, 0x6

    :goto_5
    and-int/lit8 v17, v12, 0x4

    if-eqz v17, :cond_e

    .line 45
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    :cond_e
    if-eqz v16, :cond_f

    .line 46
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 47
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    :cond_f
    if-nez v9, :cond_24

    .line 48
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x6

    .line 49
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_6

    :cond_10
    const/4 v13, 0x6

    :goto_6
    if-nez v12, :cond_11

    .line 50
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 51
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    .line 52
    :cond_11
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 53
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    :cond_12
    const/4 v13, 0x2

    .line 54
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->f(I)I

    move-result v15

    if-ne v15, v5, :cond_13

    .line 55
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    move v5, v13

    goto/16 :goto_a

    :cond_13
    if-ne v15, v13, :cond_14

    const/16 v13, 0xc

    .line 56
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    goto/16 :goto_9

    :cond_14
    if-ne v15, v14, :cond_1f

    .line 57
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->f(I)I

    move-result v13

    .line 58
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 59
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    .line 60
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v15, 0x4

    .line 61
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_7

    :cond_15
    const/4 v15, 0x4

    .line 62
    :goto_7
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_16

    .line 63
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 64
    :cond_16
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_17

    .line 65
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 66
    :cond_17
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_18

    .line 67
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 68
    :cond_18
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 69
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 70
    :cond_19
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 71
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 72
    :cond_1a
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 73
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 74
    :cond_1b
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 75
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_1c

    .line 76
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 77
    :cond_1c
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v16

    if-eqz v16, :cond_1d

    .line 78
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 79
    :cond_1d
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 80
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    .line 81
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v15

    if-eqz v15, :cond_1e

    const/4 v15, 0x7

    .line 82
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    .line 83
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v15

    if-eqz v15, :cond_1e

    const/16 v15, 0x8

    .line 84
    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_8

    :cond_1e
    const/16 v15, 0x8

    :goto_8
    const/4 v5, 0x2

    add-int/2addr v13, v5

    mul-int/2addr v13, v15

    .line 85
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    .line 86
    invoke-virtual {v2}, Le/m/a/c/q1/s;->c()V

    goto :goto_a

    :cond_1f
    :goto_9
    const/4 v5, 0x2

    :goto_a
    if-ge v12, v5, :cond_21

    .line 87
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v5

    const/16 v13, 0xe

    if-eqz v5, :cond_20

    .line 88
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    :cond_20
    if-nez v12, :cond_21

    .line 89
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 90
    invoke-virtual {v2, v13}, Le/m/a/c/q1/s;->l(I)V

    .line 91
    :cond_21
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v5

    if-eqz v5, :cond_24

    move/from16 v5, v18

    if-nez v5, :cond_22

    .line 92
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_c

    :cond_22
    const/4 v13, 0x0

    :goto_b
    if-ge v13, v10, :cond_25

    .line 93
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v15

    if-eqz v15, :cond_23

    .line 94
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_24
    move/from16 v5, v18

    .line 95
    :cond_25
    :goto_c
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 96
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    const/4 v10, 0x2

    if-ne v12, v10, :cond_26

    const/4 v11, 0x4

    .line 97
    invoke-virtual {v2, v11}, Le/m/a/c/q1/s;->l(I)V

    :cond_26
    const/4 v11, 0x6

    if-lt v12, v11, :cond_27

    .line 98
    invoke-virtual {v2, v10}, Le/m/a/c/q1/s;->l(I)V

    .line 99
    :cond_27
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v10

    if-eqz v10, :cond_28

    const/16 v10, 0x8

    .line 100
    invoke-virtual {v2, v10}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_d

    :cond_28
    const/16 v10, 0x8

    :goto_d
    if-nez v12, :cond_29

    .line 101
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 102
    invoke-virtual {v2, v10}, Le/m/a/c/q1/s;->l(I)V

    :cond_29
    if-ge v4, v14, :cond_2a

    .line 103
    invoke-virtual {v2}, Le/m/a/c/q1/s;->k()V

    :cond_2a
    if-nez v9, :cond_2b

    if-eq v5, v14, :cond_2b

    .line 104
    invoke-virtual {v2}, Le/m/a/c/q1/s;->k()V

    :cond_2b
    const/4 v4, 0x2

    if-ne v9, v4, :cond_2d

    if-eq v5, v14, :cond_2c

    .line 105
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    const/4 v4, 0x6

    .line 106
    invoke-virtual {v2, v4}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_e

    :cond_2d
    const/4 v4, 0x6

    .line 107
    :goto_e
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 108
    invoke-virtual {v2, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2e

    const/16 v4, 0x8

    .line 109
    invoke-virtual {v2, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    if-ne v2, v5, :cond_2e

    const-string v2, "audio/eac3-joc"

    goto :goto_12

    :cond_2e
    const-string v2, "audio/eac3"

    goto :goto_12

    :cond_2f
    const/16 v3, 0x20

    .line 110
    invoke-virtual {v2, v3}, Le/m/a/c/q1/s;->l(I)V

    const/4 v3, 0x2

    .line 111
    invoke-virtual {v2, v3}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    if-ne v4, v14, :cond_30

    const/4 v3, 0x0

    goto :goto_f

    :cond_30
    const-string v3, "audio/ac3"

    :goto_f
    const/4 v5, 0x6

    .line 112
    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v5

    .line 113
    invoke-static {v4, v5}, Le/m/a/c/c1/g;->a(II)I

    move-result v5

    const/16 v6, 0x8

    .line 114
    invoke-virtual {v2, v6}, Le/m/a/c/q1/s;->l(I)V

    .line 115
    invoke-virtual {v2, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v6

    and-int/lit8 v9, v6, 0x1

    if-eqz v9, :cond_31

    const/4 v9, 0x1

    if-eq v6, v9, :cond_31

    const/4 v9, 0x2

    .line 116
    invoke-virtual {v2, v9}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_10

    :cond_31
    const/4 v9, 0x2

    :goto_10
    and-int/lit8 v10, v6, 0x4

    if-eqz v10, :cond_32

    .line 117
    invoke-virtual {v2, v9}, Le/m/a/c/q1/s;->l(I)V

    :cond_32
    if-ne v6, v9, :cond_33

    .line 118
    invoke-virtual {v2, v9}, Le/m/a/c/q1/s;->l(I)V

    .line 119
    :cond_33
    array-length v9, v8

    if-ge v4, v9, :cond_34

    aget v10, v8, v4

    goto :goto_11

    :cond_34
    const/4 v10, -0x1

    :goto_11
    const/16 v4, 0x600

    .line 120
    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v2

    .line 121
    aget v6, v7, v6

    add-int v7, v6, v2

    move-object v2, v3

    move v6, v4

    move v3, v5

    move v8, v10

    .line 122
    :goto_12
    iget-object v4, v0, Le/m/a/c/g1/e0/b;->j:Lcom/google/android/exoplayer2/Format;

    if-eqz v4, :cond_35

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->v:I

    if-ne v7, v5, :cond_35

    iget v5, v4, Lcom/google/android/exoplayer2/Format;->w:I

    if-ne v8, v5, :cond_35

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    if-eq v2, v4, :cond_36

    .line 123
    :cond_35
    iget-object v4, v0, Le/m/a/c/g1/e0/b;->d:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget-object v5, v0, Le/m/a/c/g1/e0/b;->c:Ljava/lang/String;

    move-object/from16 v20, v4

    move-object/from16 v21, v2

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v30, v5

    invoke-static/range {v20 .. v30}, Lcom/google/android/exoplayer2/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iput-object v2, v0, Le/m/a/c/g1/e0/b;->j:Lcom/google/android/exoplayer2/Format;

    .line 124
    iget-object v4, v0, Le/m/a/c/g1/e0/b;->e:Le/m/a/c/g1/s;

    invoke-interface {v4, v2}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 125
    :cond_36
    iput v3, v0, Le/m/a/c/g1/e0/b;->k:I

    const-wide/32 v2, 0xf4240

    int-to-long v4, v6

    mul-long/2addr v4, v2

    .line 126
    iget-object v2, v0, Le/m/a/c/g1/e0/b;->j:Lcom/google/android/exoplayer2/Format;

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    iput-wide v4, v0, Le/m/a/c/g1/e0/b;->i:J

    .line 127
    iget-object v2, v0, Le/m/a/c/g1/e0/b;->b:Le/m/a/c/q1/t;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 128
    iget-object v2, v0, Le/m/a/c/g1/e0/b;->e:Le/m/a/c/g1/s;

    iget-object v3, v0, Le/m/a/c/g1/e0/b;->b:Le/m/a/c/q1/t;

    const/16 v4, 0x80

    invoke-interface {v2, v3, v4}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    const/4 v2, 0x2

    .line 129
    iput v2, v0, Le/m/a/c/g1/e0/b;->f:I

    goto/16 :goto_0

    .line 130
    :cond_37
    :goto_13
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->a()I

    move-result v2

    const/16 v4, 0x77

    if-lez v2, :cond_3c

    .line 131
    iget-boolean v2, v0, Le/m/a/c/g1/e0/b;->h:Z

    if-nez v2, :cond_39

    .line 132
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    if-ne v2, v3, :cond_38

    const/4 v2, 0x1

    goto :goto_14

    :cond_38
    const/4 v2, 0x0

    :goto_14
    iput-boolean v2, v0, Le/m/a/c/g1/e0/b;->h:Z

    goto :goto_13

    .line 133
    :cond_39
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/t;->q()I

    move-result v2

    if-ne v2, v4, :cond_3a

    const/4 v5, 0x0

    .line 134
    iput-boolean v5, v0, Le/m/a/c/g1/e0/b;->h:Z

    const/4 v5, 0x1

    goto :goto_16

    :cond_3a
    if-ne v2, v3, :cond_3b

    const/4 v5, 0x1

    goto :goto_15

    :cond_3b
    const/4 v5, 0x0

    .line 135
    :goto_15
    iput-boolean v5, v0, Le/m/a/c/g1/e0/b;->h:Z

    goto :goto_13

    :cond_3c
    const/4 v5, 0x0

    :goto_16
    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 136
    iput v2, v0, Le/m/a/c/g1/e0/b;->f:I

    .line 137
    iget-object v5, v0, Le/m/a/c/g1/e0/b;->b:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/4 v6, 0x0

    aput-byte v3, v5, v6

    .line 138
    aput-byte v4, v5, v2

    const/4 v2, 0x2

    .line 139
    iput v2, v0, Le/m/a/c/g1/e0/b;->g:I

    goto/16 :goto_0

    :cond_3d
    return-void
.end method

.method public e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/e0/b;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Le/m/a/c/g1/e0/c0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/b;->e:Le/m/a/c/g1/s;

    return-void
.end method
