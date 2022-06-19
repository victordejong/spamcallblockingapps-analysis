.class public Ln3/y/b/a/q0/w/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/w/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/q0/w/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/x0/l;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/b/a/q0/w/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Ln3/y/b/a/q0/w/b0;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/w/b0;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ln3/y/b/a/x0/l;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/l;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    .line 3
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0$b;->b:Landroid/util/SparseArray;

    .line 4
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    .line 5
    iput p2, p0, Ln3/y/b/a/q0/w/b0$b;->d:I

    return-void
.end method


# virtual methods
.method public b(Ln3/y/b/a/x0/v;Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V
    .locals 0

    return-void
.end method

.method public d(Ln3/y/b/a/x0/m;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 3
    iget v4, v2, Ln3/y/b/a/q0/w/b0;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    if-eq v4, v3, :cond_2

    .line 4
    iget v4, v2, Ln3/y/b/a/q0/w/b0;->l:I

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v4, Ln3/y/b/a/x0/v;

    .line 6
    iget-object v2, v2, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    .line 7
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/b/a/x0/v;

    .line 8
    iget-wide v7, v2, Ln3/y/b/a/x0/v;->a:J

    .line 9
    invoke-direct {v4, v7, v8}, Ln3/y/b/a/x0/v;-><init>(J)V

    .line 10
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 11
    iget-object v2, v2, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    .line 12
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    iget-object v2, v2, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    .line 14
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ln3/y/b/a/x0/v;

    .line 15
    :goto_1
    invoke-virtual {v1, v3}, Ln3/y/b/a/x0/m;->A(I)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    const/4 v7, 0x3

    .line 17
    invoke-virtual {v1, v7}, Ln3/y/b/a/x0/m;->A(I)V

    .line 18
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v1, v8, v3}, Ln3/y/b/a/x0/m;->b(Ln3/y/b/a/x0/l;I)V

    .line 19
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v8, v7}, Ln3/y/b/a/x0/l;->j(I)V

    .line 20
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    iget-object v9, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v9

    .line 21
    iput v9, v8, Ln3/y/b/a/q0/w/b0;->r:I

    .line 22
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v1, v8, v3}, Ln3/y/b/a/x0/m;->b(Ln3/y/b/a/x0/l;I)V

    .line 23
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ln3/y/b/a/x0/l;->j(I)V

    .line 24
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v8

    .line 25
    invoke-virtual {v1, v8}, Ln3/y/b/a/x0/m;->A(I)V

    .line 26
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 27
    iget v12, v8, Ln3/y/b/a/q0/w/b0;->a:I

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/16 v15, 0x2000

    if-ne v12, v3, :cond_3

    .line 28
    iget-object v8, v8, Ln3/y/b/a/q0/w/b0;->p:Ln3/y/b/a/q0/w/c0;

    if-nez v8, :cond_3

    .line 29
    new-instance v8, Ln3/y/b/a/q0/w/c0$b;

    sget-object v12, Ln3/y/b/a/x0/x;->f:[B

    invoke-direct {v8, v13, v14, v14, v12}, Ln3/y/b/a/q0/w/c0$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    .line 30
    iget-object v12, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 31
    iget-object v14, v12, Ln3/y/b/a/q0/w/b0;->e:Ln3/y/b/a/q0/w/c0$c;

    .line 32
    invoke-interface {v14, v13, v8}, Ln3/y/b/a/q0/w/c0$c;->a(ILn3/y/b/a/q0/w/c0$b;)Ln3/y/b/a/q0/w/c0;

    move-result-object v8

    .line 33
    iput-object v8, v12, Ln3/y/b/a/q0/w/b0;->p:Ln3/y/b/a/q0/w/c0;

    .line 34
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 35
    iget-object v12, v8, Ln3/y/b/a/q0/w/b0;->p:Ln3/y/b/a/q0/w/c0;

    .line 36
    iget-object v8, v8, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    .line 37
    new-instance v14, Ln3/y/b/a/q0/w/c0$d;

    invoke-direct {v14, v2, v13, v15}, Ln3/y/b/a/q0/w/c0$d;-><init>(III)V

    invoke-interface {v12, v4, v8, v14}, Ln3/y/b/a/q0/w/c0;->b(Ln3/y/b/a/x0/v;Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V

    .line 38
    :cond_3
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 39
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 40
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->a()I

    move-result v8

    :goto_2
    if-lez v8, :cond_17

    .line 41
    iget-object v14, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    const/4 v12, 0x5

    invoke-virtual {v1, v14, v12}, Ln3/y/b/a/x0/m;->b(Ln3/y/b/a/x0/l;I)V

    .line 42
    iget-object v14, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    const/16 v6, 0x8

    invoke-virtual {v14, v6}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v6

    .line 43
    iget-object v14, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v14, v7}, Ln3/y/b/a/x0/l;->j(I)V

    .line 44
    iget-object v14, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v14, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v14

    .line 45
    iget-object v10, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v10, v9}, Ln3/y/b/a/x0/l;->j(I)V

    .line 46
    iget-object v10, v0, Ln3/y/b/a/q0/w/b0$b;->a:Ln3/y/b/a/x0/l;

    invoke-virtual {v10, v11}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v10

    .line 47
    iget v11, v1, Ln3/y/b/a/x0/m;->b:I

    add-int v15, v10, v11

    const/4 v3, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 48
    :goto_3
    iget v5, v1, Ln3/y/b/a/x0/m;->b:I

    if-ge v5, v15, :cond_f

    .line 49
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v5

    .line 50
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v16

    .line 51
    iget v9, v1, Ln3/y/b/a/x0/m;->b:I

    add-int v9, v9, v16

    const/16 v16, 0xac

    const/16 v19, 0x87

    const/16 v20, 0x81

    const/16 v7, 0x59

    if-ne v5, v12, :cond_7

    .line 52
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v21

    const-wide/32 v23, 0x41432d33

    cmp-long v5, v21, v23

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    const-wide/32 v23, 0x45414333

    cmp-long v5, v21, v23

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    const-wide/32 v19, 0x41432d34

    cmp-long v5, v21, v19

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    const-wide/32 v19, 0x48455643

    cmp-long v5, v21, v19

    if-nez v5, :cond_b

    const/16 v3, 0x24

    goto :goto_7

    :cond_7
    const/16 v12, 0x6a

    if-ne v5, v12, :cond_8

    :goto_4
    move-object/from16 v19, v4

    move/from16 v22, v14

    move/from16 v3, v20

    const/4 v12, 0x4

    move/from16 v20, v2

    goto/16 :goto_b

    :cond_8
    const/16 v12, 0x7a

    if-ne v5, v12, :cond_9

    :goto_5
    move/from16 v20, v2

    move/from16 v22, v14

    move/from16 v3, v19

    const/4 v12, 0x4

    move-object/from16 v19, v4

    goto/16 :goto_b

    :cond_9
    const/16 v12, 0x7f

    if-ne v5, v12, :cond_a

    .line 53
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v5

    if-ne v5, v13, :cond_b

    :goto_6
    move/from16 v20, v2

    move-object/from16 v19, v4

    move/from16 v22, v14

    const/4 v12, 0x4

    goto/16 :goto_a

    :cond_a
    const/16 v12, 0x7b

    if-ne v5, v12, :cond_c

    const/16 v3, 0x8a

    :cond_b
    :goto_7
    move/from16 v20, v2

    move-object/from16 v19, v4

    move/from16 v22, v14

    const/4 v12, 0x4

    goto :goto_9

    :cond_c
    const/16 v12, 0xa

    if-ne v5, v12, :cond_d

    const/4 v12, 0x3

    .line 54
    invoke-virtual {v1, v12}, Ln3/y/b/a/x0/m;->m(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    goto :goto_7

    :cond_d
    const/4 v12, 0x3

    if-ne v5, v7, :cond_b

    .line 55
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :goto_8
    iget v5, v1, Ln3/y/b/a/x0/m;->b:I

    if-ge v5, v9, :cond_e

    .line 57
    invoke-virtual {v1, v12}, Ln3/y/b/a/x0/m;->m(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/x0/m;->o()I

    move-result v7

    const/4 v12, 0x4

    new-array v13, v12, [B

    move-object/from16 v19, v4

    .line 59
    iget-object v4, v1, Ln3/y/b/a/x0/m;->a:[B

    move/from16 v20, v2

    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    move/from16 v22, v14

    const/4 v14, 0x0

    invoke-static {v4, v2, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v2, v12

    iput v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 61
    new-instance v2, Ln3/y/b/a/q0/w/c0$a;

    invoke-direct {v2, v5, v7, v13}, Ln3/y/b/a/q0/w/c0$a;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v19

    move/from16 v2, v20

    move/from16 v14, v22

    const/16 v7, 0x59

    const/4 v12, 0x3

    const/16 v13, 0x15

    goto :goto_8

    :cond_e
    move/from16 v20, v2

    move-object/from16 v19, v4

    move/from16 v22, v14

    const/4 v12, 0x4

    move-object/from16 v18, v3

    const/16 v3, 0x59

    goto :goto_b

    :goto_9
    move/from16 v16, v3

    :goto_a
    move/from16 v3, v16

    .line 62
    :goto_b
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    sub-int/2addr v9, v2

    .line 63
    invoke-virtual {v1, v9}, Ln3/y/b/a/x0/m;->A(I)V

    move v9, v12

    move-object/from16 v4, v19

    move/from16 v2, v20

    move/from16 v14, v22

    const/4 v7, 0x3

    const/4 v12, 0x5

    const/16 v13, 0x15

    goto/16 :goto_3

    :cond_f
    move/from16 v20, v2

    move-object/from16 v19, v4

    move v12, v9

    move/from16 v22, v14

    .line 64
    invoke-virtual {v1, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 65
    new-instance v2, Ln3/y/b/a/q0/w/c0$b;

    iget-object v4, v1, Ln3/y/b/a/x0/m;->a:[B

    .line 66
    invoke-static {v4, v11, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    invoke-direct {v2, v3, v5, v7, v4}, Ln3/y/b/a/q0/w/c0$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    const/4 v4, 0x6

    if-ne v6, v4, :cond_10

    move v6, v3

    :cond_10
    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v8, v10

    .line 67
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 68
    iget v4, v3, Ln3/y/b/a/q0/w/b0;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    move v4, v6

    goto :goto_c

    :cond_11
    move/from16 v4, v22

    .line 69
    :goto_c
    iget-object v3, v3, Ln3/y/b/a/q0/w/b0;->g:Landroid/util/SparseBooleanArray;

    .line 70
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v7, 0x15

    goto :goto_f

    .line 71
    :cond_12
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 72
    iget v7, v3, Ln3/y/b/a/q0/w/b0;->a:I

    if-ne v7, v5, :cond_13

    const/16 v7, 0x15

    if-ne v6, v7, :cond_14

    .line 73
    iget-object v2, v3, Ln3/y/b/a/q0/w/b0;->p:Ln3/y/b/a/q0/w/c0;

    goto :goto_d

    :cond_13
    const/16 v7, 0x15

    .line 74
    :cond_14
    iget-object v3, v3, Ln3/y/b/a/q0/w/b0;->e:Ln3/y/b/a/q0/w/c0$c;

    .line 75
    invoke-interface {v3, v6, v2}, Ln3/y/b/a/q0/w/c0$c;->a(ILn3/y/b/a/q0/w/c0$b;)Ln3/y/b/a/q0/w/c0;

    move-result-object v2

    .line 76
    :goto_d
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 77
    iget v3, v3, Ln3/y/b/a/q0/w/b0;->a:I

    if-ne v3, v5, :cond_15

    .line 78
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    const/16 v5, 0x2000

    .line 79
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    move/from16 v5, v22

    if-ge v5, v3, :cond_16

    goto :goto_e

    :cond_15
    move/from16 v5, v22

    .line 80
    :goto_e
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_16
    :goto_f
    move v13, v7

    move v9, v12

    move-object/from16 v4, v19

    move/from16 v2, v20

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/16 v10, 0xd

    const/16 v11, 0xc

    const/16 v15, 0x2000

    goto/16 :goto_2

    :cond_17
    move/from16 v20, v2

    move-object/from16 v19, v4

    .line 82
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v1, :cond_1a

    .line 83
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 84
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0$b;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 85
    iget-object v4, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 86
    iget-object v4, v4, Ln3/y/b/a/q0/w/b0;->g:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    .line 87
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 88
    iget-object v4, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 89
    iget-object v4, v4, Ln3/y/b/a/q0/w/b0;->h:Landroid/util/SparseBooleanArray;

    .line 90
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 91
    iget-object v4, v0, Ln3/y/b/a/q0/w/b0$b;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/q0/w/c0;

    if-eqz v4, :cond_19

    .line 92
    iget-object v5, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 93
    iget-object v6, v5, Ln3/y/b/a/q0/w/b0;->p:Ln3/y/b/a/q0/w/c0;

    if-eq v4, v6, :cond_18

    .line 94
    iget-object v5, v5, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    .line 95
    new-instance v6, Ln3/y/b/a/q0/w/c0$d;

    move/from16 v7, v20

    const/16 v8, 0x2000

    invoke-direct {v6, v7, v2, v8}, Ln3/y/b/a/q0/w/c0$d;-><init>(III)V

    move-object/from16 v2, v19

    invoke-interface {v4, v2, v5, v6}, Ln3/y/b/a/q0/w/c0;->b(Ln3/y/b/a/x0/v;Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V

    goto :goto_11

    :cond_18
    move-object/from16 v2, v19

    move/from16 v7, v20

    const/16 v8, 0x2000

    .line 96
    :goto_11
    iget-object v5, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 97
    iget-object v5, v5, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    :cond_19
    move-object/from16 v2, v19

    move/from16 v7, v20

    const/16 v8, 0x2000

    :goto_12
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v19, v2

    move/from16 v20, v7

    goto :goto_10

    .line 99
    :cond_1a
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 100
    iget v2, v1, Ln3/y/b/a/q0/w/b0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 101
    iget-boolean v2, v1, Ln3/y/b/a/q0/w/b0;->m:Z

    if-nez v2, :cond_1d

    .line 102
    iget-object v1, v1, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    .line 103
    invoke-interface {v1}, Ln3/y/b/a/q0/h;->g()V

    .line 104
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    const/4 v2, 0x0

    .line 105
    iput v2, v1, Ln3/y/b/a/q0/w/b0;->l:I

    const/4 v3, 0x1

    .line 106
    iput-boolean v3, v1, Ln3/y/b/a/q0/w/b0;->m:Z

    goto :goto_14

    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 107
    iget-object v1, v1, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    .line 108
    iget v4, v0, Ln3/y/b/a/q0/w/b0$b;->d:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 109
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 110
    iget v4, v1, Ln3/y/b/a/q0/w/b0;->a:I

    if-ne v4, v3, :cond_1c

    move v5, v2

    goto :goto_13

    .line 111
    :cond_1c
    iget v2, v1, Ln3/y/b/a/q0/w/b0;->l:I

    const/4 v4, -0x1

    add-int/lit8 v5, v2, -0x1

    .line 112
    :goto_13
    iput v5, v1, Ln3/y/b/a/q0/w/b0;->l:I

    if-nez v5, :cond_1d

    .line 113
    iget-object v1, v1, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    .line 114
    invoke-interface {v1}, Ln3/y/b/a/q0/h;->g()V

    .line 115
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0$b;->e:Ln3/y/b/a/q0/w/b0;

    .line 116
    iput-boolean v3, v1, Ln3/y/b/a/q0/w/b0;->m:Z

    :cond_1d
    :goto_14
    return-void
.end method
