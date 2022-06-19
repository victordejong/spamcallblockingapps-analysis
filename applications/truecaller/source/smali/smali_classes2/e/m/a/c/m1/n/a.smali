.class public final Le/m/a/c/m1/n/a;
.super Le/m/a/c/m1/c;
.source "SourceFile"


# instance fields
.field public final n:Le/m/a/c/m1/n/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/m1/c;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 3
    array-length v1, p1

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 4
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 5
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v2

    .line 6
    new-instance v1, Le/m/a/c/m1/n/b;

    invoke-direct {v1, v0, p1}, Le/m/a/c/m1/n/b;-><init>(II)V

    iput-object v1, p0, Le/m/a/c/m1/n/a;->n:Le/m/a/c/m1/n/b;

    return-void
.end method


# virtual methods
.method public j([BIZ)Le/m/a/c/m1/e;
    .locals 34

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget-object v2, v0, Le/m/a/c/m1/n/a;->n:Le/m/a/c/m1/n/b;

    .line 2
    iget-object v2, v2, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    .line 3
    iget-object v3, v2, Le/m/a/c/m1/n/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4
    iget-object v3, v2, Le/m/a/c/m1/n/b$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 5
    iget-object v3, v2, Le/m/a/c/m1/n/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 6
    iget-object v3, v2, Le/m/a/c/m1/n/b$h;->f:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 7
    iget-object v3, v2, Le/m/a/c/m1/n/b$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 8
    iput-object v1, v2, Le/m/a/c/m1/n/b$h;->h:Le/m/a/c/m1/n/b$b;

    .line 9
    iput-object v1, v2, Le/m/a/c/m1/n/b$h;->i:Le/m/a/c/m1/n/b$d;

    .line 10
    :cond_0
    new-instance v2, Le/m/a/c/m1/n/c;

    iget-object v3, v0, Le/m/a/c/m1/n/a;->n:Le/m/a/c/m1/n/b;

    .line 11
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Le/m/a/c/q1/s;

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v4, v5, v6}, Le/m/a/c/q1/s;-><init>([BI)V

    .line 13
    :goto_0
    invoke-virtual {v4}, Le/m/a/c/q1/s;->b()I

    move-result v5

    const/16 v6, 0x30

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v5, v6, :cond_f

    const/16 v5, 0x8

    .line 14
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v6

    const/16 v11, 0xf

    if-ne v6, v11, :cond_f

    .line 15
    iget-object v6, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    .line 16
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v11

    const/16 v12, 0x10

    .line 17
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v13

    .line 18
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v14

    .line 19
    iget v15, v4, Le/m/a/c/q1/s;->c:I

    if-nez v15, :cond_1

    move v15, v9

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    invoke-static {v15}, Ln3/g0/y;->x(Z)V

    .line 20
    iget v15, v4, Le/m/a/c/q1/s;->b:I

    add-int/2addr v15, v14

    mul-int/lit8 v1, v14, 0x8

    .line 21
    invoke-virtual {v4}, Le/m/a/c/q1/s;->b()I

    move-result v10

    if-le v1, v10, :cond_2

    .line 22
    invoke-virtual {v4}, Le/m/a/c/q1/s;->b()I

    move-result v1

    invoke-virtual {v4, v1}, Le/m/a/c/q1/s;->l(I)V

    :goto_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_9

    .line 23
    :pswitch_0
    iget v5, v6, Le/m/a/c/m1/n/b$h;->a:I

    if-ne v13, v5, :cond_c

    .line 24
    invoke-virtual {v4, v1}, Le/m/a/c/q1/s;->l(I)V

    .line 25
    invoke-virtual {v4}, Le/m/a/c/q1/s;->e()Z

    move-result v1

    .line 26
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->l(I)V

    .line 27
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v17

    .line 28
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v18

    if-eqz v1, :cond_3

    .line 29
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    .line 30
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v5

    .line 31
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v7

    .line 32
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v8

    move/from16 v19, v1

    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    goto :goto_3

    :cond_3
    move/from16 v20, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v21, 0x0

    .line 33
    :goto_3
    new-instance v1, Le/m/a/c/m1/n/b$b;

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v22}, Le/m/a/c/m1/n/b$b;-><init>(IIIIII)V

    .line 34
    iput-object v1, v6, Le/m/a/c/m1/n/b$h;->h:Le/m/a/c/m1/n/b$b;

    goto/16 :goto_9

    .line 35
    :pswitch_1
    iget v1, v6, Le/m/a/c/m1/n/b$h;->a:I

    if-ne v13, v1, :cond_4

    .line 36
    invoke-static {v4}, Le/m/a/c/m1/n/b;->g(Le/m/a/c/q1/s;)Le/m/a/c/m1/n/b$c;

    move-result-object v1

    .line 37
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->e:Landroid/util/SparseArray;

    iget v6, v1, Le/m/a/c/m1/n/b$c;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 38
    :cond_4
    iget v1, v6, Le/m/a/c/m1/n/b$h;->b:I

    if-ne v13, v1, :cond_c

    .line 39
    invoke-static {v4}, Le/m/a/c/m1/n/b;->g(Le/m/a/c/q1/s;)Le/m/a/c/m1/n/b$c;

    move-result-object v1

    .line 40
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->g:Landroid/util/SparseArray;

    iget v6, v1, Le/m/a/c/m1/n/b$c;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 41
    :pswitch_2
    iget v1, v6, Le/m/a/c/m1/n/b$h;->a:I

    if-ne v13, v1, :cond_5

    .line 42
    invoke-static {v4, v14}, Le/m/a/c/m1/n/b;->f(Le/m/a/c/q1/s;I)Le/m/a/c/m1/n/b$a;

    move-result-object v1

    .line 43
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->d:Landroid/util/SparseArray;

    iget v6, v1, Le/m/a/c/m1/n/b$a;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 44
    :cond_5
    iget v1, v6, Le/m/a/c/m1/n/b$h;->b:I

    if-ne v13, v1, :cond_c

    .line 45
    invoke-static {v4, v14}, Le/m/a/c/m1/n/b;->f(Le/m/a/c/q1/s;I)Le/m/a/c/m1/n/b$a;

    move-result-object v1

    .line 46
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->f:Landroid/util/SparseArray;

    iget v6, v1, Le/m/a/c/m1/n/b$a;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 47
    :pswitch_3
    iget-object v10, v6, Le/m/a/c/m1/n/b$h;->i:Le/m/a/c/m1/n/b$d;

    .line 48
    iget v11, v6, Le/m/a/c/m1/n/b$h;->a:I

    if-ne v13, v11, :cond_c

    if-eqz v10, :cond_c

    .line 49
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v11

    .line 50
    invoke-virtual {v4, v1}, Le/m/a/c/q1/s;->l(I)V

    .line 51
    invoke-virtual {v4}, Le/m/a/c/q1/s;->e()Z

    move-result v18

    .line 52
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->l(I)V

    .line 53
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v19

    .line 54
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v20

    .line 55
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v21

    .line 56
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v22

    .line 57
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->l(I)V

    .line 58
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v23

    .line 59
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v24

    .line 60
    invoke-virtual {v4, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v25

    .line 61
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v26

    .line 62
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->l(I)V

    add-int/lit8 v14, v14, -0xa

    .line 63
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    :goto_4
    if-lez v14, :cond_8

    .line 64
    invoke-virtual {v4, v12}, Le/m/a/c/q1/s;->f(I)I

    move-result v13

    .line 65
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v12

    .line 66
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v29

    const/16 v5, 0xc

    .line 67
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v30

    .line 68
    invoke-virtual {v4, v1}, Le/m/a/c/q1/s;->l(I)V

    .line 69
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v31

    add-int/lit8 v14, v14, -0x6

    if-eq v12, v9, :cond_7

    if-ne v12, v8, :cond_6

    goto :goto_5

    :cond_6
    const/16 v32, 0x0

    const/16 v33, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    const/16 v5, 0x8

    .line 70
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v16

    .line 71
    invoke-virtual {v4, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v17

    add-int/lit8 v14, v14, -0x2

    move/from16 v32, v16

    move/from16 v33, v17

    .line 72
    :goto_6
    new-instance v5, Le/m/a/c/m1/n/b$g;

    move-object/from16 v27, v5

    move/from16 v28, v12

    invoke-direct/range {v27 .. v33}, Le/m/a/c/m1/n/b$g;-><init>(IIIIII)V

    invoke-virtual {v7, v13, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8

    const/16 v12, 0x10

    goto :goto_4

    .line 73
    :cond_8
    new-instance v1, Le/m/a/c/m1/n/b$f;

    move-object/from16 v16, v1

    move/from16 v17, v11

    move-object/from16 v27, v7

    invoke-direct/range {v16 .. v27}, Le/m/a/c/m1/n/b$f;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    .line 74
    iget v5, v10, Le/m/a/c/m1/n/b$d;->b:I

    if-nez v5, :cond_9

    .line 75
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/m/a/c/m1/n/b$f;

    if-eqz v5, :cond_9

    .line 76
    iget-object v5, v5, Le/m/a/c/m1/n/b$f;->j:Landroid/util/SparseArray;

    const/4 v7, 0x0

    .line 77
    :goto_7
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_9

    .line 78
    iget-object v8, v1, Le/m/a/c/m1/n/b$f;->j:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 79
    :cond_9
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->c:Landroid/util/SparseArray;

    iget v6, v1, Le/m/a/c/m1/n/b$f;->a:I

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 80
    :pswitch_4
    iget v5, v6, Le/m/a/c/m1/n/b$h;->a:I

    if-ne v13, v5, :cond_c

    .line 81
    iget-object v5, v6, Le/m/a/c/m1/n/b$h;->i:Le/m/a/c/m1/n/b$d;

    const/16 v7, 0x8

    .line 82
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v10

    .line 83
    invoke-virtual {v4, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    .line 84
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v11

    .line 85
    invoke-virtual {v4, v8}, Le/m/a/c/q1/s;->l(I)V

    add-int/lit8 v14, v14, -0x2

    .line 86
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    :goto_8
    if-lez v14, :cond_a

    .line 87
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v12

    .line 88
    invoke-virtual {v4, v7}, Le/m/a/c/q1/s;->l(I)V

    const/16 v13, 0x10

    .line 89
    invoke-virtual {v4, v13}, Le/m/a/c/q1/s;->f(I)I

    move-result v7

    .line 90
    invoke-virtual {v4, v13}, Le/m/a/c/q1/s;->f(I)I

    move-result v9

    add-int/lit8 v14, v14, -0x6

    .line 91
    new-instance v13, Le/m/a/c/m1/n/b$e;

    invoke-direct {v13, v7, v9}, Le/m/a/c/m1/n/b$e;-><init>(II)V

    invoke-virtual {v8, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v7, 0x8

    const/4 v9, 0x1

    goto :goto_8

    .line 92
    :cond_a
    new-instance v7, Le/m/a/c/m1/n/b$d;

    invoke-direct {v7, v10, v1, v11, v8}, Le/m/a/c/m1/n/b$d;-><init>(IIILandroid/util/SparseArray;)V

    if-eqz v11, :cond_b

    .line 93
    iput-object v7, v6, Le/m/a/c/m1/n/b$h;->i:Le/m/a/c/m1/n/b$d;

    .line 94
    iget-object v1, v6, Le/m/a/c/m1/n/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 95
    iget-object v1, v6, Le/m/a/c/m1/n/b$h;->d:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 96
    iget-object v1, v6, Le/m/a/c/m1/n/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_9

    :cond_b
    if-eqz v5, :cond_c

    .line 97
    iget v5, v5, Le/m/a/c/m1/n/b$d;->a:I

    if-eq v5, v1, :cond_c

    .line 98
    iput-object v7, v6, Le/m/a/c/m1/n/b$h;->i:Le/m/a/c/m1/n/b$d;

    .line 99
    :cond_c
    :goto_9
    iget v1, v4, Le/m/a/c/q1/s;->c:I

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Ln3/g0/y;->x(Z)V

    .line 100
    iget v1, v4, Le/m/a/c/q1/s;->b:I

    sub-int/2addr v15, v1

    .line 101
    iget v1, v4, Le/m/a/c/q1/s;->c:I

    if-nez v1, :cond_e

    const/4 v9, 0x1

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    :goto_b
    invoke-static {v9}, Ln3/g0/y;->x(Z)V

    .line 102
    iget v1, v4, Le/m/a/c/q1/s;->b:I

    add-int/2addr v1, v15

    iput v1, v4, Le/m/a/c/q1/s;->b:I

    .line 103
    invoke-virtual {v4}, Le/m/a/c/q1/s;->a()V

    goto/16 :goto_2

    .line 104
    :cond_f
    iget-object v1, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    iget-object v4, v1, Le/m/a/c/m1/n/b$h;->i:Le/m/a/c/m1/n/b$d;

    if-nez v4, :cond_10

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v26, v2

    goto/16 :goto_15

    .line 106
    :cond_10
    iget-object v1, v1, Le/m/a/c/m1/n/b$h;->h:Le/m/a/c/m1/n/b$b;

    if-eqz v1, :cond_11

    goto :goto_c

    :cond_11
    iget-object v1, v3, Le/m/a/c/m1/n/b;->d:Le/m/a/c/m1/n/b$b;

    .line 107
    :goto_c
    iget-object v5, v3, Le/m/a/c/m1/n/b;->g:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_12

    iget v6, v1, Le/m/a/c/m1/n/b$b;->a:I

    const/4 v9, 0x1

    add-int/2addr v6, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v6, v5, :cond_13

    iget v5, v1, Le/m/a/c/m1/n/b$b;->b:I

    add-int/2addr v5, v9

    iget-object v6, v3, Le/m/a/c/m1/n/b;->g:Landroid/graphics/Bitmap;

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_14

    goto :goto_d

    :cond_12
    const/4 v9, 0x1

    .line 109
    :cond_13
    :goto_d
    iget v5, v1, Le/m/a/c/m1/n/b$b;->a:I

    add-int/2addr v5, v9

    iget v6, v1, Le/m/a/c/m1/n/b$b;->b:I

    add-int/2addr v6, v9

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Le/m/a/c/m1/n/b;->g:Landroid/graphics/Bitmap;

    .line 110
    iget-object v6, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v4, v4, Le/m/a/c/m1/n/b$d;->c:Landroid/util/SparseArray;

    const/4 v6, 0x0

    .line 113
    :goto_e
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_1f

    .line 114
    iget-object v9, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    .line 115
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/m/a/c/m1/n/b$e;

    .line 116
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 117
    iget-object v11, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    iget-object v11, v11, Le/m/a/c/m1/n/b$h;->c:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/c/m1/n/b$f;

    .line 118
    iget v11, v9, Le/m/a/c/m1/n/b$e;->a:I

    iget v12, v1, Le/m/a/c/m1/n/b$b;->c:I

    add-int/2addr v11, v12

    .line 119
    iget v9, v9, Le/m/a/c/m1/n/b$e;->b:I

    iget v12, v1, Le/m/a/c/m1/n/b$b;->e:I

    add-int/2addr v9, v12

    .line 120
    iget v12, v10, Le/m/a/c/m1/n/b$f;->c:I

    add-int/2addr v12, v11

    iget v13, v1, Le/m/a/c/m1/n/b$b;->d:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 121
    iget v13, v10, Le/m/a/c/m1/n/b$f;->d:I

    add-int/2addr v13, v9

    iget v14, v1, Le/m/a/c/m1/n/b$b;->f:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 122
    iget-object v14, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v14, v11, v9, v12, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 123
    iget-object v12, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    iget-object v12, v12, Le/m/a/c/m1/n/b$h;->d:Landroid/util/SparseArray;

    iget v13, v10, Le/m/a/c/m1/n/b$f;->f:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/m/a/c/m1/n/b$a;

    if-nez v12, :cond_15

    .line 124
    iget-object v12, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    iget-object v12, v12, Le/m/a/c/m1/n/b$h;->f:Landroid/util/SparseArray;

    iget v13, v10, Le/m/a/c/m1/n/b$f;->f:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Le/m/a/c/m1/n/b$a;

    if-nez v12, :cond_15

    .line 125
    iget-object v12, v3, Le/m/a/c/m1/n/b;->e:Le/m/a/c/m1/n/b$a;

    .line 126
    :cond_15
    iget-object v13, v10, Le/m/a/c/m1/n/b$f;->j:Landroid/util/SparseArray;

    const/4 v14, 0x0

    .line 127
    :goto_f
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v14, v15, :cond_1b

    .line 128
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    .line 129
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Le/m/a/c/m1/n/b$g;

    .line 130
    iget-object v7, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    iget-object v7, v7, Le/m/a/c/m1/n/b$h;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/c/m1/n/b$c;

    if-nez v7, :cond_16

    .line 131
    iget-object v7, v3, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    iget-object v7, v7, Le/m/a/c/m1/n/b$h;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/c/m1/n/b$c;

    :cond_16
    if-eqz v7, :cond_1a

    .line 132
    iget-boolean v15, v7, Le/m/a/c/m1/n/b$c;->b:Z

    if-eqz v15, :cond_17

    const/4 v15, 0x0

    goto :goto_10

    :cond_17
    iget-object v15, v3, Le/m/a/c/m1/n/b;->a:Landroid/graphics/Paint;

    .line 133
    :goto_10
    iget v0, v10, Le/m/a/c/m1/n/b$f;->e:I

    move-object/from16 v24, v4

    iget v4, v8, Le/m/a/c/m1/n/b$g;->a:I

    add-int/2addr v4, v11

    iget v8, v8, Le/m/a/c/m1/n/b$g;->b:I

    add-int/2addr v8, v9

    move-object/from16 v25, v13

    iget-object v13, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    move-object/from16 v26, v2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_18

    .line 134
    iget-object v2, v12, Le/m/a/c/m1/n/b$a;->d:[I

    goto :goto_11

    :cond_18
    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    .line 135
    iget-object v2, v12, Le/m/a/c/m1/n/b$a;->c:[I

    goto :goto_11

    .line 136
    :cond_19
    iget-object v2, v12, Le/m/a/c/m1/n/b$a;->b:[I

    :goto_11
    move/from16 v27, v6

    .line 137
    iget-object v6, v7, Le/m/a/c/m1/n/b$c;->c:[B

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move/from16 v19, v0

    move/from16 v20, v4

    move/from16 v21, v8

    move-object/from16 v22, v15

    move-object/from16 v23, v13

    invoke-static/range {v17 .. v23}, Le/m/a/c/m1/n/b;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 138
    iget-object v6, v7, Le/m/a/c/m1/n/b$c;->d:[B

    const/4 v7, 0x1

    add-int/lit8 v21, v8, 0x1

    move-object/from16 v17, v6

    invoke-static/range {v17 .. v23}, Le/m/a/c/m1/n/b;->e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_12

    :cond_1a
    move-object/from16 v26, v2

    move-object/from16 v24, v4

    move/from16 v27, v6

    move-object/from16 v25, v13

    const/4 v7, 0x1

    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v24

    move-object/from16 v13, v25

    move-object/from16 v2, v26

    move/from16 v6, v27

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_f

    :cond_1b
    move-object/from16 v26, v2

    move-object/from16 v24, v4

    move/from16 v27, v6

    const/4 v7, 0x1

    .line 139
    iget-boolean v0, v10, Le/m/a/c/m1/n/b$f;->b:Z

    if-eqz v0, :cond_1e

    .line 140
    iget v0, v10, Le/m/a/c/m1/n/b$f;->e:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c

    .line 141
    iget-object v0, v12, Le/m/a/c/m1/n/b$a;->d:[I

    iget v4, v10, Le/m/a/c/m1/n/b$f;->g:I

    aget v0, v0, v4

    const/4 v4, 0x2

    goto :goto_13

    :cond_1c
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1d

    .line 142
    iget-object v0, v12, Le/m/a/c/m1/n/b$a;->c:[I

    iget v6, v10, Le/m/a/c/m1/n/b$f;->h:I

    aget v0, v0, v6

    goto :goto_13

    .line 143
    :cond_1d
    iget-object v0, v12, Le/m/a/c/m1/n/b$a;->b:[I

    iget v6, v10, Le/m/a/c/m1/n/b$f;->i:I

    aget v0, v0, v6

    .line 144
    :goto_13
    iget-object v6, v3, Le/m/a/c/m1/n/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    int-to-float v6, v11

    int-to-float v8, v9

    iget v12, v10, Le/m/a/c/m1/n/b$f;->c:I

    add-int/2addr v12, v11

    int-to-float v12, v12

    iget v13, v10, Le/m/a/c/m1/n/b$f;->d:I

    add-int/2addr v13, v9

    int-to-float v13, v13

    iget-object v14, v3, Le/m/a/c/m1/n/b;->b:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move/from16 v17, v6

    move/from16 v18, v8

    move/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_14

    :cond_1e
    const/4 v2, 0x3

    const/4 v4, 0x2

    .line 146
    :goto_14
    iget-object v0, v3, Le/m/a/c/m1/n/b;->g:Landroid/graphics/Bitmap;

    iget v6, v10, Le/m/a/c/m1/n/b$f;->c:I

    iget v8, v10, Le/m/a/c/m1/n/b$f;->d:I

    invoke-static {v0, v11, v9, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 147
    new-instance v0, Le/m/a/c/m1/b;

    int-to-float v6, v11

    iget v8, v1, Le/m/a/c/m1/n/b$b;->a:I

    int-to-float v8, v8

    div-float v18, v6, v8

    const/16 v19, 0x0

    int-to-float v6, v9

    iget v9, v1, Le/m/a/c/m1/n/b$b;->b:I

    int-to-float v9, v9

    div-float v20, v6, v9

    const/16 v21, 0x0

    iget v6, v10, Le/m/a/c/m1/n/b$f;->c:I

    int-to-float v6, v6

    div-float v22, v6, v8

    iget v6, v10, Le/m/a/c/m1/n/b$f;->d:I

    int-to-float v6, v6

    div-float v23, v6, v9

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v23}, Le/m/a/c/m1/b;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    iget-object v0, v3, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v27, 0x1

    move-object/from16 v0, p0

    move v7, v2

    move v8, v4

    move-object/from16 v4, v24

    move-object/from16 v2, v26

    goto/16 :goto_e

    :cond_1f
    move-object/from16 v26, v2

    .line 150
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_15
    move-object/from16 v0, v26

    .line 151
    invoke-direct {v0, v1}, Le/m/a/c/m1/n/c;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
