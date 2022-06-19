.class public final Ln3/y/b/a/q0/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/j;


# instance fields
.field public final a:Ln3/y/b/a/x0/l;

.field public final b:Ln3/y/b/a/x0/m;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ln3/y/b/a/q0/p;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Landroidx/media2/exoplayer/external/Format;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/x0/l;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/l;-><init>([B)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/b;->a:Ln3/y/b/a/x0/l;

    .line 3
    new-instance v1, Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/l;->a:[B

    invoke-direct {v1, v0}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object v1, p0, Ln3/y/b/a/q0/w/b;->b:Ln3/y/b/a/x0/m;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln3/y/b/a/q0/w/b;->f:I

    .line 5
    iput-object p1, p0, Ln3/y/b/a/q0/w/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/w/b;->f:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/w/b;->g:I

    .line 3
    iput-boolean v0, p0, Ln3/y/b/a/q0/w/b;->h:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln3/y/b/a/q0/w/b;->l:J

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-lez v2, :cond_3f

    .line 2
    iget v2, v0, Ln3/y/b/a/q0/w/b;->f:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_39

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    iget v3, v0, Ln3/y/b/a/q0/w/b;->k:I

    iget v5, v0, Ln3/y/b/a/q0/w/b;->g:I

    sub-int/2addr v3, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4
    iget-object v3, v0, Ln3/y/b/a/q0/w/b;->e:Ln3/y/b/a/q0/p;

    invoke-interface {v3, v1, v2}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 5
    iget v3, v0, Ln3/y/b/a/q0/w/b;->g:I

    add-int/2addr v3, v2

    iput v3, v0, Ln3/y/b/a/q0/w/b;->g:I

    .line 6
    iget v9, v0, Ln3/y/b/a/q0/w/b;->k:I

    if-ne v3, v9, :cond_0

    .line 7
    iget-object v5, v0, Ln3/y/b/a/q0/w/b;->e:Ln3/y/b/a/q0/p;

    iget-wide v6, v0, Ln3/y/b/a/q0/w/b;->l:J

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 8
    iget-wide v2, v0, Ln3/y/b/a/q0/w/b;->l:J

    iget-wide v5, v0, Ln3/y/b/a/q0/w/b;->i:J

    add-long/2addr v2, v5

    iput-wide v2, v0, Ln3/y/b/a/q0/w/b;->l:J

    .line 9
    iput v4, v0, Ln3/y/b/a/q0/w/b;->f:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 11
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v7

    iget v8, v0, Ln3/y/b/a/q0/w/b;->g:I

    const/16 v9, 0x80

    rsub-int v8, v8, 0x80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 12
    iget v8, v0, Ln3/y/b/a/q0/w/b;->g:I

    .line 13
    iget-object v10, v1, Ln3/y/b/a/x0/m;->a:[B

    iget v11, v1, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v10, v11, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v2, v7

    iput v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 15
    iget v2, v0, Ln3/y/b/a/q0/w/b;->g:I

    add-int/2addr v2, v7

    iput v2, v0, Ln3/y/b/a/q0/w/b;->g:I

    if-ne v2, v9, :cond_3

    move v2, v5

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-eqz v2, :cond_0

    .line 16
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->h(I)V

    .line 17
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->a:Ln3/y/b/a/x0/l;

    .line 18
    sget-object v7, Ln3/y/b/a/n0/a;->d:[I

    sget-object v8, Ln3/y/b/a/n0/a;->b:[I

    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->c()I

    move-result v10

    const/16 v11, 0x28

    .line 19
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    const/4 v11, 0x5

    .line 20
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v12

    const/16 v13, 0x10

    if-ne v12, v13, :cond_4

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v4

    .line 21
    :goto_2
    invoke-virtual {v2, v10}, Ln3/y/b/a/x0/l;->h(I)V

    const/4 v14, 0x3

    const/16 v15, 0x8

    if-eqz v12, :cond_31

    .line 22
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    .line 23
    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v12

    if-eqz v12, :cond_7

    if-eq v12, v5, :cond_6

    if-eq v12, v6, :cond_5

    const/4 v12, -0x1

    goto :goto_3

    :cond_5
    move v12, v6

    goto :goto_3

    :cond_6
    move v12, v5

    goto :goto_3

    :cond_7
    move v12, v4

    .line 24
    :goto_3
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 25
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v3

    add-int/2addr v3, v5

    mul-int/2addr v3, v6

    .line 26
    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v9

    if-ne v9, v14, :cond_8

    .line 27
    sget-object v8, Ln3/y/b/a/n0/a;->c:[I

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v16

    aget v8, v8, v16

    move/from16 v18, v14

    const/4 v4, 0x6

    goto :goto_4

    .line 28
    :cond_8
    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v16

    .line 29
    sget-object v17, Ln3/y/b/a/n0/a;->a:[I

    aget v17, v17, v16

    .line 30
    aget v8, v8, v9

    move/from16 v18, v16

    move/from16 v4, v17

    :goto_4
    mul-int/lit16 v10, v4, 0x100

    .line 31
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v6

    .line 32
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v16

    .line 33
    aget v7, v7, v6

    add-int v7, v7, v16

    const/16 v14, 0xa

    .line 34
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 35
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 36
    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_9
    if-nez v6, :cond_a

    .line 37
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    .line 38
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 39
    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_a
    if-ne v12, v5, :cond_b

    .line 40
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 41
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    .line 42
    :cond_b
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v13

    const/4 v14, 0x4

    if-eqz v13, :cond_25

    const/4 v13, 0x2

    if-le v6, v13, :cond_c

    .line 43
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_c
    and-int/lit8 v20, v6, 0x1

    if-eqz v20, :cond_d

    if-le v6, v13, :cond_d

    const/4 v13, 0x6

    .line 44
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_5

    :cond_d
    const/4 v13, 0x6

    :goto_5
    and-int/lit8 v19, v6, 0x4

    if-eqz v19, :cond_e

    .line 45
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_e
    if-eqz v16, :cond_f

    .line 46
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v13

    if-eqz v13, :cond_f

    .line 47
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_f
    if-nez v12, :cond_25

    .line 48
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x6

    .line 49
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_6

    :cond_10
    const/4 v13, 0x6

    :goto_6
    if-nez v6, :cond_11

    .line 50
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 51
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    .line 52
    :cond_11
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 53
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_12
    const/4 v13, 0x2

    .line 54
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v15

    if-ne v15, v5, :cond_13

    .line 55
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    goto/16 :goto_8

    :cond_13
    if-ne v15, v13, :cond_14

    const/16 v13, 0xc

    .line 56
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    goto/16 :goto_8

    :cond_14
    const/4 v13, 0x3

    if-ne v15, v13, :cond_20

    .line 57
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v13

    .line 58
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 59
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    .line 60
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 61
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 62
    :cond_15
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 63
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 64
    :cond_16
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 65
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 66
    :cond_17
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 67
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 68
    :cond_18
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_19

    .line 69
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 70
    :cond_19
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 71
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 72
    :cond_1a
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 73
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 74
    :cond_1b
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 75
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 76
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 77
    :cond_1c
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 78
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    .line 79
    :cond_1d
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 80
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    .line 81
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1e

    const/4 v15, 0x7

    .line 82
    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->j(I)V

    .line 83
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v15

    if-eqz v15, :cond_1e

    const/16 v15, 0x8

    .line 84
    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_7

    :cond_1e
    const/16 v15, 0x8

    :goto_7
    const/16 v16, 0x2

    add-int/lit8 v13, v13, 0x2

    mul-int/2addr v13, v15

    .line 85
    invoke-virtual {v2, v13}, Ln3/y/b/a/x0/l;->j(I)V

    .line 86
    iget v13, v2, Ln3/y/b/a/x0/l;->c:I

    if-nez v13, :cond_1f

    goto :goto_8

    :cond_1f
    const/4 v13, 0x0

    .line 87
    iput v13, v2, Ln3/y/b/a/x0/l;->c:I

    .line 88
    iget v13, v2, Ln3/y/b/a/x0/l;->b:I

    add-int/2addr v13, v5

    iput v13, v2, Ln3/y/b/a/x0/l;->b:I

    .line 89
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->a()V

    :cond_20
    :goto_8
    const/4 v13, 0x2

    if-ge v6, v13, :cond_22

    .line 90
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v13

    const/16 v15, 0xe

    if-eqz v13, :cond_21

    .line 91
    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_21
    if-nez v6, :cond_22

    .line 92
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v13

    if-eqz v13, :cond_22

    .line 93
    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->j(I)V

    .line 94
    :cond_22
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v13

    if-eqz v13, :cond_25

    move/from16 v13, v18

    if-nez v13, :cond_23

    .line 95
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_a

    :cond_23
    const/4 v15, 0x0

    :goto_9
    if-ge v15, v4, :cond_26

    .line 96
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v16

    if-eqz v16, :cond_24

    .line 97
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_24
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_25
    move/from16 v13, v18

    .line 98
    :cond_26
    :goto_a
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 99
    invoke-virtual {v2, v11}, Ln3/y/b/a/x0/l;->j(I)V

    const/4 v4, 0x2

    if-ne v6, v4, :cond_27

    .line 100
    invoke-virtual {v2, v14}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_27
    const/4 v11, 0x6

    if-lt v6, v11, :cond_28

    .line 101
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    .line 102
    :cond_28
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v4

    if-eqz v4, :cond_29

    const/16 v4, 0x8

    .line 103
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_b

    :cond_29
    const/16 v4, 0x8

    :goto_b
    if-nez v6, :cond_2a

    .line 104
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 105
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_2a
    const/4 v4, 0x3

    if-ge v9, v4, :cond_2c

    .line 106
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->i()V

    goto :goto_c

    :cond_2b
    const/4 v4, 0x3

    :cond_2c
    :goto_c
    if-nez v12, :cond_2d

    if-eq v13, v4, :cond_2d

    .line 107
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->i()V

    :cond_2d
    const/4 v6, 0x2

    if-ne v12, v6, :cond_2f

    if-eq v13, v4, :cond_2e

    .line 108
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2e
    const/4 v4, 0x6

    .line 109
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_d

    :cond_2f
    const/4 v4, 0x6

    .line 110
    :goto_d
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 111
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v4

    if-ne v4, v5, :cond_30

    const/16 v4, 0x8

    .line 112
    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    if-ne v2, v5, :cond_30

    const-string v2, "audio/eac3-joc"

    goto :goto_11

    :cond_30
    const-string v2, "audio/eac3"

    goto :goto_11

    :cond_31
    const/16 v3, 0x20

    .line 113
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/l;->j(I)V

    const/4 v3, 0x2

    .line 114
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v4

    const/4 v3, 0x3

    if-ne v4, v3, :cond_32

    const/4 v6, 0x0

    goto :goto_e

    :cond_32
    const-string v6, "audio/ac3"

    :goto_e
    const/4 v9, 0x6

    .line 115
    invoke-virtual {v2, v9}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v9

    .line 116
    invoke-static {v4, v9}, Ln3/y/b/a/n0/a;->a(II)I

    move-result v9

    const/16 v10, 0x8

    .line 117
    invoke-virtual {v2, v10}, Ln3/y/b/a/x0/l;->j(I)V

    .line 118
    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v3

    and-int/lit8 v10, v3, 0x1

    if-eqz v10, :cond_33

    if-eq v3, v5, :cond_33

    const/4 v5, 0x2

    .line 119
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/l;->j(I)V

    goto :goto_f

    :cond_33
    const/4 v5, 0x2

    :goto_f
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_34

    .line 120
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/l;->j(I)V

    :cond_34
    if-ne v3, v5, :cond_35

    .line 121
    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/l;->j(I)V

    .line 122
    :cond_35
    array-length v5, v8

    if-ge v4, v5, :cond_36

    aget v10, v8, v4

    goto :goto_10

    :cond_36
    const/4 v10, -0x1

    :goto_10
    const/16 v4, 0x600

    .line 123
    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v2

    .line 124
    aget v3, v7, v3

    add-int v7, v3, v2

    move-object v2, v6

    move v3, v9

    move v8, v10

    move v10, v4

    .line 125
    :goto_11
    iget-object v4, v0, Ln3/y/b/a/q0/w/b;->j:Landroidx/media2/exoplayer/external/Format;

    if-eqz v4, :cond_37

    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->v:I

    if-ne v7, v5, :cond_37

    iget v5, v4, Landroidx/media2/exoplayer/external/Format;->w:I

    if-ne v8, v5, :cond_37

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    if-eq v2, v4, :cond_38

    .line 126
    :cond_37
    iget-object v4, v0, Ln3/y/b/a/q0/w/b;->d:Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    iget-object v5, v0, Ln3/y/b/a/q0/w/b;->c:Ljava/lang/String;

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v31, v5

    invoke-static/range {v21 .. v31}, Landroidx/media2/exoplayer/external/Format;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v2

    iput-object v2, v0, Ln3/y/b/a/q0/w/b;->j:Landroidx/media2/exoplayer/external/Format;

    .line 127
    iget-object v4, v0, Ln3/y/b/a/q0/w/b;->e:Ln3/y/b/a/q0/p;

    invoke-interface {v4, v2}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 128
    :cond_38
    iput v3, v0, Ln3/y/b/a/q0/w/b;->k:I

    const-wide/32 v2, 0xf4240

    int-to-long v4, v10

    mul-long/2addr v4, v2

    .line 129
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->j:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->w:I

    int-to-long v2, v2

    div-long/2addr v4, v2

    iput-wide v4, v0, Ln3/y/b/a/q0/w/b;->i:J

    .line 130
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->b:Ln3/y/b/a/x0/m;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 131
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->e:Ln3/y/b/a/q0/p;

    iget-object v3, v0, Ln3/y/b/a/q0/w/b;->b:Ln3/y/b/a/x0/m;

    const/16 v4, 0x80

    invoke-interface {v2, v3, v4}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    const/4 v2, 0x2

    .line 132
    iput v2, v0, Ln3/y/b/a/q0/w/b;->f:I

    goto/16 :goto_0

    .line 133
    :cond_39
    :goto_12
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    const/16 v4, 0x77

    if-lez v2, :cond_3e

    .line 134
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/b;->h:Z

    if-nez v2, :cond_3b

    .line 135
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    if-ne v2, v3, :cond_3a

    move v2, v5

    goto :goto_13

    :cond_3a
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/b;->h:Z

    goto :goto_12

    .line 136
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    if-ne v2, v4, :cond_3c

    const/4 v6, 0x0

    .line 137
    iput-boolean v6, v0, Ln3/y/b/a/q0/w/b;->h:Z

    move v13, v5

    goto :goto_15

    :cond_3c
    if-ne v2, v3, :cond_3d

    move v13, v5

    goto :goto_14

    :cond_3d
    const/4 v13, 0x0

    .line 138
    :goto_14
    iput-boolean v13, v0, Ln3/y/b/a/q0/w/b;->h:Z

    goto :goto_12

    :cond_3e
    const/4 v13, 0x0

    :goto_15
    if-eqz v13, :cond_0

    .line 139
    iput v5, v0, Ln3/y/b/a/q0/w/b;->f:I

    .line 140
    iget-object v2, v0, Ln3/y/b/a/q0/w/b;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/4 v6, 0x0

    aput-byte v3, v2, v6

    .line 141
    aput-byte v4, v2, v5

    const/4 v2, 0x2

    .line 142
    iput v2, v0, Ln3/y/b/a/q0/w/b;->g:I

    goto/16 :goto_0

    :cond_3f
    return-void
.end method

.method public e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->a()V

    .line 2
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln3/y/b/a/q0/w/b;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Ln3/y/b/a/q0/w/c0$d;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/w/b;->e:Ln3/y/b/a/q0/p;

    return-void
.end method
