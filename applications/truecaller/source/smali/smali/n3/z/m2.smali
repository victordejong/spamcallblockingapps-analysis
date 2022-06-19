.class public abstract Ln3/z/m2;
.super Ln3/z/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z/m2$b;,
        Ln3/z/m2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/v<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/z/v$d;->a:Ln3/z/v$d;

    invoke-direct {p0, v0}, Ln3/z/v;-><init>(Ln3/z/v$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "item"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get key by item in positionalDataSource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Ln3/z/v$e;Ls1/w/d;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/v$e<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ln3/z/v$a<",
            "TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    iget-object v4, v0, Ln3/z/v$e;->a:Ln3/z/t0;

    .line 2
    sget-object v5, Ln3/z/t0;->a:Ln3/z/t0;

    const-string v6, "frame"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v4, v5, :cond_8

    .line 3
    iget v4, v0, Ln3/z/v$e;->c:I

    .line 4
    iget-object v5, v0, Ln3/z/v$e;->b:Ljava/lang/Object;

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    .line 5
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 6
    iget-boolean v10, v0, Ln3/z/v$e;->d:Z

    if-eqz v10, :cond_0

    .line 7
    iget v10, v0, Ln3/z/v$e;->e:I

    .line 8
    div-int/2addr v4, v10

    const/4 v10, 0x2

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 9
    iget v10, v0, Ln3/z/v$e;->e:I

    mul-int/2addr v4, v10

    .line 10
    div-int/lit8 v11, v4, 0x2

    sub-int/2addr v5, v11

    .line 11
    div-int/2addr v5, v10

    mul-int/2addr v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 12
    :cond_0
    div-int/lit8 v10, v4, 0x2

    sub-int/2addr v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v9

    .line 13
    :goto_0
    new-instance v10, Ln3/z/m2$b;

    .line 14
    iget v11, v0, Ln3/z/v$e;->e:I

    .line 15
    iget-boolean v0, v0, Ln3/z/v$e;->d:Z

    .line 16
    invoke-direct {v10, v5, v4, v11, v0}, Ln3/z/m2$b;-><init>(IIIZ)V

    .line 17
    new-instance v0, Lq3/a/o;

    invoke-static/range {p2 .. p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v4

    invoke-direct {v0, v4, v8}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 18
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 19
    new-instance v4, Ln3/z/n2;

    invoke-direct {v4, v0, v1, v10}, Ln3/z/n2;-><init>(Lq3/a/n;Ln3/z/m2;Ln3/z/m2$b;)V

    .line 20
    move-object v5, v1

    check-cast v5, Ln3/c0/g0/a;

    const-string v8, "params"

    .line 21
    invoke-virtual {v5}, Ln3/c0/g0/a;->h()V

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 23
    iget-object v12, v5, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v12}, Ln3/c0/q;->beginTransaction()V

    .line 24
    :try_start_0
    invoke-virtual {v5}, Ln3/c0/g0/a;->f()I

    move-result v12

    if-eqz v12, :cond_2

    .line 25
    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget v11, v10, Ln3/z/m2$b;->a:I

    .line 27
    iget v13, v10, Ln3/z/m2$b;->b:I

    .line 28
    iget v14, v10, Ln3/z/m2$b;->c:I

    .line 29
    div-int/2addr v11, v14

    mul-int/2addr v11, v14

    sub-int v13, v12, v13

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    .line 30
    div-int/2addr v13, v14

    mul-int/2addr v13, v14

    .line 31
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 32
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 33
    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v8, v12, v9

    .line 34
    iget v10, v10, Ln3/z/m2$b;->b:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 35
    invoke-virtual {v5, v9, v8}, Ln3/c0/g0/a;->g(II)Ln3/c0/y;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v10, v5, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v10, v8}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object v7

    .line 37
    invoke-virtual {v5, v7}, Ln3/c0/g0/a;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v11

    .line 38
    iget-object v10, v5, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v10}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v8, v7

    :goto_1
    if-eqz v7, :cond_3

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 40
    :cond_3
    iget-object v5, v5, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v5}, Ln3/c0/q;->endTransaction()V

    if-eqz v8, :cond_4

    .line 41
    invoke-virtual {v8}, Ln3/c0/y;->l()V

    .line 42
    :cond_4
    invoke-virtual {v4, v11, v9, v12}, Ln3/z/n2;->a(Ljava/util/List;II)V

    .line 43
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    .line 44
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :catchall_1
    move-exception v0

    move-object v8, v7

    :goto_2
    if-eqz v7, :cond_6

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_6
    iget-object v2, v5, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    if-eqz v8, :cond_7

    .line 47
    invoke-virtual {v8}, Ln3/c0/y;->l()V

    .line 48
    :cond_7
    throw v0

    .line 49
    :cond_8
    iget-object v4, v0, Ln3/z/v$e;->b:Ljava/lang/Object;

    .line 50
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 51
    iget v5, v0, Ln3/z/v$e;->e:I

    .line 52
    iget-object v0, v0, Ln3/z/v$e;->a:Ln3/z/t0;

    .line 53
    sget-object v9, Ln3/z/t0;->b:Ln3/z/t0;

    if-ne v0, v9, :cond_9

    .line 54
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 55
    :cond_9
    new-instance v0, Lq3/a/o;

    invoke-static/range {p2 .. p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v9

    invoke-direct {v0, v9, v8}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 56
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 57
    move-object v8, v1

    check-cast v8, Ln3/c0/g0/a;

    .line 58
    invoke-virtual {v8, v4, v5}, Ln3/c0/g0/a;->g(II)Ln3/c0/y;

    move-result-object v5

    .line 59
    iget-boolean v9, v8, Ln3/c0/g0/a;->i:Z

    if-eqz v9, :cond_c

    .line 60
    iget-object v9, v8, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v9}, Ln3/c0/q;->beginTransaction()V

    .line 61
    :try_start_2
    iget-object v9, v8, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v9, v5}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 62
    :try_start_3
    invoke-virtual {v8, v9}, Ln3/c0/g0/a;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 63
    iget-object v11, v8, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v11}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v9, :cond_a

    .line 64
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_a
    iget-object v8, v8, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v8}, Ln3/c0/q;->endTransaction()V

    .line 66
    invoke-virtual {v5}, Ln3/c0/y;->l()V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v9

    goto :goto_3

    :catchall_3
    move-exception v0

    :goto_3
    if-eqz v7, :cond_b

    .line 67
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 68
    :cond_b
    iget-object v2, v8, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 69
    invoke-virtual {v5}, Ln3/c0/y;->l()V

    .line 70
    throw v0

    .line 71
    :cond_c
    iget-object v9, v8, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v9, v5}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object v9

    .line 72
    :try_start_4
    invoke-virtual {v8, v9}, Ln3/c0/g0/a;->e(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 73
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual {v5}, Ln3/c0/y;->l()V

    :goto_4
    move-object v12, v10

    const-string v5, "data"

    .line 75
    invoke-static {v12, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_d

    goto :goto_5

    .line 76
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_5
    move-object v13, v7

    .line 77
    invoke-virtual/range {p0 .. p0}, Ln3/z/v;->c()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 78
    new-instance v4, Ln3/z/v$a;

    sget-object v15, Ls1/u/s;->a:Ls1/u/s;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 79
    invoke-virtual {v0, v4}, Lq3/a/o;->c(Ljava/lang/Object;)V

    goto :goto_6

    .line 80
    :cond_e
    new-instance v5, Ln3/z/v$a;

    .line 81
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x18

    move-object v11, v5

    .line 82
    invoke-direct/range {v11 .. v17}, Ln3/z/v$a;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 83
    invoke-virtual {v0, v5}, Lq3/a/o;->c(Ljava/lang/Object;)V

    .line 84
    :goto_6
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_f

    .line 85
    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    return-object v0

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 86
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 87
    invoke-virtual {v5}, Ln3/c0/y;->l()V

    .line 88
    throw v2
.end method
